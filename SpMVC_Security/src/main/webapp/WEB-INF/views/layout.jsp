<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>        
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>나의 홈페이지</title>
<style>
	*{
		box-sizing:border-box;
		padding:0;
		margin:0;
	}
	html,body{
		width:100%;
		height:100%;
	}
	body{
		display:flex;
		flex-direction:column;
	}
	header{
		padding: 1.5rem;
		background-color:red ;
		color:white;
		text-align: center;
	}
	nav#main-nav ul{
		list-style:none;
		display:flex;
		background-color:orange;
	}
	nav#main-nav li{
		padding:8px 16px;
		margin:0px 5px;
		color:white;
		border-bottom:3px solid transparent;
		cursor:pointer;
	}
	nav#main-nav li:hover{
		border-button:3px solid yellow; 
	}
	nav#main-nav li:nth-child(3){
		margin-left:auto;
	}
	footer{
		background-color:green;
		color:white;
		text-align:center;
		padding:1rem;
	}
</style>
</head>
<body>
	<tiles:insertAttribute name="header" />
	<tiles:insertAttribute name="menu" />
	<tiles:insertAttribute name="content" />
	<tiles:insertAttribute name="footer" />
</body>
</html>