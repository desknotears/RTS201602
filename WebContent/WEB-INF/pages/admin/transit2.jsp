<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RailwayTicketingSystem || Transit</title>

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
    <script>
	$(document).ready(function() {
		$("#f").on("submit", validateForm);
	});
	function validateForm() {
		if ($("#trainNo").val() == 0) {
			return false;
		}
		return true;
	}
</script>
</head>
<body>
    <div id="wrapper">
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
					<li><a href="/MyRTS/j_spring_security_logout"><i
							class="fa fa-sign-out fa-fw"></i>Logout</a></li>
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

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1>Administrator Page <small>Transit </small></h1>
                    <div class="alert alert-info alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        Welcome to RailwayTicketingSystem! 
                        <br />
                    </div>
                </div>
            </div>
		<section class="content">
			<div>
				<form id="f" action="submitTransit.html" method="POST">
					<table class="table table-bordered table-striped dataTable" role="grid";>
						<tr>
							<td>trainNo:</td>
							<td><input type="text" name="trainNo" id="trainNo"
								value=<%=request.getParameter("trainNo")%> readonly /></td>
						</tr>
						<tr>
							<td>seqNo:</td>
							<td><input type="text" name="seqNo" id="seqNo" /></td>
						</tr>
						<tr>
							<td>stationNo:</td>
							<td><input type="text" name="stationNo" id="stationNo" /></td>
						</tr>
						<tr>
							<td>arrivalTime:</td>
							
							<td>
							<span><input type="text" name="hour" id="hour" size="8"/>:
							<input type="text" name="minute" id="minute" size="8" /></span></td>
						</tr>
						<tr>
							<td>stopDuration:</td>
							<td><input type="text" name="stopDuration" id="stopDuration" />
							</td>
						</tr>
						<tr>
							<td>price:</td>
							<td><input type="text" name="price" id="price" /></td>
						<tr>
							<td></td>
							<td><span>
									<button id="add" type="submit" name="add" size="300">Add</button>
									<button id="end" type="submit" name="end">End</button>
							</span></td>

						</tr>
					</table>
				</form>
			</div>
		</section>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->
        
    </div>
    <!-- Core Scripts - Include with every page -->
	<script src="assets/plugins/jquery-1.10.2.js"></script>
	<script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
	<script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script src="assets/plugins/pace/pace.js"></script>
	<script src="assets/scripts/siminta.js"></script>
   
</body>
</html>