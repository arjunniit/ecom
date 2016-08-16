<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ViewAll</title>
</head>
<body>
<table border="1">
		<th>Product ID</th>
		<th>Product name</th>
		<th>Product quantity</th>
		<th>Product Description</th>
		<th>category</th>
		<c:forEach items="${productList}" var="product">
			<tr>
				<td>${product.productid}</td>
				<td>${product.productname}</td>
				<td>${product.productquantity}</td>
				<td>${product.productdescription}</td>
				<td>${product.category}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>