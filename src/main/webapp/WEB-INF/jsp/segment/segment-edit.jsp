<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>Segmento - Editar</title>
    
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
<jsp:include flush="false" page="../shared/header.jsp">
    <jsp:param name="selected" value="segment"/>
    <jsp:param name="path" value="${contextPath}"/>
</jsp:include>
<main class="container">

    <h2>Editar Segmento</h2>

    
	<form:form modelAttribute="segmentModel" action="${contextPath}/segment/${segmentModel.id}"  method="put">
	
    <form:input class="form-control" type="hidden" path="id" id="name"/>

        <div class="form-group">
            <label class="control-label" for="name">Nome:</label>
            <form:input type="text" class="form-control" path="name" id="name" maxlength="255" size="50"/>
            <form:errors path="name"/><br/>
        </div>
        <div class="form-group">
            <label for="bot">Bot:</label>
            <form:select path="bot.idBot" class="form-control">
                <form:options items="${bots}" itemLabel="name" itemValue="idBot"/>
            </form:select>
        </div>

	<button type="submit" class="btn btn-outline-success">Gravar</button>
    <a href="${contextPath}/segment" class="btn btn-outline-danger">Cancelar</a>
	
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
	

</form:form>
	</main>
</body>
</html>
