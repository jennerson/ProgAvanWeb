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
<title>Exibir</title>
</head>
<body>
  <div id="body">
    <c:if test="${not empty post}">
      <h2>${post.title}</h2>
      <p>
        ${post.body}
      </p>
      <div id="menu">
        <a href="<c:url value="/posts"/>">Ver todos</a> |
        <a href="<c:url value="/posts/form"/>">Novo</a> |
        <a href="<c:url value="/posts/${post.id}/form"/>">Atualizar</a>
      </div>
      <h2>Comentários</h2>
      <c:if test="${not empty comments}">
        <c:forEach items="${comments}" var="comment">
          <c:url var="url" value="/posts/${post.id}" />
          <ul>
            <li>${comment.comment}</li>
          </ul>
        </c:forEach>
      </c:if>
      <c:url var="url" value="/posts/${post.id}" />
      <form:form action="${url}" method="POST" modelAttribute="comment">
        <form:errors path="*"  cssClass="errors"/>
        <p>
          <label for="comment">New Comment:</label><br />
          <form:textarea path="comment" rows="10" cols="20" cssStyle="width:250px"  />
        </p>
        <p>
          <input id="criar" type="submit" value="Add Comment"/>
        </p>
      </form:form>
    </c:if>
    <c:if test="${empty post}">Não há Post neste ID.</c:if>
  </div>
</body>
</html>