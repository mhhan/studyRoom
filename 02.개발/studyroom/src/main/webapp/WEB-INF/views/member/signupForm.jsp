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
	let booId = false;
	let booPass = false;
$(function(){
    $(".idCheck").keyup(function (event) {
        const regexp =/[^a-z0-9]/gi;
        const v = $(this).val();
        if (regexp.test(v)) {
            alert("영어만 입력가능 합니다.");
            $(this).val(v.replace(regexp, ''));
        }
    });
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

function idChk(e){
	const inputId = document.querySelector(".idCheck").value;
	$.ajax({
		type:'POST',
		url:'${pageContext.request.contextPath}/member/idChk',
		header:{"Content-Type":"application/json"},
		dateType:'json',
		data:{id:inputId},
		success : function(result){
			if(result === true){
				alert('중복된 아이디 입니다.')
				inputId.innerHTML = "";
				disable();
			} else {
				alert('생성가능합니다.')
				e.disabled = false
				booId = true;
				disable();
			}
		}
	})
}

function disable(){
	 if( booId && booPass){
	    	$(".sub").prop("disabled", false);
    }
	    else{
	    	$(".sub").prop("disabled", true);
    }
}

</script>
<div style="padding-top:100px; margin-bottom: 100px;width: 30%; margin-left: 35%; text-align: center;">
	<div id="member-login" class="container tab-pane active">
		<form action="${pageContext.request.contextPath}/member/signupPro" method="post">
			<label>아이디</label><br>
			<div class="row">
				<div class="col-sm-9">
					<input type="text" name="id" class="form-control form-control-lg idCheck" placeholder="아이디" required="required">
				</div>
				<div class="col-2" style="margin-top: 10px; width: 10%; height: 100%">
					<input type="button" onclick="idChk(this)" value="중복확인">
				</div>
			</div>
			<label>비밀번호</label> <span class="passSpan"></span>
			<input type="password" name="pass" class="form-control form-control-lg mt-1 pass" placeholder="비밀번호" required="required">
			<label class="labelPass">비밀번호 확인</label> 
			<input type="password" name="passwordChk" class="form-control form-control-lg mt-1 passChk" onkeyup="passChk()" placeholder="비밀번호확인" required="required">
			<label>이름</label>
			<input type="text" name="name" class="form-control form-control-lg mt-3"  placeholder="이름" required="required">
			<label>핸드폰 번호</label> 
			<input type="tel" name="tel" class="form-control form-control-lg mt-1" placeholder="핸드폰 번호" required="required">
			<input type="submit" class="default_btn rounded mt-3 sub" disabled="disabled" value="회원가입">
		</form>
	</div>
</div>
</body>
</html>