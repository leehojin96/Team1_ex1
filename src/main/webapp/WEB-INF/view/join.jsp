<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>

<script>

function join(){
	// alert("가입이 완료되었습니다.");
	let joinfrm = document.joinfrm;
	let name = frm.name;
	let id = frm.age;
	let pw = frm.pw;
	let pwcheck = frm.pwcheck;
	let phone = frm.phone;
	let birth = frm.birth;
	let gender = frm.gender;
	
	if(name.value==""){
		alert("이름을 입력해주세요");
		name.focus();
	}else if(id.value==""){
		alert("아이디를 입력해주세요.");
		id.focus();
	}else if(pw.value==""){
		alert("비밀번호를 입력해주세요.");
		pw.focus();
	}else if(pwcheck.value != pw.value){
		alert("비밀번호가 일치하지 않습니다.");
		pwcheck.focus();
	}else if(phone.value==""){
		alert("전화번호를 입력해주세요.");
		phone.focus();
	}else if(birth.value==""){
		alert("주민등록번호를 입력해주세요.");
		birth.focus();
	}else if(gender.value==""){
		alert("성별을 선택해주세요.");
		gender.focus();
	}else{
		frm.submit();
		alert("가입이 완료되었습니다.");
	}
}

</script>

</head>
<body>

<header>
<h2>AcornTourJoin</h2>
</header>
<!-- 로그인 전 메뉴 -->
<nav>
<a href="/Team1_ex1/mainIndex.html">홈페이지</a>
<a href="tourJoin">회원가입</a>
<a href="tourLogin">로그인</a>
</nav>

<section>

<form name="joinfrm" action="tourJoin" method="post">
<table>
<tr><td>이름</td><td><input type="text" name = "name"></td></tr>
<tr><td>아이디</td><td><input type="text" name = "id" placeholder="ex) 1234@naver.com"></td></tr>
<tr><td>비밀번호</td><td><input type="password" name = "pw"></td></tr>
<tr><td>비밀번호확인</td><td><input type="text" name = "pwcheck"></td></tr>
<tr><td>휴대폰번호</td><td><input type="text" name = "phone"></td></tr>
	<tr>
		<td>주민번호</td>
		<td><input type="text" name = "birth" placeholder="ex) 123456-1234567"></td>
	</tr>
<tr><td>성별</td><td><input type="radio" name = "gender" value="남">남<input type="radio" name = "gender">여</td></tr>
<tr colspan="2">
<td>
<button onclick="join()">가입하기</button>
</td>
<td>
<button type="button" onclick="location.href='mainIndex.html'">가입취소</button>
</td>
</tr>

</table>
</form>

</section>

<footer>
AcornTour Footer
</footer>

</body>
</html>