<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Segmentos - Listagem</title>
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <c:set value="${pageContext.request.contextPath}" var="contextPath"/>
</head>
<body class="-bg-primary-color text-white">
<jsp:include page="../shared/header.jsp">
    <jsp:param name="selected" value="segment"/>
    <jsp:param name="path" value="${contextPath}"/>
</jsp:include>
<main class="container">
    <div class="d-flex justify-content-between align-items-center">
        <h2>Segmentos de Bot</h2>

        <c:if test="${not empty messages}">
            <h3>${messages}</h3>
        </c:if>

        <a href="${contextPath}/segment/form?page=segment-new" class="btn btn-outline-primary">Novo Segmento</a>
    </div>
    <table class="table mt-3 text-white">
        <thead class="thead-dark">
        <th data-field="name">Nome</th>
        <th data-field="bot-name">Bot</th>
        <th class="actions" width="220">Ações</th>
        </thead>
        <tbody>
        <c:forEach items="${segments}" var="segment">
            <tr>
                <td>${segment.name}</td>
                <td>${segment.bot.name}</td>

                <td><form:form action="${contextPath}/segment/${segment.id}"
                               method="delete">
                    <a class="btn btn-outline-primary" href="${contextPath}/segment/${segment.id}"><i class="far fa-comments"></i></a>
                    <a class="btn btn-outline-warning" href="${contextPath}/segment/form?page=segment-edit&id=${segment.id}"><i class="far fa-edit"></i></a>
                    <button type="submit" class="btn btn-outline-danger"><i class="far fa-trash-alt"></i></button>
                </form:form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <c:if test="${empty segments}">
        <div class="d-flex align-items-center flex-column">
            <div class="robots-none">
                <img src="https://image.flaticon.com/icons/svg/3075/3075824.svg" title="Balão de Fala">
            </div>
            <h3  class="h1 text-light">Nenhum segmento de conversa registrado</h3>
            <h4  class="h4 text-muted">Crie um novo com o assunto que quiser.</h4>
        </div>
        <hr>
    </c:if>
</main>
</body>
</html>