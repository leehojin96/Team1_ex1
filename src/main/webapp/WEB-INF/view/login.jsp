<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>

<%String path = request.getContextPath();%>
<script src="<%=path %>/js/login.js"></script>


</head>
<body>

<header>
<h2>AcornTourLogin</h2>
</header>
<!-- 로그인 전 메뉴 -->
<nav>
<a href="/Team1_ex1/mainIndex.html">홈페이지</a>
<a href="tourJoin">회원가입</a>
<a href="tourLogin">로그인</a>
</nav>

<section>

<form name="loginfrm" action="tourLogin" method="post">
<table>
<<<<<<< HEAD
<tr><td><input type="text" name="id" placeholder="아이디" ></td></tr>
<tr><td><input type="text" name="pw" placeholder="비밀번호" ></td></tr>
=======
<tr><td><input type="text" name="id" palceholder = "아이디"></td></tr>
<tr><td><input type="password" name="pw" palceholder = "비밀번호"></td></tr>
<tr colspan="2">
<td>
<button type="button" onclick="login()">로그인</button><button type="button" onclick="location.href='mainIndex.html'">메인화면</button>
</td>
</tr>
>>>>>>> branch 'master' of https://github.com/leehojin96/Team1_ex1.git
</table>


</form>

</section>

<footer>
AcornTour Footer
</footer>

</body>
</html>