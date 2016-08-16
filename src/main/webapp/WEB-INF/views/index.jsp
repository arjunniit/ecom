<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 25px;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="carousel slide" id="carousel-921114">
					<ol class="carousel-indicators">
						<li class="active" data-slide-to="0"
							data-target="#carousel-921114"></li>
						<li data-slide-to="1" data-target="#carousel-921114"></li>
						<li data-slide-to="2" data-target="#carousel-921114"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<img alt="bed"
								src="http://www.zimmber.com/blog/wp-content/uploads/2015/09/chose-right-sofa-color.jpg"
								width="100%" height="50%">
							<div class="carousel-caption">
								<h4>First Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
						<div class="item">
							<img alt="table"
								src="http://www.zimmber.com/blog/wp-content/uploads/2015/09/chose-right-sofa-color.jpg"
								width="100%" height="50%">
							<div class="carousel-caption">
								<h4>Second Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
						<div class="item">
							<img alt="sofa"
								src="http://www.zimmber.com/blog/wp-content/uploads/2015/09/chose-right-sofa-color.jpg"
								width="100%" height="50%">
							<div class="carousel-caption">
								<h4>Third Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
					</div>
					<a class="left carousel-control" href="#carousel-921114"
						data-slide="prev"><span
						class="glyphicon glyphicon-chevron-left"></span></a> <a
						class="right carousel-control" href="#carousel-921114"
						data-slide="next"><span
						class="glyphicon glyphicon-chevron-right"></span></a>
				</div>
			</div>
		</div>
	</div>



	<div class="container text-center">
		<h3>products</h3>
		<br>
		<div class="row">
			<div class="col-sm-4">
				<a href="beds"><img
					src="http://bachaterahoo.com/wp-content/uploads/2015/03/Furnize-Impex-Supersoft-Comfortable-Sofa-Bed.jpg"
					alt="bed"></a>
				<p>BED</p>
			</div>
			<div class="col-sm-4">
				<img
					src="http://n1.sdlcdn.com/imgs/a/q/n/large/Rugged-Wood-Teak-Wood-Dining-SDL525297016-1-4f13c.jpg"
					alt="table">
				<p>table</p>
			</div>
			<div class="col-sm-4">
				<img
					src="http://bachaterahoo.com/wp-content/uploads/2015/04/Divano-Modular-Black-Solid-Wood-Sofa.jpg"
					alt="table">
				<p>sofa</p>
			</div>
			<%@ include file="footer.jsp"%>
</body>
</html>

