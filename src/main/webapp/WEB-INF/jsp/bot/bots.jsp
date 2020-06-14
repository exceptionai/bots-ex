<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
	<head>
		<title>Bots - Listagem</title>
    
    	<c:set value="${pageContext.request.contextPath}" var="contextPath"/>
	</head>
	<body>
		<ul>
			<li>
	        	<a href="${contextPath}/bot">Bots</a>
	        </li>
	        <li>
	            <a href="${contextPath}/segment">Segmentos</a>
	        </li>
       	</ul>
		<h1>Bots</h1>
						
			<a href="${contextPath}/bot/form?page=bot-novo">Novo Bot</a>
		
		<c:if test="${not empty messages}">
			<h3>${messages}</h3>
		</c:if>
		
		<table>
			<thead>
				<tr>
					<th data-field="name">Nome</th>
					<th class="actions" width="220">A��es</th>
				</tr>
			</thead>
			<tbody>
			
				<c:forEach items="${bots}" var="bot">
					<tr>
						<td>${bot.name}</td>
						
						<td>
						
							<form:form action="${contextPath}/bot/${bot.idBot}" method="delete">
							
								<a class="btn btn-success btn-xs" href="${contextPath}/bot/${bot.idBot}">Detalhes</a>
								<a class="btn btn-warning btn-xs" href="${contextPath}/bot/form?page=bot-editar&id=${bot.idBot}">Editar</a>
								<input type="submit" value="Excluir">
							</form:form>
							
						</td>
					</tr>
				</c:forEach>
            </tbody>
		</table>
	</body>
</html>