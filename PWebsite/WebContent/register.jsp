<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="util.SHA256" %>
<%@ page import="util.Gmail" %>
<%@ page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<html lang="kr">
<head>
<title>로그인</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="google-signin-client_id"
	content="285856933296-6tq6dgudsn1uf23669jctfsk3h3g4f2b.apps.googleusercontent.com">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->

<script src="https://apis.google.com/js/api:client.js"></script>

</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<!-- <span class="login100-form-title p-b-26"> 메인로고 </span> -->
			<div class="wrap-login100">
				<form class="login100-form validate-form" method="post"
					action="./userRegisterAction.jsp" id="loginform">
					<span class="login100-form-title"> <i class="zmdi zmdi-font"></i>
					</span>

					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="userID"
							required="required"> <span class="focus-input100"
							data-placeholder="아이디"></span>
					</div>

					<div class="wrap-input100 validate-input">
						<span class="btn-show-pass"> </span> <input class="input100"
							type="password" name="userPassword" required="required"> <span
							class="focus-input100" data-placeholder="비밀번호"></span>
					</div>

					<div class="wrap-input100 validate-input">
						<span class="btn-show-pass"> </span> <input class="input100"
							type="password" name="userPassChk" required="required"> <span
							class="focus-input100" data-placeholder="비밀번호 재입력"></span>
					</div>
					
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="userEmail"
							required="required"> <span class="focus-input100"
							data-placeholder="이메일"></span>
					</div>

					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="userNickname"
							required="required"> <span class="focus-input100"
							data-placeholder="닉네임"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<!-- <button class="login100-form-btn"></button> -->
							<button type="submit" form="loginform" class="login100-form-btn"
								value="로그인">회원가입</button>
						</div>
					</div>
					<p></p>
					<br />
					<hr class="center-line">
					<div id="my-signin2" class="p-t-15"></div>
					<script>
						function onSuccess(googleUser) {
							console.log('Logged in as: '
									+ googleUser.getBasicProfile().getName());
						}
						function onFailure(error) {
							console.log(error);
						}
						function renderButton() {
							gapi.signin2.render('my-signin2', {
								'scope' : 'profile email',
								'width' : 280,
								'height' : 50,
								'longtitle' : true,
								'theme' : 'dark',
								'onsuccess' : onSuccess,
								'onfailure' : onFailure
							});
						}
					</script>

					<script
						src="https://apis.google.com/js/platform.js?onload=renderButton"
						async defer></script>

				</form>
			</div>
		</div>
	</div>

	<div id="dropDownSelect1"></div>

</body>



<!--===============================================================================================-->
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/bootstrap/js/popper.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/daterangepicker/moment.min.js"></script>
<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="js/main.js"></script>

</html>
