<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Atualizar</title>
</head>
<body>
  <div id="body">
    <c:url var="url" value="/posts/${post.id}" />
    <form:form action="${url}" method="PUT" modelAttribute="post">
      <p>
        <label for="title">Title:</label>
        <form:errors path="title" cssClass="error"/><br />
        <form:input cssStyle="width:250px" maxlength="30" path="title" size="30"/>
      </p>
      <p>
        <label for="body">Body:</label>
        <form:errors path="body" cssClass="error"/><br />
        <form:textarea path="body" rows="10" cols="20" cssStyle="width:250px"  />
      </p>
      <p>
        <input id="atualizar" type="submit" value="Update"/>
      </p>
      <form:hidden path="id"/>
    </form:form>
    <div id="menu">
      <a href="<c:url value="/posts"/>">Ver todos</a> |
      <a href="<c:url value="/posts/${post.id}/form"/>">Retornar</a>
    </div>
  </div>
</body>
</html>