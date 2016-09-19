<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="/WEB-INF/views/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
body {
	background-image:
		url("http://images.all-free-download.com/images/graphicthumb/black_background_207732.jpg");
	background-color: #cccccc;
}
</style>
}
</head>
<jsp:include page="header1.jsp" />
<!--Container 1-->

<div class="row">
	<c:forEach items="${productList}" var="product">
		<div class="col-xs-6 col-lg-6">
			<div class="thumbnail">

				<img
					src="<c:url value="resources/images/${product.imagename}.jpg"/>"
					class="img-responsive">

			
					<div class="col-xs-6 col-md-6">

						<right>
						<h3>${product.productname}</h3>
						<h4>${product.productquantity}</h4>
						<h5>${product.productdescription}</h5>
						<h5>${product.productprice}</h5>
						</right>

						<div class="col-xs-6 col-md-6">
							<a class="btn btn-success" href="addtocart/${product.productid}">Add
								to cart</a>
						</div>


					</div>

			
			</div>
		</div>

	</c:forEach>
</div>
<jsp:include page="footer.jsp" />
</html>