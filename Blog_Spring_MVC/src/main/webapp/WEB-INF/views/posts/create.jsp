<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Syntax Blog | Create new post</title>
<spring:url value="/static/css/styles.css" var="index"></spring:url>
<link rel="stylesheet" type="text/css" href="${index}" />
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="posts/postagens">Syntax | Blog</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fa fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link"
						href="/blog/posts/postagens/">Posts</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/blog/posts/postagens/form">Create New Post</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<header class="masthead">
		<div class="overlay"></div>
		<div class="container custom-image-post">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">
					<div class="post-heading">
						<h1>Create Post</h1>
					</div>
				</div>
			</div>
		</div>
	</header>

	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto">
				<form:form name="sentMessage" id="contactForm" 
					modelAttribute="postagem" action="/blog/posts/create">
					<div class="control-group">
						<div class="form-group floating-label-form-group controls">
							<label>Title</label>
							<form:input type="text" class="form-control" placeholder="Title"
								id="title" path="titulo"
								data-validation-required-message="Please enter your title." />
							<p class="help-block text-danger"></p>
						</div>
					</div>
					<div class="control-group">
						<div class="form-group floating-label-form-group controls">
							<label>Author</label>
							<form:input type="email" class="form-control"
								placeholder="Author e-mail" path="autor" id="author"
								data-validation-required-message="Please enter your email address." />
							<p class="help-block text-danger"></p>
						</div>
					</div>
					<div class="control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<label>Image Background Url</label>
							<form:input type="text" class="form-control"
								placeholder="Image Background URL" id="imagebackground"
								path="imagemUrl"
								data-validation-required-message="Please enter your phone number." />
							<p class="help-block text-danger"></p>
						</div>
					</div>
					<div class="control-group">
						<div class="form-group floating-label-form-group controls">
							<label>Message</label>
							<form:textarea rows="3" class="form-control"
								placeholder="Message" id="message" path="descricao"
								data-validation-required-message="Please enter a message."></form:textarea>
							<p class="help-block text-danger"></p>
						</div>
					</div>
					<br />
					<div id="success"></div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary"
							id="sendMessageButton">Create</button>
					</div>
				</form:form>
			</div>
		</div>
	</div>

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">
					<p class="copyright text-muted">Copyright &copy; Jennerson &
						Lucas & Ozair 2021</p>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>
