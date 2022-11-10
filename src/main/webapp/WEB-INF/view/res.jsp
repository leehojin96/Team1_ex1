<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%String path = request.getContextPath();%>
<script src="<%=path %>/js/res.js"></script>
<link rel="styLesheet" href="<%=path%>/css/res.css">

</head>
<body>

<form name="frm" action="reservation" method="post">

<table>
<caption><h1>예약자 정보</h1></caption>

	<tr>
		<th>이름</th><td><input type = "text" Placeholder="" name ="name"></td>
	</tr>
	<tr>
		<th>영문이름</th><td><input type = "text" Placeholder="" name ="eng_name"></td>
	</tr>
	<tr>
		<th>생년월일</th><td><input type = "text" Placeholder=" " name ="birth"></td>
	</tr>
	
	<tr>
		<th>휴대폰번호</th><td><input type = "text" Placeholder="" name ="phone"></td>
	</tr>
	<tr>
		<th>성별</th>
		<td>
		<input type="radio" name = "gender" value="남">남
		<input type="radio" name = "gender" value ="여">여
		</td>
	</tr>

</table>

<table>
	<caption><h3>최종결제금액</h3></caption>
	
	<tr>
		<th>인원</th>
		<td> ???명 </td>
	</tr>
	
	<tr>
		<td colspan ="2">
		유류할증료&제세공과금 포함
		</td>
	</tr>
	
	<tr>
		<th>총 상품금액</th>
		<td> ~~원</td>
	</tr>
	
	<tr>	
		<th>선택사항 추가금액</th>
		<td>0원</td>
	</tr>
	
	<tr>	
		<th>-선택관광-</th>
		<td>0원</td>
	</tr>
	
	<tr>	
		<th>-호텔변경-</th>
		<td>0원</td>
	</tr>

</table>

<table>
	<tr>
		<th>약관동의</th>
		
	</tr>
	
	<tr>
		<th>국내여행 특별약관 (필수)</th>
		<td>
		<input type="radio" name = "chk1">동의합니다.
		<input type="radio" name = "chk1">동의하지 않습니다.
		</td>
	</tr>
	
	<tr>
		<th>개인정보 수집 및 이용 동의 (필수)</th>
		<td>
		<input type="radio" name = "chk2">동의합니다.
		<input type="radio" name = "chk2">동의하지 않습니다.
		</td>
	</tr>
	
	<tr>
		<th>개인정보 제3자 제공 동의 (필수)</th>
		<td>
		<input type="radio" name = "chk3">동의합니다.
		<input type="radio" name = "chk3">동의하지 않습니다.
		</td>
	</tr>
	
	<tr>
		<th>민감정보 수집 및 이용 (필수)</th>
		<td>
		<input type="radio" name = "chk4">동의합니다.
		<input type="radio" name = "chk4">동의하지 않습니다.
		</td>
	</tr>
	
	<tr>
		<th>위치정보 이용약관 (필수)</th>
		<td>
		<input type="radio" name = "chk5">동의합니다.
		<input type="radio" name = "chk5">동의하지 않습니다.
		</td>
	</tr>

</table>

<div>
	<button type="button" onclick="check()">결제하기</button>
	<button type="button" onclick="location.href='mainIndex.html'">결제취소</button>
</div>

</form>

</body>
</html>