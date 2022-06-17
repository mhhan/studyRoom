<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/layout/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<style>
	input{
		margin: 10px;
	}
	label{
		margin: 10px;
		float: left;
	}
</style>
<body>
<script type="text/javascript">
$(function(){
    $(".idChk").keyup(function (event) {
        regexp =/[^a-z0-9]/gi;
        v = $(this).val();
        if (regexp.test(v)) {
            alert("영어만 입력가능 합니다.");
            $(this).val(v.replace(regexp, ''));
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
	}
	else{
		label.innerHTML = "비밀번호가 일치하지 않습니다"
		label.style.color = "red";
	}
}
</script>
<div style="padding-top:100px; margin-bottom: 100px;width: 30%; margin-left: 35%; text-align: center;">
	<div id="member-login" class="container tab-pane active">
		<form action="${pageContext.request.contextPath}/member/signupPro" method="post">
			<label>이름</label>
			<input type="text" name="name" class="form-control form-control-lg mt-3" placeholder="이름" required="required">
			<label>아이디</label>
			<input type="text" name="id" class="form-control form-control-lg mt-3 idChk" placeholder="아이디" required="required">
			<label>비밀번호</label> 
			<input type="password" name="pass" class="form-control form-control-lg mt-1 pass" placeholder="비밀번호" required="required">
			<label class="labelPass">비밀번호 확인</label> 
			<input type="password" name="passwordChk" class="form-control form-control-lg mt-1 passChk" onkeyup="passChk()" placeholder="비밀번호확인" required="required">
			<label>핸드폰 번호</label> 
			<input type="tel" name="tel" class="form-control form-control-lg mt-1" placeholder="핸드폰 번호" required="required">
			<input type="submit" class="default_btn rounded mt-3" value="회원가입">
		</form>
	</div>
</div>
</body>
</html>