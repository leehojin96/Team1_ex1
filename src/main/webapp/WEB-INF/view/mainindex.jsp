<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
 <%
    String id = (String)session.getAttribute("id");
    %>
<header>
<h2>AcornTour</h2>
</header>


<nav>
<%if(id == null){ %>
<a href="mainindex">홈페이지</a>
<a href="tourJoin">회원가입</a>
<a href="tourLogin">로그인</a>
<%} %>
<%if(id != null){ %>
<a href="mainindex">홈페이지</a>
<a href="tourMypage">마이페이지</a>
<a href="logout">로그아웃</a>
<%} %>
</nav>

<section>
</section>

<footer>
AcornTour Footer
</footer>

</body>
</html>