<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

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
      	<div class="main_box" onclick="location.href='<%=request.getContextPath()%>/index/loginForm'">
      		<h1>�α���</h1>
      	</div>
      	<div class="main_box" onclick="location.href='<%=request.getContextPath()%>/index/signupForm'">
      		<h1>ȸ�� ����</h1>
      	</div>
    </div>
    <div style="text-align: center;">
      	<div class="main_box" onclick="location.href='<%=request.getContextPath()%>/index/seatCheck'">
      		<h1>�¼� Ȯ��</h1>
      	</div>
      	<div class="main_box" onclick="location.href='<%=request.getContextPath()%>/index/beloginReservation'">
      		<h1>�� ȸ�� �¼� ����</h1>
      	</div>
    </div>
  </div>
</div>
</body>
</html>