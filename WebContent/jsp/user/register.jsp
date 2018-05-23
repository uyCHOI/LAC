<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<main class="page landing-page"></main>
	<div class="register-photo" style="margin-top: 80px;">
		<div class="form-container">
			<div class="image-holder"></div>
			<form method="post">
				<h2 class="text-center">
					<strong>새로운 계정을</strong>추가하세요.
				</h2>
				<div class="form-group">
					<input class="form-control" type="email" name="email"
						placeholder="Email">
				</div>
				<div class="form-group">
					<input class="form-control" type="text" name="nickname"
						placeholder="nickname">
				</div>
				<div class="form-group">
					<input class="form-control" type="password" name="password"
						placeholder="Password">
				</div>
				<div class="form-group">
					<input class="form-control" type="password" name="password-repeat"
						placeholder="Password (repeat)">
				</div>
				<div class="form-group">
					<div class="form-check">
						<label class="form-check-label"><input
							class="form-check-input" type="checkbox">이용약관에 동의합니다.</label>
					</div>
				</div>
				<div class="form-group">
					<button class="btn btn-primary btn-block" type="submit">회원 가입</button>
				</div>
				<a href="#" class="already">이미 계정이 있으신가요? 로그인하기</a>
			</form>
		</div>
	</div>
	<script src="/project_lac/assets/js/jquery.min.js"></script>
	<script src="/project_lac/assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="/project_lac/assets/js/theme.js"></script>

</body>
</html>