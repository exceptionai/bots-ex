<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>Segmento - Novo</title>
    <c:set value="${pageContext.request.contextPath}" var="contextPath" />
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
<h1>Novo Segmento</h1>

<c:if test="${not empty messages}">
    <h3>${messages}</h3>
</c:if>

<form:form modelAttribute="segmentModel" action="${contextPath}/segment"  method="post">

    <spring:hasBindErrors name="segmentModel">
        <div role="alert">
            <form:errors path="*" class="has-error" />
        </div>
    </spring:hasBindErrors>

    <div>
        <label class="control-label" for="name">Nome:</label>
        <form:input type="text" path="name" id="name" maxlength="50" size="50" />
        <form:errors path="name"/><br/>
    </div>
    <div>
        <label for="bot">Bot:</label>
        <form:select path="bot.idBot" class="form-control">
            <form:options items="${bots}" itemLabel="name" itemValue="idBot" />
        </form:select>
    </div>

    <a href="${contextPath}/segment">Cancelar</a>
    <button type="submit">Gravar</button>
</form:form>
</body>
</html>
