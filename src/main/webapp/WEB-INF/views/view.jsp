<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
<script src="app.js"></script>
<script type="text/javascript">
	angular.module('myApp', []).controller('mainController',function($scope, $http) {
				$scope.categ;
				console.log("im in getProduct");
				$http({method : 'GET',url : 'angl'}).success(function(data, status, headers, config)
				{		
					$scope.categ = data;
					console.log("length" + categ.length);
					

				});

			});
</script>>
  
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

	<jsp:include page="header1.jsp" />
	<hr>
	<hr>
	<div class="container" ng-app="myApp" ng-controller="mainController">
	<input type="text" class="form-control" placeholder="search buddy" ng-model="search" width="40">
	<table border="1" class="table"><th>Name</th>
	<th>Category</th>
	<th>Product Description</th>
	<th>Image</th>
		<tr ng-repeat="c in categ | filter:search">
			<td>{{c.productname}}</td>
			<td>{{c.category}}</td>
			<td>{{c.productdescription}}</td>
			<td> <img src="resources/images/{{c.imagename}}.jpg" width="50",height="50"></td>
			<td><div class="btn-group cart">
						<button type="button" class="btn btn-success">
							Add to cart 
						</button>
					</div></td>
					<td><div class="btn-group wishlist">
						<button type="button" class="btn btn-danger">
							Add to wishlist 
						</button>
						</div></td>
						<sec:authorize access="hasRole('ROLE_ADMIN')">
								<td><a href="<c:url value="/edit/${c.productid }"/>">EDIT</a></td>
								<td><a
									href="<c:url value="/delete/${c.productid }"/>">DELETE</a></td>
							</sec:authorize>
		
		</tr>
		</table>
	</div>
</body>
</html>