<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style>

table{
	border: 1px solid black;
	margin: auto;
	margin-top:30px;
	padding : 10px;	
}
button{
	display: block;
	margin-top : 20px;
	margin : auto;
	
}
	
*{
	text-align: left;
}
div{
	display: flex;
	margin : auto;
	width : 200px;
	margin-top : 20px;
}
</style>


<script>

function check(){
	//alert("call");
	let frm = document.frm;
	
	
	//let res_code = frm.res_code;
	//alert("2222");
	let pay_code = frm.pay_code;
	let name = frm.name;
	let eng_name = frm.eng_name;
	let birth = frm.birth;
	let phone = frm.phone;
	let gender = frm.gender;
	let chk1 = frm.chk1;
	let chk2 = frm.chk2;
	let chk3 = frm.chk3;
	let chk4 = frm.chk4;
	let chk5 = frm.chk5;
	
	/*
	if(res_code.value==""){
		alert("예약코드를 입력");
		res_code.focus();
	}else
	if( pay_code.value ==""){
		alert("페이코드를 입력하세요.");
		pay_code.focus();
	}else 
		*/
		if(name.value ==""){
		alert("이름을 입력하세요.");
		name.focus();
	}else if(eng_name.vlaue == ""){
		alert("영문이름을 입력하세요.");
		eng_name.focus();
	}else if(birth.value == ""){
		alert("생년월일을 입력하세요.");
		birth.focus();
	}else if(phone.value ==""){
		alert("휴대폰 번호를 입력하세요.");
		phone.focus();
	}else if (gender.value ==""){
		alert("성별을 입력하세요.");
		gender.focus();
	}else if(chk1.value ==""){
		alert("약관동의를 해주세요.");
		
	}else if(chk2.vlaue == ""){
		alert("약관동의를 해주세요.");
		
	}else if(chk3.value == ""){
		alert("약관동의를 해주세요.");
		
	}else if(chk4.value ==""){
		alert("약관동의를 해주세요.");
		
	}else if (chk5.value ==""){
		alert("약관동의를 해주세요.");
		
	}else{
		frm.submit();
		alert("예약이 완료되었습니다.");
		//window.location.href='mainIndex.html'
	}
	
	
}




</script>
</head>
<body>


<form name="frm" action="reservation" method="post">





<table>
<caption><h1>예약자 정보</h1></caption>

<!--  
	<tr>
		<th>예약코드</th><td><input type = "text" Placeholder="" name ="res_code"></td>
	</tr>

	
	<tr>
		<th>페이코드</th><td><input type = "text" Placeholder="" name ="pay_code"></td>
	</tr>
-->
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
	<!-- 
	<input type="radio" name = "gender" value="남">남<input type="radio" name = "gender">여
	<input type = "text" Placeholder="" name ="gender">
	
	 -->
	


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