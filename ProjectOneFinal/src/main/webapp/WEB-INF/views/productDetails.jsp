<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<!-- Website Title & Description for Search Engine purposes -->
<title>SHOP ON!</title>

<!-- Mobile viewport optimized -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Bootstrap CSS -->

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> -->


<%-- <spring:url value="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css"
	var="bootstrapMain" /> --%>
<link
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="${pageContext.request.contextPath}/resources/includes/css/bootstrap-glyphicons.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link
	href="${pageContext.request.contextPath}/resources/includes/css/styles.css"
	rel="stylesheet">

<!-- Include Modernizer in the head, before any other Javascript -->
<script
	src="${pageContext.request.contextPath}/resources/includes/js/modernizr-2.6.2.min.js"></script>

<!-- <style>
.button1 {
	text-decoration: none;
	/*display: block;*/
	width: 115px;
	height: 50px;
	background: #5D7B93;
	padding: 5px;
	text-align: center;
	border-radius: 5px;
	color: white;
	/* font-weight: bold; */
}
</style> -->


</head>
<body style="background-color: #F39C12">

	<div class="container">
		<!-- ------------------- nav bar begins ------------/-->
		<div class="navbar navbar-fixed-top">
			<div class="container">

				<spring:url value="/" var="home"></spring:url>
				<a class="navbar-brand" href="${home}"><img
					src="${pageContext.request.contextPath}/resources/img/logo-3.png"
					style="height: 20px;" alt="Your logo"></a>

				<button class="navbar-toggle" data-toggle="collapse"
					data-target=".bla-bla">$</button>

				<div class="nav-collapse collapse bla-bla">
					<ul class="nav navbar-nav">
						<li class="active"><a href="${home} "> Home </a></li>
						<li><spring:url value="/aboutUs" var="about"></spring:url> <a
							href="${about}"> About us</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Products<b class="caret"></b></a>
							<ul class="dropdown-menu table table-hover"
								style="backgroud-color: #A9A9A9">
								<li><spring:url value="/productList" var="products"></spring:url>
									<a href="${products}"> Product List</a></li>

								<li><spring:url value="/viewProducts" var="view"></spring:url>
									<a href="${view }">view Product</a></li>

							</ul></li>
					</ul>

					<form class="navbar-form pull-left">
						<input type="text" name="Search" placeholder="Search"
							class="form-control" id="searchInput">
						<button type="submit" class="btn btn-default">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</form>

					<ul class="nav navbar-nav pull-right">
						<!-- <li>
							<a href="#myModal"  role = "button" class="btn btn-link" data-toggle="modal"><span class="glyphicon glyphicon-user "> SignUp</span></a>
						</li> -->

						<!--/ -------- Model begins -------/-->
						<li><a href="#myModal" role="button" class="btn btn-link"
							data-toggle="modal"><span class="glyphicon glyphicon-user">
									Login</span></a></li>
					</ul>
				</div>
				<!-- end collapse -->
			</div>
			<!-- end container-->
		</div>
		<!--end navbar-->

		<div class="modal fade" id="myModal">
			<div class="modal-dialog">
				<div class="modal-content"
					style="width: 500px; height: 300px; float: center">
					<div class="modal-header"
						style="background-color: #F39C12; height: 50px">
						<spring:url
							value="${pageContext.request.contextPath}/resources/img/logo-3.png"
							var="img" />
						<img src="${img}">
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<!--modal-heaer-->
					<div class="modal-body">
						<form>
							<table>
								<tr>
									<td><input
										style="margin-top: 20px; margin-left: 75px; margin-bottom: 10px; width: 300px; height: 40px;"
										type="text" name="name" placeholder="User name"></td>
								</tr>
								<tr>
									<td>
										<center>
											<input
												style="margin-left: 75px; margin-bottom: 10px; width: 300px; height: 40px;"
												type="Password" name="Password" placeholder="Password">
								</tr>
								<tr>
									<td>
										<center>
											<input type="submit" name="submit" class="btn"
												style="background-color: #F5B7B1; width: 200px; margin-left: 75px; margin-bottom: 5px; margin-top: 10px;"
												value="Login">
									</td>
								</tr>
								<tr>
									<td style="font-size: 12px;">
										<center>
											<p style="margin-left: 70px;">
												Don't have an Account? <a
													href="${pageContext.request.contextPath}/signUp">create
													one here!</a>
											</p>
									</td>
								</tr>
							</table>

						</form>
					</div>
					<!-- end modal-body-->
				</div>
				<!--end modal-content-->
			</div>
			<!-- end modal-dialog-->
		</div>
		<!-- end myModal-->

	</div>
	<!--end container-->

	<!-- Product details STRATS HERE! -->

	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-12">
				<div class="well">


					<div class="page-header">
						<h2 class="h2">
							Product Details<br> <small class="text-muted">Here
								is the detail information of the product!</small>
						</h2>
					</div>
					<!-- end header -->

					<div class="row">
						<div class="col-md-5">
							<img id="pImg"
								src="<c:url value="/resources/productImages/Image ${product.productId}.jpg" />"
								alt="image" style="width: 100%" /> <a
								class="carousel-control right"
								style="background: none; color: black; font-size: 40px;"
								href="${pageContext.request.contextPath}/productDetails/${product.productId + 1}"><span
								class="glyphicon glyphicon-chevron-right"></span></a> <a
								class="carousel-control left"
								style="background: none; color: black; font-size: 40px;"
								href="${pageContext.request.contextPath}/productDetails/${product.productId - 1}"><span
								class="glyphicon glyphicon-chevron-left"></span></a>
						</div>

						<div class="col-md-5">
							<h3>${product.productName}</h3>
							<p>${product.productDescription}</p>
							<p>
								<strong>Manufacturer</strong> : ${product.productManufacturer}
							</p>
							<p>
								<strong>Category</strong> : ${product.productCategory}
							</p>
							<p>
								<strong>Condition</strong> : ${product.productCondition}
							</p>
							<h4>${product.productPrice}USD</h4>

							<br>

							<%-- <c:set var="role" scope="page" value="${param.role}" />
							<c:set var="url" scope="page" value="/product/productList" />
							<c:if test="${role='admin'}">
								<c:set var="url" scope="page" value="/admin/productInventory" />
							</c:if> --%>

							<p>

								<a href="${pageContext.request.contextPath}/viewProducts"
									class="btn btn-default"
									style="text-align: center; display:block;">Back</a> 
									
									<a
									href="${pageContext.request.contextPath}/cartItems/${product.productId}" class="btn btn-warning btn-large"
									style="display: block;"><span
									class="glyphicon glyphicon-shopping-cart"></span> Order Now</a> 
									
									<a
									href="<spring:url value="/customer/cart" />"
									class="btn btn-default" style="text-align: center; display:block;"><span
									class="glyphicon glyphicon-hand-right"></span>View Cart</a>
							</p>
						</div>
					</div>



				</div>
				<!-- end of well -->
			</div>
			<!-- end of col-12 -->
		</div>
		<!-- end of row -->
	</div>
	<!-- end of container -->


	<!-- All Javascript at the bottom of the page for faster page loading -->

	<!-- First try for the online version of jQuery-->
	<script src="http://code.jquery.com/jquery.js"></script>

	<!-- If no online access, fallback to our hardcoded version of jQuery -->
	<script>
		window.jQuery
				|| document
						.write('<script src="${pageContext.request.contextPath}/resources/includes/js/jquery-1.8.2.min.js"><\/script>')
	</script>

	<!-- Bootstrap JS -->
	<script
		src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>

	<!-- Custom JS -->
	<script
		src="${pageContext.request.contextPath}/resources/includes/js/script.js"></script>

</body>
</html>