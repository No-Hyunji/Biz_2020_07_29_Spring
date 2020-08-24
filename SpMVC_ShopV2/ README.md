# Spring Project 빛나리 쇼핑몰 V1
* 상품관리, 거래처 관리, 회원가입, 로그인을 포함
* DB 오라클 사용
* 반응형 메뉴를 사용, 반응형 메인화면 구현

## Project 시작
* Java Version 1.8로 변경
* Spring Framework 5.2.8로 변경
* lombok, logback Dependency 설정
* views/home.jsp 삭제 후 재 생성
* Run Service 수행하여 home화면이 나타나도록

## DB 연동 설정(pom.xml)
* spring-jdbc
* mybatis
* mybatis-spring
* commons-dbcp2
* ojdbc

* spring.appServlet/mybatis-context.xml 파일 생성

## URL(Uniform Resource Location), URI(Uniform Resource Indentifier)
* URL : 파일 식별자
* URI : 통합 자원 식별자

### View단에서 사용하는 URL
* <a href = "http://localhost:8080/shop/">서버 Home</a>
tomcat WAS에게 shop이라는 Context를 가진 project가 작동되고 있느냐?라고 물어보는 request
* <a href = "http://localhost:8080/shop/product/list">상품리스트</a>
shop Context의 Dipatcher에게 product/list를 수행 할 수 있는 Controller method가 있느냐??라고 묻는 request
* 이 html 코드를 화면에서 만나면 Hyper Text(anchor 문자열)를 클릭했을 때 서버에 request한다
이 때 수행하는 request는 method=RequestMethod.GET 설정된 함수에서 처리한다.

* href : Hyper Text Reference, URL 주소라고 생각하면 됨.

### HTML 코드에서 GET method로 Request를 요청하는 곳들
* anchor tag : <a href="주소">텍스트</a>
* script에서 : document.location.href="주소"
* script에서 : document.location.replace=("주소")
* css 가져오기 : <link rel="stylesheet" href="주소"/>
* script 가져오기 : <script src="주소"></script>
* 이미지 가져오기 : <img src="주소"/>
* 배경이미지 : background-image : url("주소")