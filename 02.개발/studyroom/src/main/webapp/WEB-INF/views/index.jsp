<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/layout/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="padding-top:100px; margin-bottom: 100px;width: 30%; margin-left: 35%; text-align: center;">
		<div id="member-login" class="container tab-pane active">
			<form action="${pageContext.request.contextPath}/member/loginPro" method="post">

				<input type="text" name="email" class="form-control form-control-lg mt-3" placeholder="이메일" autocomplete="username"> 
				<input type="password" name="password" class="form-control form-control-lg mt-1" placeholder="비밀번호" autocomplete="current-password"> 
				<input type="submit" class="default_btn rounded mt-3" value="로그인">
				<hr>

				<div class="row mt-3">
					<div class="col-sm-3" style="text-align: center;">
						<a class="small_text non_deco" href="${pageContext.request.contextPath}/member/password">아이디찾기</a>
					</div>
					<div class="col-sm-3" style="text-align: center;">
						<a class="small_text non_deco" href="${pageContext.request.contextPath}/member/password">비밀번호찾기</a>
					</div>
					<div class="col-sm-6" >
						<a class="small_text non_deco" href="${pageContext.request.contextPath}/member/signupForm">회원가입</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>