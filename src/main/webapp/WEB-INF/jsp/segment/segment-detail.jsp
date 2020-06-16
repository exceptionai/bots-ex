<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>

<title>Detalhe</title>

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

<div>
    <label for="name">Nome:</label>
    <b>${segment.name}</b>
</div>
<div>
    <label for=bot>Robo:</label>
    <b>${segment.bot.name}</b>
</div>

<a href="${contextPath}/segment">Voltar</a>
</body>
</html>
