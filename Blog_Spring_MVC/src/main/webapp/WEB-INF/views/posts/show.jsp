<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix="spring"
uri="http://www.springframework.org/tags"%> <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt"%> <%@ taglib prefix="fn"
uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Syntax Blog | Post</title>
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
		<div class="container custom-image-post"
			style="background: url(<c:url value=" ${postagem.imagemUrl}" />
		) no-repeat; background-size: 100%;">

		<div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <div class="post-heading">
              <h1>${postagem.titulo}</h1>
              <span class="meta">Posted by ${postagem.autor} </span>
            </div>
          </div>
        </div>
      </div>
    </header>

	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto">${postagem.descricao}</div>
		</div>
	</div>

	<hr style="margin-top: 50px" />

	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto">
				<h4 class="post-subtitle">Comments</h4>


				<c:forEach items="${comentarios}" var="comentario">
					<article class="custom-form">
						<p>${comentario.comentario}</p>
						<form:form
							action="/blog/posts/comentarios/editar/${comentario.id}"
							method="POST">
							<button type="submit" class="btn btn-primary"
								id="sendMessageButton">Edit</button>
						</form:form>
						<form:form
							action="/blog/posts/comentarios/excluir/${comentario.id}"
							method="POST">
							<button type="submit" class="btn btn-danger"
								id="sendMessageButton">Delete</button>
						</form:form>
					</article>

					<hr />
				</c:forEach>

				<hr style="margin-top: 200px" />

				<form:form name="sentMessage" id="contactForm"
					action="/blog/posts/postagens/${postagem.id}" modelAttribute="comentario">
					<h4 class="post-subtitle">New Comment</h4>
					<div class="control-group">
						<div class="form-group floating-label-form-group controls">
							<label>Message</label>
							<form:textarea rows="3" path="comentario" class="form-control"
								placeholder="Message" id="message"
								data-validation-required-message="Please enter a message."></form:textarea>
							<p class="help-block text-danger"></p>
						</div>
					</div>
					<br />
					<div id="success"></div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary"
							id="sendMessageButton">Comment</button>
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
