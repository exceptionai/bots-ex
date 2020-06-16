<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>

<title>Detalhe</title>
	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
   	

<c:set value="${pageContext.request.contextPath}" var="contextPath"/>

</head>

<body class="-bg-primary-color text-white">
<header>

		<div class="row mx-0 -bg-card">
			<img src="<c:url value="/resources/img/logo.png" />"
				alt="logo exception">
			<div class="_container title-container">
				<h1 class="application-title">Exception</h1>
			</div>
		</div>
		<nav class="navbar navbar-expand-lg -bg-secondary sticky-top">


			<div class="collapse navbar-collapse container _container"
				id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item "><a class="nav-link"
						href="${contextPath}/bot">Bots</a></li>
					<li class="nav-item active"><a class="nav-link"
						href="${contextPath}/segment">Segmentos</a></li>
				</ul>
				<ul class="user-area navbar-nav d-flex align-items-center">
					<li class=""><i class="fas fa-heart disabled link"></i></li>
					<li><i class="fas fa-shopping-cart disabled link"></i></li>
					<li><i class="fas fa-comment-alt disabled link"></i></li>
					<li><span class="text-light pr-2">Usuario_Spring</span/> <img
						src="https://image.flaticon.com/icons/svg/2317/2317963.svg"
						class="rounded-circle" alt="Cinque Terre"></li>

				</ul>

			</div>
		</nav>
	</header>
	<main class="container">
		
<div>
    <label for="name">Nome:</label>
    <b>${segment.name}</b>
</div>
<div>
    <label for=bot>Robo:</label>
    <b>${segment.bot.name}</b>
</div>
		
	</main>
</body>
</html>
