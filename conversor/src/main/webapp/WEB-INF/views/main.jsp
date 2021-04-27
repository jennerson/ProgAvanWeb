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

	<form:form method="POST" modelAttribute="moeda" action="get">
		<h2 style="color: #5e9ca0;">Página de Conversão</h2>
		<br />
		<h3 style="color: #5e9ca0;">Insira o valor em Iene abaixo e clique no botão Converter.</h3>
		<p>Valor em Iene : <form:input path="valorI"/> </p>
		<p><span style="background-color: #5e9ca0; color: #fff; 
		display: inline-block; padding: 3px 10px; font-weight: bold; border-radius: 
		5px;"> <form:button>Converter</form:button></span></p>
		<p>${converteEuro}</p>
	</form:form>	
	<br />
	
	<form:form method="POST" modelAttribute="moeda" action="get">
		<h3 style="color: #5e9ca0;">Insira o valor em Euros abaixo e clique no botão Converter.</h3>
		<p>Valor em Euro : <form:input path="valorE"/> </p>
		<p><span style="background-color: #5e9ca0; color: #fff; 
		display: inline-block; padding: 3px 10px; font-weight: bold; border-radius: 
		5px;"> <form:button>Converter</form:button></span></p>
		<p>${converteIene}</p>
	</form:form>
</body>
</html>