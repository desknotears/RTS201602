<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Order 201602</title>
<!-- Core CSS - Include with every page -->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/2016/assets/plugins/bootstrap/bootstrap.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/2016/assets/font-awesome/css/font-awesome.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/2016/assets/plugins/pace/pace-theme-big-counter.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/2016/assets/css/style.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/2016/assets/css/main-style.css"/>">

<script src="<c:url value="/resource/js/jquery/jquery-2.1.4.js"/>"></script>
<script src="<c:url value="/resource/js/angular/angular.js"/>"></script>
<script src="<c:url value="/resource/js/util.js"/>"></script>
<script>
	var app = angular.module('myApp', []);
	app.controller('orderController', function($scope, $http) {
		$scope.orderData = [];
		$http({
			method : "GET",
			url : "/MyRTS/admin/orderData",
		}).success(
				function(data) {
					$scope.orderData = data;
					console.log($scope.orderData);
					for (var i = 0; i < $scope.orderData.length; i++) {
						$scope.orderData[i].date = formatDate(new Date(
								$scope.orderData[i].orderDate), true, false);
						console.log($scope.orderData);
						if ($scope.orderData[i].orderStatus == 2) {
							$scope.orderData[i].status = "Cancelled";
							console.log($scope.orderData[i].status);
						} else if ($scope.orderData[i].orderStatus == 0) {
							$scope.orderData[i].status = "Pending";
						} else {
							$scope.orderData[i].status = "Success";
						}

					}
				}).error(function(data) {
			alter("AJAX Error!");
		});
	});
</script>
</head>

<body ng-app="myApp">
	<!--  wrapper -->
	<div id="wrapper">
		<!-- navbar top -->
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation"
			id="navbar"> <!-- navbar-header -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".sidebar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="../main.html"> <img
				src="../resource/image/trainlogo.jpg" alt="" />
			</a>
		</div>
		<!-- end navbar-header --> <!-- navbar-top-links -->
		<ul class="nav navbar-top-links navbar-right">
			<!-- main dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <span
					class="top-label label label-danger">3</span><i
					class="fa fa-envelope fa-3x"></i>
			</a> <!-- dropdown-messages -->
				<ul class="dropdown-menu dropdown-messages">
					<li><a href="#">
							<div>
								<strong><span class=" label label-danger">Andrew
										Smith</span></strong> <span class="pull-right text-muted"> <em>Yesterday</em>
								</span>
							</div>
							<div>Lorem ipsum dolor sit amet, consectetur adipiscing
								elit. Pellentesque eleifend...</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<strong><span class=" label label-info">Jonney
										Depp</span></strong> <span class="pull-right text-muted"> <em>Yesterday</em>
								</span>
							</div>
							<div>Lorem ipsum dolor sit amet, consectetur adipiscing
								elit. Pellentesque eleifend...</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<strong><span class=" label label-success">Jonney
										Depp</span></strong> <span class="pull-right text-muted"> <em>Yesterday</em>
								</span>
							</div>
							<div>Lorem ipsum dolor sit amet, consectetur adipiscing
								elit. Pellentesque eleifend...</div>
					</a></li>
					<li class="divider"></li>
					<li><a class="text-center" href="#"> <strong>Read
								All Messages</strong> <i class="fa fa-angle-right"></i>
					</a></li>
				</ul> <!-- end dropdown-messages --></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <span
					class="top-label label label-warning">5</span> <i
					class="fa fa-bell fa-3x"></i>
			</a> <!-- dropdown alerts-->
				<ul class="dropdown-menu dropdown-alerts">
					<li><a href="#">
							<div>
								<i class="fa fa-comment fa-fw"></i>New Comment <span
									class="pull-right text-muted small">4 minutes ago</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<i class="fa fa-twitter fa-fw"></i>3 New Followers <span
									class="pull-right text-muted small">12 minutes ago</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<i class="fa fa-envelope fa-fw"></i>Message Sent <span
									class="pull-right text-muted small">4 minutes ago</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<i class="fa fa-tasks fa-fw"></i>New Task <span
									class="pull-right text-muted small">4 minutes ago</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<i class="fa fa-upload fa-fw"></i>Server Rebooted <span
									class="pull-right text-muted small">4 minutes ago</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a class="text-center" href="#"> <strong>See
								All Alerts</strong> <i class="fa fa-angle-right"></i>
					</a></li>
				</ul> <!-- end dropdown-alerts --></li>

			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-user fa-3x"></i>
			</a> <!-- dropdown user-->
				<ul class="dropdown-menu dropdown-user">
					<li><a href="#"><i class="fa fa-user fa-fw"></i>User
							Profile</a></li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i>Settings</a></li>
					<li class="divider"></li>
					<li><a href="/MyRTS/j_spring_security_logout"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
					</li>
				</ul> <!-- end dropdown-user --></li>
			<!-- end main dropdown -->
		</ul>
		<!-- end navbar-top-links --> </nav>
		<!-- end navbar top -->

		<!-- navbar side -->
		<nav class="navbar-default navbar-static-side" role="navigation">
		<!-- sidebar-collapse -->
		<div class="sidebar-collapse">
			<!-- side-menu -->
			<ul class="nav" id="side-menu">
				<li>
					<!-- user image section-->
					<div class="user-section">
						<div class="user-section-inner">
							<img src="../resource/2016/assets/img/user.jpg" alt="">
						</div>
						<div class="user-info">
							<div>Admin</div>
							<div class="user-text-online">
								<span class="user-circle-online btn btn-success btn-circle "></span>&nbsp;Online
							</div>
						</div>
					</div> <!--end user image section-->
				</li>
				<li class="sidebar-search">
					<!-- search section-->
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="Search...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div> <!--end search section-->
				</li>
				<li><a href="dashboard.html"><i class="fa fa-sitemap fa-fw"></i>Dashboard</a>
				</li>
				<li class=""><a href="order.html"><i
						class="fa fa-dashboard fa-fw"></i>Order</a></li>
				<li><a href="train.html"><i class="fa fa-bar-chart-o fa-fw"></i>Train</a>
				</li>
				<li><a href="station.html"><i class="fa fa-flask fa-fw"></i>Station</a>
				</li>
				<li><a href="schedule.html"><i class="fa fa-table fa-fw"></i>Schedule</a>
				</li>
				<li><a href="userTable.html"><i class="fa fa-edit fa-fw"></i>UserTable</a>
				</li>
			</ul>
			<!-- end side-menu -->
		</div>
		<!-- end sidebar-collapse --> </nav>
		<!-- end navbar side -->
		<!--  page-wrapper -->
		<div id="page-wrapper">

			<div class="row">
				<!-- Page Header -->
				<div class="col-lg-12">
					<h1 class="page-header">Administrator Order Page</h1>
				</div>
				<!--End Page Header -->
			</div>

			<div class="row" ng-controller="orderController">
				<div class="col-lg-12">
					<!-- Advanced Tables -->
					<div class="panel panel-default">
						<div class="panel-heading">Advanced Tables</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover"
									id="dataTables-example">
									<tr>
										<th>OrderNumber</th>
										<th>Email</th>
										<th>UserID</th>
										<th>OrderDate</th>
										<th>CreditCardNumber</th>
										<th>OrderStatus</th>
									</tr>
									<tr ng-repeat="x in orderData">
										<th>{{x.orderNo}}</th>
										<th>{{x.user.email}}</th>
										<th>{{x.user.userId}}</th>
										<th>{{x.date}}</th>
										<th>{{x.creditCardNo}}</th>
										<th>{{x.status}}</th>
									</tr>
								</table>
							</div>

						</div>
					</div>
					<!--End Advanced Tables -->
				</div>
			</div>


		</div>
		<!-- end page-wrapper -->

	</div>
	<!-- end wrapper -->

	<!-- Core Scripts - Include with every page -->
	<script src="<c:url value="/resource/js/jquery/jquery-2.1.4.js"/>"></script>
	<script src="<c:url value="/resource/2016/assets/plugins/jquery-1.10.2.js"/>"></script>
	<script src="<c:url value="/resource/2016/assets/plugins/bootstrap/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resource/2016/assets/plugins/metisMenu/jquery.metisMenu.js"/>"></script>
	<script src="<c:url value="/resource/2016/assets/plugins/pace/pace.js"/>"></script>
	<script src="<c:url value="/resource/2016/assets/scripts/siminta.js"/>"></script>

</body>

</html>