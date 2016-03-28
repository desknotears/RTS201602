<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>RailwayTicketingSystem | ResetPassword</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
   	<link rel="stylesheet"
	href="<c:url value="/resource/js/bootstrap/css/bootstrap.min.css"/>">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<c:url value="/resource/dist/css/AdminLTE.min.css"/>">
    <!-- iCheck -->
   <link rel="stylesheet" href="<c:url value="/resource/plugins/iCheck/square/blue.css"/>">
   
      <!-- jQuery 2.1.4 -->
    <script src="<c:url value="/resource/plugins/jQuery/jQuery-2.1.4.min.js"/>"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="<c:url value="/resource/js/bootstrap/js/bootstrap.min.js"/>"></script>
    <!-- iCheck -->
    <script src="<c:url value="/resource/plugins/iCheck/icheck.min.js"/>"></script>
	<!-- Angular js -->
	<script src="<c:url value="/resource/js/angular/angular.js"/>"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  <style>
  .body-class {
  	background-image:url(resource/image/trainlogin2_wz.jpg);
  	background-size: cover;
    background-repeat: no-repeat;
	}
  </style>
  <script>
	angular.module("resetModule", []).controller("resetController",
			function($scope, $http) {
			});
  </script>
</head>
  
  <body class="hold-transition login-page body-class"  >
  <header id="top" class="header">
    <div class="login-box">
		<div class="login-logo">
			<a href="/MyRTS/main.html" style="color: #3c8dbc"><b>RTS
					System</b></a>
		</div>
		<div class="login-box-body">
        <!-- <p class="login-box-msg">Sign in to start your session</p> -->
			
			<!-- /.login-logo -->
			<div id="reset-password">
				<p>Reset Password</p>
			</div>
			<form name="f" action="<c:url value='resetpassword/reset'/>" method="POST" id="login-form" ng-app="resetModule" 
        	ng-controller="resetController" ng-model="f">
	      <div id="forgot-password">
	      	<p>Please enter you e-mail address</p>
	      </div>
          <div class="form-group has-feedback"
          	ng-class="{'has-error':resetForm.email.$dirty && registerForm.email.$error.required,'has-warning':registerForm.email.$error.pattern}">
            <input type="email" name="email" class="form-control"
            	 ng-model="email"  id="j_username"  placeholder="E-mail Address" ng-pattern="/.*.@..*/" required>
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          </div>
          <div class="row">
            <div class="col-xs-4">
              <button type="submit" id="reset" class="btn btn-primary btn-block btn-flat" 
              	ng-disabled="resetForm.$invalid">Reset</button>
            </div><!-- /.col -->        
            <a href="/MyRTS/login2016.html">Cancel</a>
          </div>
        </form>
		
		
      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->
	</header>
 
<!--     <script>
      $(function () {
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        });	
      });
    </script> -->
    <style>
    	#reset-password{
    		font-size:25px;
    		color: #3c8dbc;
    	}	
    	
    </style>
  </body>
</html>
