<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div style="padding-top:100px; margin-bottom: 100px;width: 30%; margin-left: 35%; text-align: center;">
		<!-- Nav tabs -->
		<ul class="nav nav-tabs nav-justified mt-3" role="tablist" style="width:600px; margin:0 auto;">
			<li class="nav-item"><a class="nav-link active" data-bs-toggle="tab" style="color:black;" href="#member-login">�� �α���</a></li>
			<li class="nav-item"><a class="nav-link" data-bs-toggle="tab" style="color:black;" href="#business-login">����� �α���</a></li>
		</ul>

		<!-- Tab panes -->
		<div class="tab-content">
			
			<!-- �� �α��� �� -->
			<div id="member-login" class="container tab-pane active">
				<form action="${pageContext.request.contextPath}/member/loginPro" method="post">

					<input type="text" name="email" class="form-control form-control-lg mt-3" placeholder="�̸���" autocomplete="username"> 
					<input type="password" name="password" class="form-control form-control-lg mt-1" placeholder="��й�ȣ" autocomplete="current-password"> 
					<input type="submit" class="default_btn rounded mt-3" value="�α���">
					<hr>

					<div class="row mt-3">
						<div class="col-sm-6" style="text-align: center;">
							<a class="small_text non_deco" href="${pageContext.request.contextPath}/study/member/passwordResetMember">��й�ȣ �缳��</a>
						</div>
						<div class="col-sm-6" style="text-align: center;">
							<a class="small_text non_deco" href="${pageContext.request.contextPath}/study/member/signupForm">ȸ������</a>
						</div>
					</div>
				</form>
			</div>
			<!-- �� �α��� �� end -->
			
			<!-- ����� �α��� �� -->
			<div id="business-login" class="container tab-pane fade">
				<form action="${pageContext.request.contextPath}/member/buLoginPro" method="post">
					
					<input type="text" name="bu_email" class="form-control form-control-lg mt-3" placeholder="�̸���" autocomplete="username"> 
					<input type="password" name="bu_password" class="form-control form-control-lg mt-1" placeholder="��й�ȣ" autocomplete="current-password"> 
					<input type="submit" class="default_btn rounded mt-3" value="����� �α���">
					
					<hr>

					<div class="row mt-3">
						<div class="col-sm-6" style="text-align: center;">
							<a class="small_text non_deco" href="${pageContext.request.contextPath}/study/member/passwordResetBusiness">��й�ȣ �缳��</a>
						</div>
						<div class="col-sm-6" style="text-align: center;">
							<a class="small_text non_deco" href="${pageContext.request.contextPath}/study/member/buSignupForm">����� ȸ������</a>
						</div>
					</div>
				</form>
			</div>
			<!-- ����� �α��� �� end -->
		</div>
	</div>
</body>
</html>