<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="/WEB-INF/views/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>product</title>
</head>
<body>

	<h1>Products Data</h1>
	<form:form action="product.do" method="POST" enctype="multipart/form-data" commandName="product">
	<div class="container">
<table border="1" class="table">
		<tbody>
			<tr class="success">
				<td>Product ID</td>
				<td><form:input path="productid" /></td>
			</tr>
			<tr class="danger">
				<td>Product name</td>
				<td><form:input path="productname" /></td>
			</tr>
			<tr class="info">
				<td>Product quantity</td>
				<td><form:input path="productquantity" /></td>
			</tr>
			<tr class="warning">
				<td>Product Description</td>
				<td><form:input path="productdescription" /></td>
			</tr>
			<tr class="warning">
				<td>Product price</td>
				<td><form:input path="productprice" /></td>
			</tr>
			<tr class="success">
				<td>imagename</td>
				<td><form:input path="imagename" /></td>
			</tr>
				<tr class="danger">
				<td>image</td>
				<td><form:input path="image" type="file" /></td>
			</tr>
			<tr class="info">
				<td>category</td>
				<td><form:select path="category">
					<form:option selected="bed" value="bed">beds</form:option>
					<form:option value="table">table</form:option>
					<form:option value="sofa">sofa</form:option>
				</form:select></td>
				</tr>
			<tr>
				<td colspan="2"><input type="submit" name="action" value="Add" />
					<input type="submit" name="action" value="Edit" /> <input
					type="submit" name="action" value="Delete" /> <input type="submit"
					name="action" value="Search" /></td>
			</tr>
			</tbody>
		</table>
		</div>
		<a href=upload>Upload Photo here</a>
	</form:form>

	<%@ include file="footer.jsp"%>
	
</body>
<a href="viewall">viewall</a>
</html>