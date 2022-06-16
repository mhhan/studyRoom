<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/layout/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	.main_box{
		 width: 30%; 
		 height: 300px; 
		 border: 2px solid blue;
		 display: inline-block;
		 margin: 20px;
		 cursor: pointer;
	 }
</style>
</head>
<body>

<div class="container mt-5">
  <div class="row">
    <div style="text-align: center;">
      	<div class="main_box" onclick="location.href='<%=request.getContextPath()%>/member/loginForm'">
      		<h1>로그인</h1>
      	</div>
      	<div class="main_box" onclick="location.href='<%=request.getContextPath()%>/member/signupForm'">
      		<h1>회원 가입</h1>
      	</div>
    </div>
    <div style="text-align: center;">
      	<div class="main_box" onclick="location.href='<%=request.getContextPath()%>/seatCheck'">
      		<h1>좌석 확인</h1>
      	</div>
      	<div class="main_box" onclick="location.href='<%=request.getContextPath()%>/beloginReservation'">
      		<h1>비 회원 좌석 예약</h1>
      	</div>
    </div>
  </div>
</div>
</body>
</html>