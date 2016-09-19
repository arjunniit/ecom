<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cart</title>
<style> 
body {
    background-image: url("https://thumbs.dreamstime.com/t/dark-blue-background-texture-dots-53382973.jpg");
    background-color: #cccccc;
    </style>
</head>

<jsp:include page="header1.jsp" />
<body>

<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
            <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Total</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${cartList}" var="cart">
                    <tr>
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left"> <img class="media-object" src="<c:url value="resources/images/${cart.product.imagename}.jpg"/>" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                                <h4 class="media-heading" style=color:black>${cart.product.productname}</h4>
                                </div>
                        </div>
                        </td>
                        <td class="col-sm-1 col-md-1"> 
                        <input type="text" class="form-control" value="${cart.quantity}">
                        </td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>Rs${cart.product.productprice}</strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>Rs${cart.totalPrice}</strong></td>
                        <td class="col-sm-1 col-md-1">
                       <a href="<c:url value="/delete/cart/${cart.cartItemId}"/>"> <button type="button" class="btn btn-danger" >
                            <span class="glyphicon glyphicon-remove"></span> Remove</button></a></td>
                    </tr>
                    </c:forEach>
                    </tbody>
                    <tfoot>
						<tr class="visible-xs">
							<td class="text-center"><strong>Total 1.99</strong></td>
						</tr>
						<tr>
							<td><a href="viewall" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
							<td colspan="2" class="hidden-xs"></td>
							<td class="hidden-xs text-center"><strong>Total $1.99</strong></td>
							<td><a href="#" class="btn btn-success btn-block">Checkout <i class="fa fa-angle-right"></i></a></td>
						</tr>
					</tfoot>
            </table>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>