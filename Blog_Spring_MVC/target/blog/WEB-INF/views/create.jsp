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
<title>Cadastrar</title>
</head>
<body>
  <div id="body">
    <h1>Novo Post</h1>
    <c:url var="url" value="/posts" />
    <form:form action="${url}" method="POST" modelAttribute="post">
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
        <input id="criar" type="submit" value="Create"/>
      </p>
    </form:form>
    <div id="menu">
      <a href="<c:url value="/posts"/>">Ver todos</a>
    </div>
  </div>
</body>
</html>