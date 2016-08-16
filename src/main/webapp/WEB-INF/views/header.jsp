<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}
</style>
</head>
<body>
	<div class="header_center">
		<div class="container">
			<div class="logo">
				<a href="index.html"><img
					src="http://livingfurniture.us/wp-content/themes/LivingFurnitureTheme/images/logo.png"
					style="width: 100%; height: 100%;" alt="" /></a>
			</div>
			<br>
			<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Logo</a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">About</a></li>
						<li><a href="product">product</a></li>

						<li>
							<div style="top: 9px;" class="dropdown">
								<button class="btn btn-primary dropdown-toggle" type="button"
									data-toggle="dropdown"
									style="background-color: transparent; border: 0px; color: #9d9d9d;">
									Product <span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="bed">beds</a></li>
									<li><a href="#">table</a></li>
									<li><a href="#">sofa</a></li>
								</ul>
							</div>
						</li>
						<li>
							<div style="top: 9px; left: 7px;" class="dropdown">
								<button class="btn btn-primary dropdown-toggle" type="button"
									data-toggle="dropdown"
									style="background-color: transparent; border: 0px; color: #9d9d9d;">
									Dropdown Example <span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="#">HTML</a></li>
									<li><a href="#">CSS</a></li>
									<li><a href="#">JavaScript</a></li>
								</ul>
							</div>
						</li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
								Login</a></li>
						<li><a href="memberShip.obj"><span
								class="glyphicon glyphicon-log-in"></span> Register</a></li>
								<li><a href="#"><span
								class="glyphicon glyphicon-cart"></span> cart</a></li>
					</ul>
				</div>
			</div>
			</nav>