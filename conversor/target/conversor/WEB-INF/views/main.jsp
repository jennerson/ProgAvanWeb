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
		<h2 style="color: #5e9ca0;">Página de Conversão</h2>
		<br />
		<h3 style="color: #5e9ca0;">Insira o valor em dólares abaixo e clique no botão Converter.</h3>
		<p>Valor em Dollar $ : <form:input path="valor"/> </p>
		<p><span style="background-color: #5e9ca0; color: #fff; 
		display: inline-block; padding: 3px 10px; font-weight: bold; border-radius: 
		5px;"> <form:button>Converter</form:button></span></p>
		<p>${mensagem}</p>
	</form:form>	
	
</body>
</html>