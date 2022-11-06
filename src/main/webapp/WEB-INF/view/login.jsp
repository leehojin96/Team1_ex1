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
<!-- 로그인 전 메뉴 -->
<nav>
<a href="/Team1_ex1/mainIndex.html">홈페이지</a>
<a href="tourJoin">회원가입</a>
<a href="tourLogin">로그인</a>
</nav>

<section>

<form action="tourLogin" method="post">
<table>
<tr><td><input type="text" name="id" placeholder="아이디" ></td></tr>
<tr><td><input type="text" name="pw" placeholder="비밀번호" ></td></tr>
</table>
<button type="submit">로그인하기</button>

</form>

</section>

<footer>
AcornTour Footer
</footer>

</body>
</html>