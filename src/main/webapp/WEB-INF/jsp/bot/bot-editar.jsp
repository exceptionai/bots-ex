<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>

<head>

    <title>Bots - Editar</title>
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    	
    <c:set value="${pageContext.request.contextPath}" var="contextPath"/>

</head>

<body class="-bg-primary-color text-white">
    
	<header>

		<div class="row mx-0">
		
			<div class="_container title-container">
				<h1 class="application-title">Exception</h1>
			</div>
		</div>
		<nav class="navbar navbar-expand-lg sticky-top">


			<div class="collapse navbar-collapse container _container"
				id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="${contextPath}/bot">Bots</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${contextPath}/segment">Segmentos</a></li>
				</ul>
				<ul class="user-area navbar-nav d-flex align-items-center">
					<li><a href=""><i class="fas fa-project-diagram"></i></a></li>
					<li><a href=""><i class="fas fa-mobile-alt"></i></a></li>
					<li><span class="text-light pr-2">Usuario_Spring</span/> <img
						src="https://image.flaticon.com/icons/svg/2317/2317963.svg"
						class="rounded-circle" alt="Cinque Terre"></li>

				</ul>

			</div>
		</nav>
	</header>
    <main>
    	<h2>Categoria</h2>
	
	<form:form modelAttribute="botModel" action="${contextPath}/bot/${botModel.idBot}" method="put">
	
		<spring:hasBindErrors name="botModel">
			<div role="alert">
				<form:errors path="*" class="has-error" />
			</div>
		</spring:hasBindErrors>
	
		<div>
			<label class="control-label" for="name">Nome:</label>
			<form:input type="text" path="name" id="name" maxlength="50" size="50" />
			<font color="red"><form:errors path="name"/></font><br/>
                    </div>
                    <div>
			<label for="welcomeMsg">Mensagem de boas vindas:</label>
			<form:input type="text" path="welcomeMsg" id="welcomeMsg" maxlength="50" size="50" />
			<font color="red"><form:errors path="welcomeMsg"/></font><br/>
        </div>
        <div>
			<label for="farewellMsg">Mensagem de despedida:</label>
			<form:input type="text" path="farewellMsg" id="farewellMsg" maxlength="50" size="50" />
			<font color="red"><form:errors path="farewellMsg"/></font><br/>
        </div>
        <div>
			<label for="downtime">Downtime:</label>
			<form:input type="number" path="downtime" id="downtime" maxlength="50" size="50" />
			<font color="red"><form:errors path="downtime"/></font><br/>
        </div>
        <div>
			<label for="defaultAnswer">Resposta padrão:</label>
			<form:input type="text" path="defaultAnswer" id="defaultAnswer" maxlength="50" size="50" />
			<font color="red"><form:errors path="defaultAnswer"/></font><br/>
        </div>
        
		<hr>
		
		<a href="${contextPath}/bot">Cancelar</a>
		<button type="submit" class="btn">Gravar</button>
	</form:form>
    </main>
	

</body>
</html>