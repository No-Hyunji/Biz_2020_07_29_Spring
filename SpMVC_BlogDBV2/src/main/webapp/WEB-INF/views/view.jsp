<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c %>
	<c:set var = "rootPath" value="${pagaContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<style>
	menu a {
	display:inline-block;
	padding:8px 16px;
	margin:5px;
	border=radius:5px;
	}
	menu a:hover{
	}
	menu a:nth-child(1){
		background-color: green;
	}
	menu a:nth-child(2){
	background-color:green;
	}
	menu a:nth-child(3){
	background-color:aqua;
	}
	menu a:nth-child(4){
	background-color:orange; 
	}
</style>
<head>
	<%@ include file="/WEB-INF/views/include/include-head.jspf" %>
</head>
<body>
	<%@ include file="/WEB-INF/views/include/include-header.jspf" %>
	<section id="main">
		<article id="button">
			<button><a href="input">블로그작성</a></button>
		</article>
		<article id="blog_body">
			<section class="blog_title">
				<h4>${TITLE}</h4>
			</section>
			<section class="blog_text">
				<p>${BLOG.bl_contents}</p>
			</section>
			<menu>
			<a href="${rootPath}/">처음으로</a>
			</menu>
		</article>
		
	</section>
	
	<%@ include file="/WEB-INF/views/include/include-footer.jspf" %>
</body>
</html>