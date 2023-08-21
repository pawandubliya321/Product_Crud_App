<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body style="background-color: #f0f1f2;">


	<nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
		<a class="navbar-brand" href="#">PRODUCT-CRUD-APP</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		</div>
	</nav>



	<!-- update -->
	<div class="container mt-3">
		<div class="row ">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Change Product Details</h1>
				<form action="${pageContext.request.contextPath }/Handle-Product"
					method="Post">
					<input type="text" value="${product.id}" name="id" />
					<div class="form-group">
						<label for="name">Product Name</label> <input type="text"
							class="form-control" id="name" aria-describedby="emailHelp"
							name="name" placeholder="Enter Product Name"
							value="${product.name}">
					</div>
					<div class="form-group">
						<label for="description">Product description</label>
						<textarea class="form-control" name="description" id="description"
							rows="4" placeholder="enter the description">${product.description}</textarea>
					</div>
					<div class="form-group">
						<label for="price">Product price</label> <input type="text"
							class="form-control" id="price" name="price"
							placeholder="Enter Product price" value="${product.price}">
					</div>
					<div class="container text-center">
						<a href="${pageContext.request.contextPath}/home"
							class="btn btn-outline-text-denger">Back</a>

						<button type="submit" class="btn btn-warning">Update</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<!-- footer -->

	<div class="container-fluid p-1 mt-5 bg-secondary">
		<p class="text-center text-white">Design & Developed By Engineers</p>
	</div>
</body>
</html>