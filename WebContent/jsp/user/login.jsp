<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="/project_lac/assets/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i" />
<link rel="stylesheet" href="/project_lac/assets/fonts/ionicons.min.css">
<link rel="stylesheet"
	href="/project_lac/assets/fonts/simple-line-icons.min.css">
<link rel="stylesheet"
	href="/project_lac/assets/css/Login-Form-Clean.css" />
</head>
<body>
<div class="container"></div>
	<div class="login-clean">
		<form method="post">
			<h2 class="sr-only">Login Form</h2>
			<div class="illustration">
				<i class="icon ion-ios-navigate"></i>
			</div>
			<div class="form-group">
				<input type="email" name="email" placeholder="Email"
					class="form-control" />
			</div>
			<div class="form-group">
				<input type="password" name="password" placeholder="Password"
					class="form-control" />
			</div>
			<div class="form-group">
				<button class="btn btn-primary btn-block" type="submit">Log
					In</button>
			</div>
			<a href="#" class="forgot">Forgot your email or password?</a>
		</form>
	</div>
	<script src="/project_lac/assets/js/jquery.min.js"></script>
	<script src="/project_lac/assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="/project_lac/assets/js/theme.js"></script>
</body>
</html>