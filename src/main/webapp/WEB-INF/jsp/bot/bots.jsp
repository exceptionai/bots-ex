<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
	<head>
		<title>Bots - Listagem</title>
    
		<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    	<c:set value="${pageContext.request.contextPath}" var="contextPath"/>
	</head>
	<body class="-bg-primary-color text-white">
	<%@ include file="../shared/header.jsp" %>
	<main class="container">
		<div class="d-flex justify-content-between align-items-center">
			<h2>Bots</h2>
			<a href="${contextPath}/bot/form?page=bot-novo" class="btn btn-outline-primary">Novo Bot</a>
		</div>
						
		
		<c:if test="${not empty messages}">
			<h3>${messages}</h3>
		</c:if>
		
		<table  class="table mt-3 text-white">
			<thead class="thead-dark">
				<tr>
					<th data-field="name">Nome</th>
					<th data-field="welcome_msg">Mensagem de boas vindas</th>
					<th data-field="farewell_msg">Mensagem de despedida</th>
					<th data-field="downtime">Downtime</th>
					<th data-field="default_answer">Resposta padrão</th>
					<th class="actions" width="220">Ações</th>
				</tr>
			</thead>
			<tbody>
			
				<c:forEach items="${bots}" var="bot">
					<tr>
						<td>${bot.name}</td>
						<td>${bot.welcomeMsg}</td>
						<td>${bot.farewellMsg}</td>
						<td>${bot.downtime}</td>
						<td>${bot.defaultAnswer}</td>
						
						<td>
						
							<form:form action="${contextPath}/bot/${bot.idBot}" method="delete">
							
								<a class="btn btn-outline-primary" href="${contextPath}/bot/${bot.idBot}"><i class="fas fa-robot"></i></a>
								<a href="${contextPath}/bot/form?page=bot-editar&id=${bot.idBot}" class="btn btn-outline-warning"><i class="far fa-edit"></i></a>
								<button type="submit" class="btn btn-outline-danger"><i class="far fa-trash-alt"></i></button>
							</form:form>
							
						</td>
					</tr>
				</c:forEach>
            </tbody>
		</table>
	</main>
		
	</body>
</html>