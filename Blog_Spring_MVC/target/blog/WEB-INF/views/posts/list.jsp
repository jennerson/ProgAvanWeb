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
<title>Syntax Blog | Learn Javascript</title>
<spring:url value="/static/css/styles.css" var="index"></spring:url>
<link rel="stylesheet" type="text/css" href="${index}" />
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="/blog/posts/postagens">Syntax | Blog</a>
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
			<div class="container custom-image-post"
			style="background: url('https://images.unsplash.com/photo-1564865878688-9a244444042a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80') no-repeat; background-size: 100%;">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">
					<div class="page-heading">
						<h1>Syntax Blog</h1>
						<span class="subheading"> Your favorite blog about
							programming and tech. </span>
					</div>
				</div>
			</div>
		</div>
	</header>

	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto">
			     <c:forEach items="${postagens}" var="postagem">
					<article class="post-preview">
						<a href="/blog/posts/postagens/${postagem.id}">
							<h2 class="post-title">${postagem.titulo}</h2>
							<h3 class="post-subtitle">${postagem.descricao}</h3>
						</a>
						<p class="post-meta">Posted by ${postagem.autor}</p>
					</article>
				</c:forEach>

				<hr />

				<!-- Pager -->
				<div class="clearfix">
					<a class="btn btn-primary float-right" href="/blog/posts/postagens/">View
						All Posts &rarr;</a>
				</div>
			</div>
		</div>
	</div>

	<hr />

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