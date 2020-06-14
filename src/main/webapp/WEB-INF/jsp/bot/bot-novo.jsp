<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>

    <title>Bots - Cadastro</title>
    
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
					
	<h2>Bot</h2>
	
	<form:form modelAttribute="botModel" action="${contextPath}/bot" method="post">
	
		<spring:hasBindErrors name="botModel">
			<div role="alert">
				<form:errors path="*" />
			</div>
		</spring:hasBindErrors>
	
		<div>
			<label for="name">Nome:</label>
			<form:input type="text" path="name" id="name" maxlength="50" size="50" />
			<font color="red"><form:errors path="name"/></font><br/>
        </div>
        
        <div>
			<label for="welcomeMsg">Mensagem de boas vindas:</label>
			<form:input type="text" path="welcomeMsg" id="welcomeMsg" maxlength="50" size="50" />
			<font color="red"><form:errors path="welcomeMsg"/></font><br/>
        </div>
        <div>
			<label for="farewellMsg">Mensagem de despedida:</label>
			<form:input type="text" path="farewellMsg" id="farewellMsg" maxlength="50" size="50" />
			<font color="red"><form:errors path="farewellMsg"/></font><br/>
        </div>
        <div>
			<label for="downtime">Downtime:</label>
			<form:input type="number" path="downtime" id="downtime" maxlength="50" size="50" />
			<font color="red"><form:errors path="downtime"/></font><br/>
        </div>
        <div>
			<label for="defaultAnswer">Resposta padrão:</label>
			<form:input type="text" path="defaultAnswer" id="defaultAnswer" maxlength="50" size="50" />
			<font color="red"><form:errors path="defaultAnswer"/></font><br/>
        </div>

		<hr/>
		
		<a href="${contextPath}/bot">Cancelar</a>
		<button type="submit">Gravar</button>
	</form:form>

</body>
</html>