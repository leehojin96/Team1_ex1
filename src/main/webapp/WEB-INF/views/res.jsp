<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<tr colspan="2">
		<td>
		<button type="button" onclick="check()">예약하기</button>
		<button type="button" onclick="location.href='mainIndex.html'">예약취소</button>
		</td>
	</tr>


</table>
</form>

</body>
</html>