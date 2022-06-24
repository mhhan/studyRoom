<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/layout/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<style>
	label {
		float: left;
	}
</style>
<body>
<script type="text/javascript">
let booPass = false;
	$(function(){
		$(".pass").keyup(function (e){
			const passSpan = document.querySelector(".passSpan")
			const reg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{10,}$/;
			const v = $(this).val();
			if(!reg.test(v)){
				passSpan.innerHTML = "하나 이상의 대,소문자 숫자 및 특수 문자를 10자이상 입력하세요";
				passSpan.style.color = "red";
				passSpan.style.fontSize = "5";
			}
			else{
				passSpan.innerHTML = "";
			}
		});
	});
	
	function passChk(){
	const pass = document.querySelector(".pass").value
	const passChk = document.querySelector(".passChk").value
	const label = document.querySelector(".labelPass")
	if(pass === passChk){
		label.innerHTML = "비밀번호가 일치합니다."
		label.style.color = "blue";
		booPass = true;
		disable();
	}
	else{
		label.innerHTML = "비밀번호가 일치하지 않습니다"
		label.style.color = "red";
		booPass = false;
		disable();
	}
}
	
	function disable(){
		 if(booPass){
		    	$(".sub").prop("disabled", false);
	    }
		    else{
		    	$(".sub").prop("disabled", true);
	    }
	}
</script>
<div style="padding-top:100px; margin-bottom: 100px;width: 30%; margin-left: 35%; text-align: center;">
	<div id="member-login" class="container tab-pane active">
		<form action="${pageContext.request.contextPath}/member/passwordResetPro" method="post">
			<input type="hidden" class="asdf" name="id" value="${id}">
			<label>비밀번호</label> <span class="passSpan"></span>
			<input type="password" name="pass" class="form-control form-control-lg mt-1 pass" placeholder="비밀번호" required="required">
			<br>
			<label class="labelPass">비밀번호 확인</label> 
			<input type="password" name="passwordChk" class="form-control form-control-lg mt-1 passChk" onkeyup="passChk()" placeholder="비밀번호확인" required="required">
			<br>
			<input type="submit" disabled="disabled" class="sub" value="비밀번호변경">
		</form>
	</div>
</div>
</body>
</html>