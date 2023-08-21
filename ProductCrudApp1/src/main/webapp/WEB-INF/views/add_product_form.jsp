<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<!-- navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
		<a class="navbar-brand" href="#">PRODUCT-CRUD-APP</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp">Home <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="home">Products</a></li>

			</ul>

		</div>
	</nav>

	<div class="container mt-3">
		<div class="row ">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Fill The Product Details</h1>
				<form action="Handle-Product" method="Post">
					<div class="form-group">
						<label for="name">Product Name</label> <input type="text"
							class="form-control" id="name" aria-describedby="emailHelp"
							name="name" placeholder="Enter Product Name">
					</div>
					<div class="form-group">
						<label for="description">Product description</label>
						<textarea class="form-control" name="description" id="description"
							rows="4" placeholder="Enter Product description"></textarea>
					</div>
					<div class="form-group">
						<label for="price">Product price</label> <input type="text"
							class="form-control" id="price" name="price"
							placeholder="Enter Product price">
					</div>
					<div class="container text-center">
						<a href="${pageContext.request.contextPath}/"
							class="btn btn-outline-denger">Back</a>

						<button type="submit" class="btn btn-primary">Add</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>