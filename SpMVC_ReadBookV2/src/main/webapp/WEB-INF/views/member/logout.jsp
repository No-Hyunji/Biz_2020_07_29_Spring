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
</head>
<body>
<h3>로그아웃</h3>
<form method="POST" action="${rootPath}/logout">
	<<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	<button>로그아웃</button>
</form>
</body>
</html>