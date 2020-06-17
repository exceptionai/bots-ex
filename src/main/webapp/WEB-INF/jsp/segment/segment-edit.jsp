<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>Segmento - Editar</title>
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <c:set value="${pageContext.request.contextPath}" var="contextPath" />
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
	<nav class="navbar navbar-expand-lg sticky-top">
		<div class="collapse navbar-collapse container _container"
			 id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link"
										href="${contextPath}/bot">Bots</a></li>
				<li class="nav-item active"><a class="nav-link"
											   href="${contextPath}/segment">Segmentos</a></li>
			</ul>
			<ul class="user-area navbar-nav d-flex align-items-center">
				<li><a href=""><i class="fas fa-project-diagram"></i></a></li>
				<li><a href=""><i class="fas fa-mobile-alt"></i></a></li>
				<li><span class="text-light pr-2">Lucas_Alessandro</span> <img
						src="<c:url value="/resources/img/profilepicture.png" />"
						class="rounded-circle" alt="Cinque Terre"></li>
			</ul>
		</div>
	</nav>
</header>
	<main class="container">
		
<h2>Editar Segmento</h2>

<c:if test="${not empty messages}">
    <h3>${messages}</h3>
</c:if>

<form:form modelAttribute="segmentModel" action="${contextPath}/segment/${segmentModel.id}"  method="put">

    <spring:hasBindErrors name="segmentModel">
        <div role="alert">
            <form:errors path="*" class="has-error" />
        </div>
    </spring:hasBindErrors>

    <div class="form-group">
        <label class="control-label" for="name">Nome:</label>
        <form:input type="text" class="form-control" path="name" id="name" maxlength="50" size="50" />
        <form:errors path="name"/><br/>
    </div>
    <div class="form-group">
        <label for="bot">Bot:</label>
        <form:select path="bot.idBot" class="form-control">
            <form:options items="${bots}" itemLabel="name" itemValue="idBot" />
        </form:select>
    </div>

	<button type="submit" class="btn btn-outline-success">Gravar</button>
    <a href="${contextPath}/segment" class="btn btn-outline-danger">Cancelar</a>
</form:form>
	</main>
</body>
</html>