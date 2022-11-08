<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="T1_Dao.Pay" %>

<%
String path = request.getContextPath();
%>
<link rel="styLesheet" href="<%=path%>/css/mypage.css">

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
<h2>AcornTourMypage</h2>
</header>

<nav>
<%if(id == null){ %>
<a href="mainIndex">홈페이지</a>
<a href="tourJoin">회원가입</a>
<a href="tourLogin">로그인</a>
<%} %>
<%if(id != null){ %>
<a href="mainIndex">홈페이지</a>
<a href="tourMypage">마이페이지</a>
<a href="logout">로그아웃</a>
<%} %>
</nav>

<section>

<table>
<caption>결제내역</caption>
<tr>
<td>결제코드</td>
<td>아이디(이메일)</td>
<td>패키지번호</td>
<td>결제금액</td>
<td>인원</td>
<td>상세내역페이지</td>
</tr>
<%
ArrayList<Pay> list = (ArrayList<Pay>)request.getAttribute("list");
	for(Pay res : list){
%>
<tr>
<td> <%= res.getPay_code()%></td>
<td> <%= res.getId() %></td>
<td> <%= res.getPk_num() %></td>
<td> <%= res.getPrice() %></td>
<td> <%= res.getPersons() %></td>
<td><a href="tourRes">예약 상세</a></td>
</tr>
<% } %>

</table>

</section>

<footer>
AcornTour Footer
</footer>

</body>
</html>