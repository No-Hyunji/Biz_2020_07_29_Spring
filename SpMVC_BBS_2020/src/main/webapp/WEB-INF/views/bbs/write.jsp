<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<style>
	form#write-form{
		width:80%;
		margin: 10px auto;
	}
	form#write-form fieldset {
		border:1px solid blue;
		border-radius:10px;
	}
	form#write-form legend{
		color:blue;
		margin:5px;
		padding:5px;
	}
	form#write-form label{
		display:inline-block;
		width:20%;
		padding:4px;
		margin:4px;
		color:blue;
		text-align:right;
		font-weight:bold;
	}
	form#write-form input{
		display:inline-block;
		width:70%;
		padding:4px;
		margin:4px;
	}
	
	form#write-form textarea{
		width:70%;
	}
	div.button-box{
		text-align:right;
	}
	form#write-form .button-box button{
		color:white;
		cursor:pointer;
	}
	button:hover{
		box-shadow:2px 2px 2px rbga(0,0,0,0.5)
	}
	button#list{
		background-color:green;
		color:white;
	}
	button#save{
		background-color:blue;
		color:write;
	}
</style>
<script>
	$(function(){
		var toolbar = [
			['style',['bold','italic','underline'] ],
			['fontsize',['fontsize']],
			['font Style',['fontname']],
			['color',['color']],
			['para',['ul','ol','paragraph']],
			['height',['height']],
			['table',['table']],
			['insert',['link','hr','picture']],
			['view',['fullscreen','codeview']]
			
		]
		
		$("#b_content").summernote({
			lang:'ko-KR',
			placeholder:'본문을 입력하세요',
			width:'100%',
			toolbar:toolbar,
			height:'200px',
			disableDragAndDrop : true
		
	});
</script>
<form id="write-form">
	<fieldset>
		<legend>글쓰기</legend>
	<div>
		<label>작성일자</label>
		<input name="b_date">
	</div>
	<div>
		<label>작성시각</label>
		<input name="b_time">
	</div>
	<div>
		<label>글쓴이</label>
		<input name="b_writer">
	</div>
	<div>
		<label>제목</label>
		<input name="b_subject">
	</div>
	<div>
	<label></label>
		<textarea rows="5" cols="20"></textarea>
	</div>
	<div>
		<button type="button" id="list">리스트</button>
		<button type="button" id="save">저장</button>
		
	</div>
	</fieldset>
</form>