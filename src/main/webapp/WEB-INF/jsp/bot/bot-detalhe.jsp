<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

<head>

    <title>Bots - Detalhe</title>
    
    <c:set value="${pageContext.request.contextPath}" var="contextPath"/>

</head>

<body>
	<ul>
	    <li>
	        <a href="${contextPath}/segment">Segmentos</a>
	    </li>
	    <li>
	    	<a href="${contextPath}/bot">Bots</a>
	    </li>
	</ul>
		
	<h2>Bot</h2>
	
	<div>
		<label for="nome">Nome:</label>
		<b>${bot.name}</b>
    </div>
    <div>
		<label for="nome">Mensagem de boas vindas:</label>
		<b>${bot.welcomeMsg}</b>
    </div>
    <div>
		<label for="nome">Mensagem de despedida:</label>
		<b>${bot.farewellMsg}</b>
    </div>
    <div>
		<label for="nome">Downtime:</label>
		<b>${bot.downtime}</b>
    </div>
    <div>
		<label for="nome">Resposta padrão:</label>
		<b>${bot.defaultAnswer}</b>
    </div>
	<hr>
	
	<a href="${contextPath}/bot">Voltar</a>
</body>
</html>