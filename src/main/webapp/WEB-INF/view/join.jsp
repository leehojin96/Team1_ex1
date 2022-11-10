<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>


<%String path = request.getContextPath();%>
<script src="<%=path %>/js/join.js"></script>

</head>

<link rel="styLesheet" href="<%=path%>/css/header_footer.css">
<body>
 <%
    String id = (String)session.getAttribute("id");
    %>


<header>
<div class = "h_wrap">
<div class= "title">
AcornTourJoin
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

<form name="joinfrm" action="tourJoin" method="post">
<table>
<tr><td>이름</td><td><input type="text" name = "name"></td></tr>
<tr><td>아이디</td><td><input type="text" name = "id" placeholder="ex) 1234@naver.com"></td></tr>
<tr><td>비밀번호</td><td><input type="password" name = "pw"></td></tr>
<tr><td>비밀번호확인</td><td><input type="password" name = "pwcheck"></td></tr>
<tr><td>휴대폰번호</td><td><input type="text" name = "phone" placeholder="ex) 010-1234-5678"></td></tr>
	<tr>
		<td>주민번호</td>
		<td><input type="text" name = "birth" placeholder="ex) 990101-1234567"></td>
	</tr>
<tr><td>성별</td><td><input type="radio" name = "gender" value="남">남<input type="radio" name = "gender">여</td></tr>
<tr colspan="2">
<td>
<button type="button" onclick="join()">가입하기</button>
<button type="button" onclick="location.href='mainIndex'">가입취소</button>
</td>
</tr>

</table>
</form>

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