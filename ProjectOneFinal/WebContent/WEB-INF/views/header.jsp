<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>
<head>

<!-- Website Title & Description for Search Engine purposes -->
<title>SHOP ON!</title>

<!-- Mobile viewport optimized -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Bootstrap CSS -->
<spring:url value="resources/bootstrap/css/bootstrap.min.css"
	var="bootstrapMain" />
<link href="${bootstrapMain}" rel="stylesheet">

<spring:url value="resources/includes/css/bootstrap-glyphicons.css"
	var="glyphicon" />
<link href="${glyphicon}" rel="stylesheet">

<!-- Custom CSS -->
<spring:url value="resources/includes/css/styles.css" var="css" />
<link href="${css}" rel="stylesheet"> 

<!-- Include Modernizer in the head, before any other Javascript -->
<spring:url value="resources/includes/js/modernizr-2.6.2.min.js"
	var="modernizer" />
<script src="${modernizer}"></script>


</head>
<body style="background-color: #F39C12">

	<div class="container">
		<!-- ------------------- nav bar begins ------------/-->
		<div class="navbar navbar-fixed-top">
			<div class="container">

				<spring:url value="/" var="home"></spring:url>
				<a class="navbar-brand" href="${home}"><img
					src="${pageContext.request.contextPath}/resources/img/logo-3.png" style="height: 20px;"
					alt="Your logo"></a>

				<button class="navbar-toggle" data-toggle="collapse"
					data-target=".bla-bla">$</button>
					
				<div class="nav-collapse collapse bla-bla">
					<ul class="nav navbar-nav">
						<li class="active"><a href="${home} "> Home </a></li>
						<li><spring:url value="/aboutUs" var="about"></spring:url> <a
							href="${about}"> About us</a></li>
							
						
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
							<ul class="dropdown-menu table table-hover" style="backgroud-color:#A9A9A9">
							<li>											   
							<spring:url value="/admin/productList" var="products"></spring:url>
							<a href="${products}"> Product List</a></li>

							<li>
							<spring:url value="/user/viewProducts" var="view"></spring:url>
							<a href="${view }">view Product</a>
							</li>
												
							</ul>
						</li>
					</ul>

					<form class="navbar-form pull-left">
						<input type="text" name="Search" placeholder="Search"
							class="form-control" id="searchInput">
						<button type="submit" class="btn btn-default">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</form>
					
					<ul class="nav navbar-nav pull-right">
							<li>
							<spring:url value="/login" var="view"></spring:url>
							<a href="${view }">Sign In</a>
							</li>
					</ul>
				</div>
				<!-- end collapse -->
			</div>
			<!-- end container-->
		</div>
		<!--end navbar-->
	</div>
	<!--end container-->
	
	<!-- All Javascript at the bottom of the page for faster page loading -->

	<!-- First try for the online version of jQuery-->
	<spring:url value="http://code.jquery.com/jquery.js" var="jsMain"></spring:url>
	<script src="${jsMain}"></script>

	<spring:url value="resources/includes/js/jquery-1.8.2.min.js"
		var="jquery"></spring:url>
	<!-- If no online access, fallback to our hardcoded version of jQuery -->
	<script>
		window.jQuery || document.write('<script src="${jquery}"><\/script>')
	</script>

	<!-- Bootstrap JS -->
	<spring:url value="resources/bootstrap/js/bootstrap.min.js" var="bjs"></spring:url>
	<script src="${bjs}"></script>

	<!-- Custom JS -->
	<spring:url value="resources/includes/js/script.js" var="cjs"></spring:url>
	<script src="${cjs}"></script>

</body>
</html>
