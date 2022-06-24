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
	label{
		float: left;
	}
</style>
<body>
<script type="text/javascript">
function phone(){
	const num = document.querySelector(".certified")
	const certifiedValue = document.querySelector(".certifiedValue")
	var str = '';
	for(let i = 0; i < 6; i++){
		var a = Math.floor(Math.random() * 10);
		str += a;
	}
	certifiedValue.value = str;
	num.value = str;
}
function certifiedChk(){
	const certifiedChk = document.querySelector(".certified").value;
	const certifiedValue = document.querySelector(".certifiedValue").value;
	if(certifiedChk === certifiedValue){
		alert("인증완료")
    	$(".sub").prop("disabled", false);
	}else{
		alert("번호가 일치하지 않습니다.")
	}
}
</script>
<div style="padding-top:100px; margin-bottom: 100px;width: 30%; margin-left: 35%; text-align: center;">
	<div id="member-login" class="container tab-pane active">
	<input type="hidden" class="certifiedValue">
		<form action="${pageContext.request.contextPath}/member/passwordReset" method="post">
			<label>아이디</label>
			<input type="text" name="id" class="form-control form-control-lg idCheck" placeholder="아이디" required="required"><br>
			<label>이름</label>
			<input type="text" name="name" class="form-control form-control-lg mt-3"  placeholder="이름" required="required"><br>
			<label>핸드폰 번호</label> <br>
			<div class="row">
				<div class="col-sm-9">
					<input type="tel" name="tel" class="form-control form-control-lg mt-1" placeholder="핸드폰 번호" required="required">
				</div>
				<div class="col-sm-3">
					<input type="button" onclick="phone()" value="인증번호받기">
				</div>
			</div><br>
			<div class="row">
				<div class="col-sm-9">
					<input type="text"class="form-control form-control-lg mt-1 certified" placeholder="인증번호" required="required">
				</div>
				<div class="col-sm-3">
					<input type="button"onclick="certifiedChk()" value="인증번호확인">
				</div>
			</div>
			<input type="submit" class="default_btn rounded mt-3 sub" disabled="disabled" value="다음">
		</form>
	</div>
</div>
</body>
</html>