<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/layout/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<div style="padding-top:100px; margin-bottom: 100px;width: 30%; margin-left: 35%; text-align: center;">
	<div id="member-login" class="container tab-pane active">
		<form action="${pageContext.request.contextPath}/member/loginPro" method="post">
			<label>아이디</label>
			<input type="text" name="id" class="form-control form-control-lg mt-3" placeholder="아이디" required="required">
			<label>비밀번호</label> 
			<input type="password" name="password" class="form-control form-control-lg mt-1" placeholder="비밀번호" required="required">
			<label>비밀번호 확인</label> 
			<input type="password" name="passwordChk" class="form-control form-control-lg mt-1" placeholder="비밀번호확인" required="required">
			<label>핸드폰 번호</label> 
			<input type="tel" name="password" class="form-control form-control-lg mt-1" placeholder="핸드폰 번호" required="required">
			<input type="submit" class="default_btn rounded mt-3" value="회원가입">
		</form>
	</div>
</div>
</body>
</html>