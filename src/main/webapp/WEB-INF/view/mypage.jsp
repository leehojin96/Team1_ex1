<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="T1_Dto.Pay" %>
<%@ page import="T1_Dto.Customer" %>
<%
String path = request.getContextPath();
%>
<link rel="styLesheet" href="<%=path%>/css/mypage.css">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<style>
ul{ list-style: none;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function res_info() {
	$.ajax(
			{
				type:"get",
				 dataType:"json",              
				 url:"/Team1_ex1/res_list123",	
				 success: function( data, textStatus){
					//alert(data);
					//console.log(data);
					let res_list  = data.result;
					$("#res_list").empty();
					
					
					for( let i=0 ; i< res_list.length; i ++){
				    	   let res = res_list[i];
				    	   
					let  res_code  = res.res_code ;
					let  pay_code  = res.pay_code ;
					let  name  = res.name ;
					let  eng_name  = res.eng_name ;
					let  birth  = res.birth ;
					let  phone  = res.phone ;
					let  gender  = res.gender ;
					
				    	   //$("#res_list").append(`<li>${res.res_code} ${res.review} ${res.pay_code} ${res.name} ${res.eng_name} ${res.birth} ${res.phone} ${res.gender}</li>`);
				      $("#res_list").append('<li>'+res_code+'	'+ pay_code+'	'+ name+'	'+ eng_name+'	'+ birth+'	'+ phone+'	'+ gender+'</li>');
				      
						
				    }
				},
				 error: function( data, textStatus){			 
				 },		 
				 complete:function(data, textStatus){
					// alert("done");
				 }		 
			})
	
}
</script>
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
<a href="package_list">패키지 여행 목록</a>
<a href="tourJoin">회원가입</a>
<a href="tourLogin">로그인</a>
<%} %>
<%if(id != null){ %>
<a href="mainIndex">홈페이지</a>
<a href="package_list">패키지 여행 목록</a>
<a href="tourMypage">마이페이지</a>
<a href="tourMypageUpdate">회원정보수정</a>
<a href="logout">로그아웃</a>
<%} %>
</nav>

<section>
<table>
<caption>회원 정보</caption>
<tr>
<td>이름</td>
<td>아이디(이메일)</td>
<td>휴대폰번호</td>
<td>성별</td>
<td>마일리지</td>
</tr>
<% Customer customer = (Customer) request.getAttribute("customer"); 
%>
<tr>
<td><%=customer.getName() %></td>
<td><%=customer.getId() %></td>
<td><%=customer.getPhone() %></td>
<td><%=customer.getGender() %></td>
<td><%=customer.getMileage() %></td>
</tr>

</table>
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
<td> <a href="tourPackageInfo"><%= res.getPk_num() %></a></td>
<td> <%= res.getPrice() %></td>
<td> <%= res.getPersons() %></td>
<td><input type="button" onclick="res_info()" value="예약 상세"></td>
</tr>
<% } %>

</table>
<ul id="res_list"></ul>
</section>

<footer>
AcornTour Footer
</footer>

</body>
</html>