<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>

<header>
<h2>AcornTourLogin</h2>
</header>

<%
 String  id  = (String)request.getAttribute("id");
 if( id == null) id="";
%>

<nav>
<a href="/Team1_ex1/mainIndex.html">홈페이지</a>
<a href="tourJoin">회원가입</a>
<a href="tourLogin">로그인</a>
<a href="tourMypage">마이페이지</a>
<a href="tourRes">예약확인</a>
</nav>

<section>

<form action="tourLogin" method="post">

<input type="text">
<button>로그인하기</button>

</form>

</section>

<footer>
AcornTour Footer
</footer>

</body>
</html>