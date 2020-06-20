<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>Segmento - Novo</title>
    
   	<script src="https://cdn.jsdelivr.net/npm/vanillatoasts@1.3.0/vanillatoasts.js"></script>
   	<script src="https://code.jquery.com/jquery-3.5.0.min.js" integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script>
   	<link href="https://cdn.jsdelivr.net/npm/vanillatoasts@1.3.0/vanillatoasts.css" rel="stylesheet">
	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
   	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

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

    <h1>Novo Segmento</h1>

    <c:if test="${not empty messages}">
        <h3>${messages}</h3>
    </c:if>

    <form:form modelAttribute="segmentModel" action="${contextPath}/segment" method="post">

        <spring:hasBindErrors name="segmentModel">
        	<script>

    	$(document).ready(()=>{
    			setTimeout(()=>{
    				let toast = VanillaToasts.create({
    					  title: 'Erro',
    					  text: '<form:errors path="*" class="has-error" />',
    					  type: '${MessageType.Error}', 
    					  icon: 'https://image.flaticon.com/icons/svg/901/901014.svg',
    					  timeout: 5000, 
    					  callback: function() { }
    					})
    			},800)
    		
    		});
        </script>
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
            <form:errors path="bot"/><br/>
        </div>

        <button class="btn btn-outline-success" type="submit">Gravar</button>
        <a class="btn btn-outline-danger" href="${contextPath}/segment">Cancelar</a>
    </form:form>
</main>
</body>
<c:if test="${not empty message}">
		
	<script>
	
	$(document).ready(()=>{
			setTimeout(()=>{
				let toast = VanillaToasts.create({
					  title: '${message.title}!',
					  text: '${message.message}',
					  type: '${message.type}', 
					  icon: '${message.icon}',
					  timeout: 5000, 
					  callback: function() { }
					})
			},800)
		
		});
	
		
	</script>
		</c:if>
</html>
