<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

table{
	border: 1px solid black;
	margin: auto;
	
	margin-top:30px;
	padding : 10px;	
}
button{
	margin : auto;
	
	}
	
*{
	text-align: left;
}
</style>

<script>

function pay(){
	let frm = document.frm;
	
	
	
	let chk1 = frm.chk1;
	let chk1 = frm.chk1;
	let chk1 = frm.chk1;
	let chk1 = frm.chk1;
	let chk1 = frm.chk1;
	let chk1 = frm.chk1;
	
	
		if(chk1.value ==""){
		alert("약관동의를 해주세요.");
		
	}else if(eng_name.vlaue == ""){
		alert("약관동의를 해주세요.");
		
	}else if(birth.value == ""){
		alert("약관동의를 해주세요.");
		
	}else if(phone.value ==""){
		alert("약관동의를 해주세요.");
		
	}else if (gender.value ==""){
		alert("약관동의를 해주세요.");
		
	}else{
		frm.submit();
		alert("결제완료!!!");
		//window.location.href='mainIndex.html'
	}
	
	
}

</script>
<body>
<form name = "frm" action ="paypage" method ="post" >

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
		<td>~~원</td>
	</tr>
	
	<tr>	
		<th>-선택관광-</th>
		<td>~~원</td>
	</tr>
	
	<tr>	
		<th>-호텔변경-</th>
		<td>~~원</td>
	</tr>

</table>

<table>
	<tr>
		<th>약관동의</th>
		<td>
		<input type="radio">모든 약관에 동의합니다.
		</td>
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
	
	<tr>
		<td colspan="2">
			<button type="button" onclick="pay()">결제하기</button>
			<button type="button" onclick="location.href='mainIndex.html'">결제취소</button>
			
		</td>
	</tr>

</table>


</form>


</body>
</html>