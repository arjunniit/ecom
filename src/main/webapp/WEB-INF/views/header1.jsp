<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->


<script>src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
   function formSubmit() {
    document.getElementById("logoutForm").submit();
   }
   
   </script>
<c:url value='logout' var="logoutUrl" />
<form action="${logoutUrl }" method="post" id="logoutForm"></form>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">furnisy</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="#">About</a></li>
				<sec:authorize access="hasRole('ROLE_ADMIN')">
					<li><a href="product">product</a></li>
				</sec:authorize>
				<li><a href="viewall">viewall</a></li>
				<li><a href="view">view</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">

				<c:if test="${pageContext.request.userPrincipal.name==null }">
					<li><a href="memberShip.obj"><span
							class="glyphicon glyphicon-user"></span> Sign-Up</a></li>
				</c:if>
				<c:if test="${pageContext.request.userPrincipal.name==null }">
					<li><a href="login"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</c:if>
				
					<li><a href="cart"><span
							class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
				
				<c:if test="${pageContext.request.userPrincipal.name!=null }">
					<li><a href="javascript:formSubmit()"><span
							class="glyphicon glyphicon-log-out"></span>Logout</a></li>
				</c:if>
			</ul>
		</div>
	</div>
	</nav>