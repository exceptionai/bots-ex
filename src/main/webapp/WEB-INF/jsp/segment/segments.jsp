<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Segmentos - Listagem</title>
<c:set value="${pageContext.request.contextPath}" var="contextPath" />
</head>
<body>
	<ul>
		<li><a href="${contextPath}/bot">Bots</a></li>
		<li><a href="${contextPath}/segment">Segmentos</a></li>
	</ul>
	<h1>Segmentos de Bot</h1>

	<c:if test="${not empty messages}">
		<h3>${messages}</h3>
	</c:if>

	<a href="${contextPath}/segment/form?page=new-segment">Novo
		Segmento</a>

	<table>
		<thead>
			<th data-field="name">Nome</th>
			<th data-field="bot-name">Bot</th>
		</thead>
		<tbody>
			<c:forEach items="${segments}" var="segment">
				<tr>
					<td>${segment.name}</td>
					<td>${segment.bot.name}</td>

					<td><form:form action="${contextPath}/segment/${segment.id}"
							method="delete">
							<a href="${contextPath}/segment/${segment.id}">Detalhes</a>
							<a href="${contextPath}/segment/form?page=edit-segment&id=${segment.id}">Editar</a>
							<input type="submit" value="Excluir">
						</form:form>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>