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
<title>Listar</title>
</head>
<body>
  <div id="body">
    <h2>Listando Posts</h2>
    <c:if test="${not empty posts}">
      <table width="600px">
        <tr>
          <th>Id</th>
          <th>Title</th>
          <th>Body</th>
          <th></th>
          <th></th>
          <th></th>
        </tr>

        <c:forEach items="${posts}" var="post">
          <c:url var="url" value="/posts/${post.id}" />
          <tr>
            <td>${post.id}</td>
            <td>${post.title}</td>
            <td>${post.body}</td>
            <td align="center">

              <form:form action="${url}" method="GET">
                <input alt="Exibir Post"
                title="Exibir Post"
                value="Exibir Post"/>
              </form:form>
            </td>
            <td align="center">
              <form:form action="${url}/form" method="GET">
                <input alt="Atualizar Post"
                title="Atualizar Post"
                value="Atualizar Post"/>
              </form:form>
            </td>
            <td align="center">
              <form:form action="${url}" method="DELETE">
                <input alt="Excluir Post"
                title="Excluir Post"
                value="Excluir Post"/>
              </form:form>
            </td>
          </tr>
        </c:forEach>
      </table>
    </c:if>
    <c:if test="${empty posts}">Não há posts no momento.</c:if>
    <div id="menu">
      <a href="<c:url value="/posts/form"/>">Novo</a>
    </div>
  </div>
</body>
</html>