<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>

<head>

    <title>Bots - Detalhe</title>
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <c:set value="${pageContext.request.contextPath}" var="contextPath"/>

</head>

<body class="-bg-primary-color text-white">
<jsp:include page="../shared/header.jsp">
    <jsp:param name="selected" value="bot"/>
    <jsp:param name="path" value="${contextPath}"/>
</jsp:include>

<main class="container">
    <h2>Detalhes de ${bot.name}</h2>
    <br/>
    <div>
        <label for="name">Nome:</label>
        <b>${bot.name}</b>
    </div>
    <div>
        <label for=welcomeMsg>Mensagem de boas vindas:</label>
        <b>${bot.welcomeMsg}</b>
    </div>
    <div>
        <label for="farewellMsg">Mensagem de despedida:</label>
        <b>${bot.farewellMsg}</b>
    </div>
    <div>
        <label for="downtime">Downtime:</label>
        <b>${bot.downtime}</b>
    </div>
    <div>
        <label for="defaultAnswer">Resposta padrão:</label>
        <b>${bot.defaultAnswer}</b>
    </div>
    <hr>
    <a class="btn btn-outline-light" href="${contextPath}/bot">Voltar</a>
</main>
</body>
</html>