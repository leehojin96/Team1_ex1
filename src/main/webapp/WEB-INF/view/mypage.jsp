<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="T1_Dao.Res" %>

<%String path = request.getContextPath();%>
<link rel="styLesheet" href="<%=path%>/css/mypage.css">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>

<header>
<h2>AcornTourMypage</h2>
</header>
<!-- 로그인 후 메뉴 -->
<nav>
<a href="/Team1_ex1/sucLoginMain.html">홈페이지</a>
<a href="tourMypage">마이페이지</a>
<a href="tourRes">예약확인</a>
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
</tr>
<% ArrayList<Res> list = (ArrayList<Res>)request.getAttribute("list");
	for(Res res : list){ %>
<tr>
<td> <%= res.getRes_code()%></td>
<td> <%= res.getId() %></td>
<td> <%= res.getPk_num() %></td>
<td> <%= res.getPrice() %></td>
<td> <%= res.getPersons() %> / <a href="tourRes">예약 상세</a>
</form>

</td>
</tr>
<% } %>

</table>

</section>

<footer>
AcornTour Footer
</footer>

</body>
</html>