<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>얼렁뚱땅 블로그</title>
<link rel="stylesheet" type="text/css" href="static/css/main.css"/>
</head>

<body>
	<header>
		<h3>얼렁뚱땅 블로그 V1</h3>
		<p>나의 얼렁뚱땅 블로그에 방문해 주신것을 환영합니다!!!</p>
	</header>
	<section id="main">
		<article id="button">
			<button><a href="input">블로그 작성</a></button>
		</article>

		
		</article>
		<article id="blog_body">
			<section class="blog_title">
				<h4>${TITLE}</h4>

			</section>
			<section id="blog_text">
				<h4>${CONTENT}</h4>
				<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure
					at eaque esse illum vero veritatis nesciunt debitis corrupti! Totam
					fuga beatae quae dolore molestias tempore quod delectus illo
					reiciendis eaque.</p>

			</section>
		</article>

	</section>
	<footer>
		<address>CopyRight &copy; kiekuy47@gmail.com</address>




	</footer>

</body>
</html>