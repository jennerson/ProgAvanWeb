<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blog da turma</title>
</head>
<body>
	
	<form:form method="POST" modelAttribute="postagem" action="cadastro">
		<p>Titulo: <input type="text" name="titulo"/></p>
		<p>Descricao: <input type="text" name="descricao"/></p>
		<p><form:button>Enviar</form:button></p>
		<p>${mensagem}</p>
	</form:form>
	
	<p>
		<table>
		  <thead>
		  <tr>
		   <th>NOME</th>
		   <th>LOCAL</th>
		   <th>AÇÃO</th>
		  </tr>
		  </thead>
		  <tbody>
		   <c:forEach var="postagem" items="${postagens}">
		   <tr>
		    <td>${postagem.titulo}</td>
		    <td>${postagem.descricao}</td>
		    <td>
		    <a href="editar/${postagem.id}">Editar</a>
		    <a href="excluir/${postagem.id}">Excluir</a>
		    </td>
		   </tr>
		   </c:forEach>
		  </tbody>
		</table>
	<p>
	
</body>
</html>