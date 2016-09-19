<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header1.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ViewAll</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
th,tr{
color:white;
}
body {
    background-image: url("https://wallpaperscraft.com/image/board_black_line_texture_background_wood_55220_1920x1080.jpg");
    background-color: #cccccc;
}
</style>

</head>
<body>

	<div class="container">
		<table border="1" class="table">
		
			
				<thead>
				<tr>
					<th>Product ID</th>
					<th>Product name</th>
					<th>Product quantity</th>
					<th>Product Description</th>
					<th>category</th>
					</tr>
				</thead>
				<c:forEach items="${productList}" var="product">
					<tbody>
						<tr>

							<td>${product.productid}</td>
							<td>${product.productname}</td>
							<td>${product.productquantity}</td>
							<td>${product.productdescription}</td>
							<td>${product.productprice}</td>
							<td>${product.category}</td>
							<td><div class="btn-group cart">
						<button type="button" class="btn btn-success">
							Add to cart 
						</button>
					</div></td>
							<sec:authorize access="hasRole('ROLE_ADMIN')">
								<td><a href="<c:url value="/edit/${product.productid }"/>">EDIT</a></td>
								<td><a
									href="<c:url value="/delete/${product.productid }"/>">DELETE</a></td>
							</sec:authorize>
						</tr>
					</tbody>
				</c:forEach>
			</table>
		</table>
	</div>
</body>
</html>