<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%@ include file="header1.jsp"%>
<html>
<head>
<title>Login Page</title>
<style>
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}

.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}

#login-box {
	width: 300px;
	padding: 20px;
	margin: 100px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
}
body {
    background-image: url("http://3.bp.blogspot.com/-mezFQuiBLdQ/T0-z3j5WfUI/AAAAAAAADrg/TllczQzSOB0/s1600/Hacker+goldfinger+3D+Animated+Gif+at+Hacker+Informer+Artful+3D+GIF+Animator+GIF+Animator+DDD+Ulead+GIF+Animator+websites+blogs+photo+graphics+clipart+the+attention+computer+program+free+download+.gif");
    background-color: #cccccc;
}

</style>
</head>
<body onload='document.loginForm.username.focus();'>

<div id="login-box">

		<h3>Login with Username and Password</h3>

		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>

		<form action="<c:url value='j_spring_security_check'/>"  method="POST" id="target">

			<table>
				<tr>
					<td>User:</td>
					<td><input type='text' name='mail_id'></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type='password' name='password' /></td>
				</tr>
				<tr>
					<td colspan='2'><input name="submit" type="submit"
						value="submit" /></td>
				</tr>
			</table>

			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />

		</form>
	</div>
<jsp:include page="footer.jsp" />
</body>
</html>