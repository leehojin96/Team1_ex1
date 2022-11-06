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
<h2>AcornTourJoin</h2>
</header>
<!-- 로그인 전 메뉴 -->
<nav>
<a href="/Team1_ex1/mainIndex.html">홈페이지</a>
<a href="tourJoin">회원가입</a>
<a href="tourLogin">로그인</a>
</nav>

<section>

<form action="tourJoin" method="post">
<table>
<tr><td>이름</td><td><input type="text" name = "name"></td></tr>
<tr><td>아이디</td><td><input type="text" name = "id"></td></tr>
<tr><td>비밀번호</td><td><input type="text" name = "pw"></td></tr>
<tr><td>비밀번호확인</td><td><input type="text" name = "pwcheck"></td></tr>
<tr><td>휴대폰번호</td><td><input type="text" name = "phone"></td></tr>
<tr><td>주민번호</td><td><input type="text" name = "birth"></td></tr>
<tr><td>성별</td><td><input type="radio" name = "gender" value="남">남 <input type="radio" name = "gender">여</td></tr>
<tr><td colspan="2"><button type="submit">가입하기</button></td></tr>

</table>
</form>

</section>

<footer>
AcornTour Footer
</footer>

</body>
</html>