<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User DashBoard</title>

    <link rel="stylesheet" type="text/css" href="<c:url value="/resource/newSource/css/bootstrap.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resource/newSource/css/rts2015.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resource/components/font-awesome-4.5.0/css/font-awesome.min.css" />">
	<link rel="stylesheet" href="<c:url value="/resource/js/angucomplete-alt/angucomplete-alt.css"/>" />
	<link rel="stylesheet" href="<c:url value="/resource/js/angular-datepicker/dist/angular-datepicker.min.css"/>" rel="stylesheet">
	
	<link href="<c:url value="/resource/newSource/css/Montserrat-400-700.css"/>" rel="stylesheet" type="text/css">
    <link href="<c:url value="/resource/newSource/css/latino.css"/>" rel="stylesheet" type="text/css">

	<script type="text/javascript" src="<c:url value="/resource/newSource/js/jquery.js"/>"></script>   
    <script type="text/javascript" src="<c:url value="/resource/newSource/js/bootstrap.min.js"/>"></script>
    
    <script type="text/javascript" src="<c:url value="/resource/newSource/js/jquery.easing.min.js"/>"></script>
    <script src="<c:url value="/resource/newSource/js/classie.js"/>"></script>
    <script src="<c:url value="/resource/newSource/js/cbpAnimatedHeader.min.js"/>"></script>
    <!-- Contact Form JavaScript -->
    <script src="<c:url value="/resource/newSource/js/jqBootstrapValidation.js"/>"></script>
    <script src="<c:url value="/resource/newSource/js/contact_me.js"/>"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<c:url value="/resource/newSource/js/freelancer.js"/>"></script>
    
	<script type="text/javascript" src="<c:url value="/resource/components/angular/angular.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resource/components/angular/angular-route.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resource/js/angucomplete-alt/angucomplete-alt.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resource/js/angular-datepicker/dist/angular-datepicker.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resource/components/js/userDashControllers.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resource/components/js/userDashApp.js"/>"></script>
</head>
<body ng-app="dashApp" ng-controller="dashIndexCtrl" id="page-top" class="index">
	<nav class="navbar navbar-default navbar-fixed-top">
	  <div class="container">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header page-scroll">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="<c:url value="/main"/>"><i class="fa fa-train"></i>RTS</a>
	    </div>
	    
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav navbar-right">
	        <li class="dropdown">
	          <button class="dropdown-toggle btn navbar-btn" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Hello, ${username}<span class="caret"></span></button>
	          <ul class="dropdown-menu">
	            
	            <li><a href="<c:url value="#/profile"/>">View Profile</a></l>
	            <li><a href="<c:url value="#/orders"/>">Past Orders</a></li>
	            <li><a href="<c:url value="#/creditcard"/>">Payment Method</a></li>
	            <li role="separator" class="divider"></li>
	            <li><a href="/MyRTS/j_spring_security_logout">Sign Out</a></li>
	          </ul>
	        </li>
	        <li><a href="#/search">Booking a trip</a><li>
	        <li><a href="<c:url value="#/cart-page"/>">Cart({{unpaidOrders.length}})</a></li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
	
	<header>
        <div class="container">
        </div>
    </header>
	    </nav>

	<section>
	<div ng-view></div>
	</section>
</body>