<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>bbs_2020</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<link rel="stylesheet" href="${rootPath}/resources/summernote-0.8.18-dist/summernote-bs4.min.css">
<script src="${rootPath}/resources/summernote-0.8.18-dist/summernote-bs4.js"></script>
<script src="${rootPath}/resources/summernote-0.8.18-dist/lang/summernote-ko-KR.min.js"></script>
<style>

	*{
		box-sizing:border-box;
		margin:0;
		padding:0;
	}
	html,body{
		wieth:100%;
		height:100%;
	}
	body{
		display:flex;
		flex-direction:column;
		
	}
	header{
		background-color: green;
		color: white;
		padding:1.2rem;
		text-align:center;
	}
	nav ul{
		list-sytle:none;
		display:flex;
		background-color: blue;
		color:white;
	}
	nav ul li{
		dispaly:inline-box;
		margin:3px 10px /* top+buttom, left+ right*/;
		padding:6px 12px;
		cursor:pointer;
	}
	nav ul li:hover{
		background-color: #ddd;
		color:white;
	}
	section#content{
		flex:1;
		overflow:auto;
	}
	footer{
		background-color: black;
		color:white;
		text-align:center;
		padding:0.7rem;
	}
</style>
</head>
<body>
	<%/*
		tiles:insertAttribute
		다른 jsp 파일을 부착하는 용도의 설정된 값
		여기에 name으로 설정된 부분에 tile.xml파일에서 지정한 jsp파일이 부착된다. 
	*/%>
	<tiles:insertAttribute name="header"/>
	<tiles:insertAttribute name="nav"/>
	<section id="content">
	<tiles:insertAttribute name="content"/>
	</section>
	<tiles:insertAttribute name="footer"/>
	</body>
</html>