<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="T1_Dto.Pay" %>
<%@ page import="T1_Dto.Customer" %>
<%@page import="T1_Dao.PackageDao"%>
<%@page import="T1_Dao.ResDao"%>
<%@ page import="T1_Dto.Res" %>
<%@ page import="T1_Dto.Package" %>

<%String path = request.getContextPath();%>
<link rel="styLesheet" href="<%=path%>/css/mypage.css">
<link rel="styLesheet" href="<%=path%>/css/header_footer.css">

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
function toggle(obj){  
	// 버튼에 해당하는  li 얻어오기
    let li  = obj.parentElement;
 
	//li영역을 기준으로   detail 영역,  패키지정보영역과, flag 영역 얻어오기
    let infoDiv  =  li.querySelector("#info");            
    let flagTag =   li.querySelector("#flag");
    let detail =    li.querySelector(".detail");
    
    //각 패키지의 상세영역 flag값 얻어오기
    let flag = flagTag.value;            
    if( flag ==0){            	         	
    	//package_list();   
        detail.style.display="block";
        infoDiv.innerHTML="패키지명: 행복한 패키지";
        flagTag.value=1;
    }else{      
        detail.style.display="none";
        flagTag.value=0;
    }
}
</script>
</head>
<body>

<%String id = (String)session.getAttribute("id");%>


<header>
<div class = "h_wrap">
<div class= "title">
AcornTourMypage
</div>	

<nav>
<div  class="nav">
<%if(id == null){ %>
|
<a href="package_list">홈으로</a>|
<a href="tourJoin">회원가입</a>|
<a href="tourLogin">로그인</a>|
<%} %>
<%if(id != null){ %>
|
<a href="package_list">홈으로</a> |
<a href="tourMypage">마이페이지</a> |
<a href="tourMypageUpdate">회원정보수정</a> |
<a href="logout">로그아웃</a> |
<%} %>
</div>
</nav>
</div>
</header>

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
<td>패키지명</td>
<td>결제금액</td>
<td>인원</td>
</tr>

</table>
<%
ArrayList<Pay> list = (ArrayList<Pay>)request.getAttribute("list");
PackageDao packagedao = new PackageDao();
	for(Pay pay : list){
Package pck = packagedao.package_where_pk_num(pay.getPk_num());
%>
<table>
<tr>
<td> <%= pay.getPay_code()%></td>
<td> <%= pay.getId() %></td>
<td> <a href="package_detail?pk_num=<%=pay.getPk_num() %>"><%= pck.getPk_name() %></a></td>
<td> <%= pay.getPrice() %></td>
<td> <%= pay.getPersons() %></td>
</tr>
</table>
<details>
<summary>예약자 정보 보기</summary>



<%ResDao resdao = new ResDao();
ArrayList<Res> reslist = resdao.res(pay.getPay_code());
%>
<table>
<tr>
<td>결제 코드</td>
<td>예약 코드</td>
<td>성명</td>
<td>영문 성명</td>
<td>생년월일</td>
<td>휴대폰 번호</td>
<td>성별</td>
</tr>

</table>
<%
for(Res res : reslist){
 %>
<table>
<tr>
<td><%=res.getPay_code() %></td>
<td><%=res.getRes_code() %></td>
<td><%=res.getName() %></td>
<td><%=res.getEng_name() %></td>
<td><%=res.getBirth() %></td>
<td><%=res.getPhone() %></td>
<td><%=res.getGender() %></td>
</tr>

</table>

<%}
%></details><%	} %>

</section>

	<footer>
<div class ="divFT">
<div class ="divF">
<ul>
<li>회사소개</li>
<li>이용약관</li>
<li>개인정보처리방침</li>
<li>여행자보험</li>
<li>여행약관</li>
<li>마켓팅제휴</li>
<li>공식인증예액센터 검색</li>
</ul>
</div>
<div class ="divF">
<ul>
<li>(주)하나투어</li>
<li>대표:솜미선</li>
<li>주소:(03161) 서울특별시 종로구 인사동</li>
</ul>
</div>

<div class ="divF">
<ul>
<li>사업자등록</li>
<li>사업자정보확인</li>
<li>통신판매신고번호 종로02</li>
<li>관광사업자 등록번호007</li>
</ul>
</div>

<div class ="divF">
<ul>
<li>고객센터</li>
<li>1577-1233</li>
<li>해외항공권문의</li>
<li>팩스02-734-0312<br></li>
</ul>
</div>
</div>
<p class="p_footer">
※ 부득이한 사정에 의해 여행일정이 변경되는 경우 사전 동의를 받습니다.<br>
※ 하나투어는 개별 항공권, 단품 및 일부 여행상품에 대하여 통신판매중개자로서 통신판매의 당사자가 아니며 해당상품의 거래정보 및 거래등에 대해 책임을 지지 않습니다.<br>
COPYRIGHTⓒ HANATOUR SERVICE INC. ALL RIGHTS RESERVED
</p>

</footer>

</body>
</html>