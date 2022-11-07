<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%String path = request.getContextPath();%>
<link rel="styLesheet" href="<%=path%>/css/res.css">

<%
	String code = request.getParameter("code");
	// 데이터베이스에 등록 
	String driver = "oracle.jdbc.driver.OracleDriver" ;
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="system";
	String password="1234";
	
	// 드라이브로드
	Class.forName(driver);
	
	// 데이터베이스 연결
	Connection con = DriverManager.getConnection(url, user, password);
	
	// 데이터베이스 연결 확인
	/*
	if( con != null){
    	out.println("dbok");
    }else{
    	out.println("db fail");
    }
	*/
	
	// sql 작성 및 실행
	String sql = "select * from res_info";
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery(sql);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>

<header>
<h2>AcornTourReservation</h2>
</header>
<!-- 로그인 후 메뉴 -->
<nav>
<a href="/Team1_ex1/sucLoginMain.html">홈페이지</a>
<a href="tourMypage">마이페이지</a>
<a href="tourRes">예약확인</a>
</nav>

<section>

<table>
<caption>예약내역</caption>
<tr>
<td>예약코드</td>
<td>아이디(이메일)</td>
<td>패키지번호</td>
<td>결제금액</td>
<td>인원</td>
</tr>

<% while( rs.next()){ %>
<tr>
<td> <%= rs.getString(1) %></td>
<td> <%= rs.getString(2) %></td>
<td> <%= rs.getString(3) %></td>
<td> <%= rs.getString(4) %></td>
<td> <%= rs.getString(5) %> / <a href="T1update.jsp?code=<%=rs.getString(5)%>">예약내역 변경 / </a>

<form name="frm" action="T1rdelete.jsp" method="post">
<a href="T1delete.jsp?code=<%=rs.getString(5)%>">예약 취소</a>
<input type="hidden" name="s_code" value="<%=code %>">
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