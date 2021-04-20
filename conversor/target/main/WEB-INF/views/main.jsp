<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Converter</title>
</head>
<body>

	<form:form method="POST" modelAttribute="moeda">
		<p>Valor em Dollar $ : <form:input path="valor"/> </p>
		<p> <form:button>Converter</form:button></p>
		<p>${mensagem}</p>
	</form:form>	
	
</body>
</html>