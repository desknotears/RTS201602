<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>RailwayTicketingSystem | Log in 2016</title>


<link rel="stylesheet"
	href="<c:url value="/resource/2016/css/reset.css"/>">

<link rel='stylesheet prefetch'
	href="<c:url value="/resource/2016/fonts-googleapis.css"/>">
<link rel='stylesheet prefetch'
	href="<c:url value="/resource/2016/font-awesome.css"/>">

<link rel="stylesheet"
	href="<c:url value="/resource/2016/css/style.css"/>">

<script src="<c:url value="/resource/md5.js"/>"></script>
<style>
.body-class {
	background-image: url(/MyRTS/resource/image201602/login2016.jpg);
	background-size: cover;
	background-repeat: no-repeat;
}
</style>

<script type="text/javascript">
	function encode() {

		document.getElementById("j_password").value = md5(document
				.getElementById("raw_password").value);
		<!--alert(document.getElementById("j_password").value);
		-->
	}
</script>
<!-- Bootstrap 3.3.5 -->
<link rel="stylesheet"
	href="<c:url value="/resource/js/bootstrap/css/bootstrap.min.css"/>">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="<c:url value="/resource/dist/css/AdminLTE.min.css"/>">
<!-- iCheck -->
<link rel="stylesheet"
	href="<c:url value="/resource/plugins/iCheck/square/blue.css"/>">

<!-- jQuery 2.1.4 -->
<script
	src="<c:url value="/resource/plugins/jQuery/jQuery-2.1.4.min.js"/>"></script>
<!-- Bootstrap 3.3.5 -->
<script
	src="<c:url value="/resource/js/bootstrap/js/bootstrap.min.js"/>"></script>
<!-- iCheck -->
<script src="<c:url value="/resource/plugins/iCheck/icheck.min.js"/>"></script>
<!-- Angular js -->
<script src="<c:url value="/resource/js/angular/angular.js"/>"></script>
<style>
.body-class {
	background-image: url(/MyRTS/resource/image201602/login2016.jpg);
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
<script>
	$(function() {
		$('input').iCheck({
			checkboxClass : 'icheckbox_square-blue',
			radioClass : 'iradio_square-blue',
			increaseArea : '20%' // optional
		});
	});
</script>

<script>
	angular.module("registerModule", []).controller("registerController",
			function($scope, $http) {
			});
</script>
</head>

<body class="hold-transition login-page body-class">


	<!-- Form Mixin-->
	<!-- Input Mixin-->
	<!-- Button Mixin-->
	<!-- Pen Title-->
	<div class="pen-title">
		<h1>Flat Login Form</h1>
		<i class='fa fa-code'></i><a href="/MyRTS/main1.html">RTS</a></span>
	</div>
	<!-- Form Module-->
	<div class="module form-module">
		<div class="toggle">
			<i class="fa fa-times fa-pencil"></i>
			<div class="tooltip">Register</div>
		</div>
		<div class="form">
			<h2>Login to your account</h2>
			<form action="<c:url value='j_spring_security_check'/>" method="post"
				id="login-form">
				<input type="username" name="j_username" id="j_username" /> <input
					type="password" name="raw_password" id="raw_password"
					placeholder="Password" /> 
				<input type="password" name="j_password"
					id="j_password" style="display: none">
				<button type="submit" onclick="encode()">Sign In</button>
			</form>
		</div>
		<div class="form">
			<h2>Create an account</h2>
			<form name="registerForm" id="register-form" ng-app="registerModule"
				ng-controller="registerController" ng-model="registerForm"
				action="<c:url value='/register/newuser'/>" method="post"
				id="register-form">
				<div class="form-group has-feedback"
					ng-class="{'has-error':registerForm.firstName.$dirty && registerForm.firstName.$error.required}">
					<input type="text" name="firstName" class="form-control"
						placeholder="First Name" ng-model="firstName" required> <span
						class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback"
					ng-class="{'has-error':registerForm.lastName.$dirty && registerForm.lastName.$error.required}">
					<input type="text" name="lastName" class="form-control"
						placeholder="Last Name" ng-model="lastName" required> <span
						class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback"
					ng-class="{'has-error':registerForm.email.$dirty && registerForm.email.$error.required,'has-warning':registerForm.email.$error.pattern}">
					<input type="email" name="email" class="form-control"
						placeholder="Email" ng-model="email" ng-pattern="/.*.@..*/"
						required> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback"
					ng-class="{	'has-error':registerForm.password.$dirty && registerForm.password.$error.required,'has-warning':registerForm.password.$error.minlength ||registerForm.password.$error.maxlength}">
					<input type="password" name="password" class="form-control"
						placeholder="Password" ng-minlength="5" ng-maxlength="20"
						ng-model="password" required> <span
						class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback"
					ng-class="{'has-error': (registerForm.password.$modelValue !== registerForm.repassword.$modelValue) && registerForm.repassword.$dirty}">
					<input type="password" name="repassword" class="form-control"
						placeholder="Confim Password" ng-model="repassword"> <span
						class="glyphicon glyphicon-log-in form-control-feedback"></span>
				</div>
				<div class="row">
					<div class="col-xs-12">
						<div class="checkbox icheck">
							<label> <input type="checkbox"> I agree this <a
								href="#">terms</a>
							</label>
						</div>
					</div>
				</div>
				<div class="row">	
					<!-- /.col -->
					<div class="col-xs-12">
						<button type="submit" class="btn btn-primary btn-block btn-flat"
							ng-disabled="registerForm.$invalid || (registerForm.password.$modelValue !== registerForm.repassword.$modelValue) ">Register</button>
					</div>
					<!-- /.col -->
				</div>
			</form>
		</div>
		<div class="cta">
			<a href="resetpassword.html" class="text-center">Forgot your
				password?</a>
		</div>
	</div>

	<script src="<c:url value="/resource/2016/jquery.min.js"/>"></script>
	<script src="<c:url value="/resource/2016/vLmRVp.js"/>"></script>
	<script src="<c:url value="/resource/2016/index.js"/>"></script>
	
	<!-- jQuery 2.1.4 -->
	<script
		src="<c:url value="/resource/plugins/jQuery/jQuery-2.1.4.min.js"/>"></script>
	<!-- Bootstrap 3.3.5 -->
	<script
		src="<c:url value="/resource/js/bootstrap/js/bootstrap.min.js"/>"></script>
	<!-- iCheck -->
	<script src="<c:url value="/resource/plugins/iCheck/icheck.min.js"/>"></script>
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			});
		});
	</script>
</body>
</html>