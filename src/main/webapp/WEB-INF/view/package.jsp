<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="T1_Dao.Package" %>

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
<h2>AcornTourPackageInfo</h2>
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
<caption>패키지 정보</caption>
<tr>
<td>패키지 번호</td>
<td>패키지 이름</td>
<td>일정</td>
<td>출국항공편</td>
<td>입국항공편</td>
<td>가격</td>
<td>여행지</td>
<td>호텔정보</td>
</tr>

<%
ArrayList<Package> list = (ArrayList<Package>)request.getAttribute("list");
	for(Package res : list){
%>
<tr>
<td> <%= res.getPk_num() %></td>
<td> <%= res.getPk_name()%></td>
<td> <%= res.getSchedule() %></td>
<td> <%= res.getDeparture() %></td>
<td> <%= res.getDestination() %></td>
<td> <%= res.getPrice() %></td>
<td> <%= res.getTrv_place() %></td>
<td> <%= res.getHt_key()%></td>
</tr>
<% } %>

</table>

</section>

<footer>
AcornTour Footer
</footer>

</body>
</html>