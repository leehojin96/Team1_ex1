<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="T1_Dao.Res" %>

<%
String path = request.getContextPath();
%>
<link rel="styLesheet" href="<%=path%>/css/res.css">

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
<h2>AcornTourReservation</h2>
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

<table>
<caption>예약내역</caption>
<tr>
<td>예약번호</td>
<td>결제코드</td>
<td>이름</td>
<td>영문 성명</td>
<td>생년월일</td>
<td>전화번호</td>
<td>성별</td>
</tr>
<%
ArrayList<Res> list = (ArrayList<Res>)request.getAttribute("list");
	for(Res res : list){
%>
<tr>
<td> <%= res.getRes_code()%></td>
<td> <%= res.getPay_code()%></td>
<td> <%= res.getName() %></td>
<td> <%= res.getEng_name() %></td>
<td> <%= res.getBirth() %></td>
<td> <%= res.getPhone() %></td>
<td> <%= res.getGender() %></td>
</tr>
<% } %>

</table>

</section>

<footer>
AcornTour Footer
</footer>

</body>
</html>