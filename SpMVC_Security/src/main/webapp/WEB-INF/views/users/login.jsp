<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>나의 홈페이지</title>
<style>
	form{
		text-align: center;
		background-color:skyblue;
		height:100%;
		
	}
	form input{
		border-radius: 15px;
		padding:10px;
		display:block;
	}
	input#username{
		
	}
	form button{
		cursor: pointer;
		border-radius: 15px;
		padding:10px;
		display:block;
	}
	form button:hover{
		cursor: pointer;
	}
	
	h4#login-fail{
		margin:5px auto;
		background-color:red;
		color:yellow;
		border-radius:15px;
		padding:8px;
	}

</style>
</head>
<body>
<section id="login-body">
<form action="${rootPath}/login" method="POST">
	
	
	<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
	<h4 id="login-fail">${SPRING_SECURITY_LAST_EXCEPTION.message}</h4>
	<c:remove var="SPRING_SECURITY_LAST_EXCEPTION" scope="session"/>
	</c:if>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	<input id="username" name="username" placeholder="USER ID">
	<input id="password" name="password" placeholder="PASSWORD">
	<button>로그인</button>
</form>
</section>
</body>
</html>