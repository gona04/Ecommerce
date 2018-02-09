<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="home.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
.thumbnail {
	width: 200px;
	height: 200px;
	float: left;
	margin: 10px;
	background: #fff;
	padding: 20px;
	box-sizing: border-box;
}

.thumbnail img {
	width: 100%;
	heigth: auto;
}


</style>
<body>
	<div class="container"
		style="margin-top: 50px; width: 75%; margin: 0px auto;">
		<!-- <div class="row">
			<div class="col-12">
				<div class="well">

					<div class="page-header">
						<h1>
							Welcome to Shop ON!! <br> <small>Shop your heart
								out!</small>
						</h1>
					</div>
					end page-header

					Image gallery  starts here
					<div class="container"> 
						<div class="row">
							<div class="col-lg-12">
								<h3>
									Here are the products you can buy!!
								</h3>
							</div>
						</div> -->
		<!-- heading ends -->

		<!-- images begin -->
		<!-- <div class="row"> -->
			<c:forEach items="${product}" var="product">
				<!-- <div class="row" style="margin-top:50px;"> -->
				<div class="col-lg-3 col-md-4 col-sm-6">
				<spring:url value="/productDetails/${product.productId}" var="image"></spring:url>
				<a href="${image}" class="thumbnail image-responsive" data-caption${product.productPrice}"><p>${product.productName}</p>
					<spring:url
						value="/resources/productImages/Image ${product.productId}.jpg"
						var="img"></spring:url> <img src="${img}">
					</a>
					<div class="caption">
						<h5>${product.productName }</h5>
						<p>${product.productPrice}</p>

						<p>
							 <a	href="#" class="btn btn-default" role="button"><span class="glyphicon glyphicon-list-alt"></span> View Details </a>
						</p>
					</div>
		</div>
		
	<!-- </div> -->
		</c:forEach>
	</div>
	<!-- </div> -->
	<!-- end of well -->
	<!-- </div>
				end of col-12
			</div>
			end of row
		</div>
		end of container
		</div> -->
</body>
</html>