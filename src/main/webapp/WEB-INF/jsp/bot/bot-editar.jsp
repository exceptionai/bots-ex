<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>

<head>

    <title>Bots - Editar</title>
   	<script src="https://cdn.jsdelivr.net/npm/vanillatoasts@1.3.0/vanillatoasts.js"></script>
   	<script src="https://code.jquery.com/jquery-3.5.0.min.js" integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/vanillatoasts@1.3.0/vanillatoasts.css" rel="stylesheet">
	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <c:set value="${pageContext.request.contextPath}" var="contextPath"/>

</head>

<body class="-bg-primary-color text-white">
<jsp:include page="../shared/header.jsp">
    <jsp:param name="selected" value="bot"/>
    <jsp:param name="path" value="${contextPath}"/>
</jsp:include>
<main class="container">
    <h2>Editar Bot</h2>
    <form:form modelAttribute="botModel" action="${contextPath}/bot/${botModel.idBot}" method="put">

        
        <form:input class="form-control" type="hidden" path="idBot" id="name"/>

        <div class="form-group">
            <label for="name">Nome:</label>
            <form:input class="form-control" type="text" path="name" id="name" maxlength="255" size="50"/>
            <font color="red"><form:errors path="name"/></font><br/>
        </div>
        <div class="form-group">
            <label for="welcomeMsg">Mensagem de boas vindas:</label>
            <form:input class="form-control" type="text" path="welcomeMsg" id="welcomeMsg" maxlength="255" size="50"/>
            <font color="red"><form:errors path="welcomeMsg"/></font><br/>
        </div>
        <div class="form-group">
            <label for="farewellMsg">Mensagem de despedida:</label>
            <form:input class="form-control" type="text" path="farewellMsg" id="farewellMsg" maxlength="255" size="50"/>
            <font color="red"><form:errors path="farewellMsg"/></font><br/>
        </div>
        <div class="form-group">
            <label for="downtime">Downtime:</label>
            <form:input class="form-control" type="number" path="downtime" id="downtime" maxlength="11" size="50"/>
            <font color="red"><form:errors path="downtime"/></font><br/>
        </div>
        <div class="form-group">
            <label for="defaultAnswer">Resposta padrão:</label>
            <form:input class="form-control" type="text" path="defaultAnswer" id="defaultAnswer" maxlength="255" size="50"/>
            <font color="red"><form:errors path="defaultAnswer"/></font><br/>
        </div>
        <button class="btn btn-outline-primary" type="submit" class="btn">Gravar</button>
        <a class="btn btn-outline-danger" href="${contextPath}/bot">Cancelar</a>
    	
<spring:hasBindErrors name="botModel">
	<script>
	$(document).ready(()=>{
		setTimeout(()=>{
			let toast = VanillaToasts.create({
				  title: 'Erro!',
				  text: '<form:errors path="*" class="has-error"/>',
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
    <hr>
</main>

</body>

</html>
