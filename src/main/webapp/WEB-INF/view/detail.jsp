<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@page import="T1_Dto.package_info" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table,td{
border : solid;black;1px;
border-collapse: collapse;
}
</style>
<script>

</script>
</head>
<body>

<div>
<h3>패키지 투어별 상세일정</h3>

<%
  package_info tour = (package_info)request.getAttribute("info");
%>

<table> 

<tr>
<td>패키지번호 : <%=tour.getPk_num()%></td>
<td>패키지이름 : <%=tour.getPk_name()%></td>
<td>일정 : <%=tour.getSchedule() %></td>
<td>출국항공편 : <%=tour.getDeparture()%></td>
<td>입국항공편 : <%=tour.getDestination()%></td>
<td>가격 : <%=tour.getPrice()%> ~부터</td>
<td>여행지 : <%=tour.getTrv_place()%> </td>
<td>호텔번호 : <%=tour.getHt_key()%></td>
<td><button onclick="location.href='reservation'")>예약하기</button> </td>
</tr>

 
</table>

</div>
</body>
</html>
