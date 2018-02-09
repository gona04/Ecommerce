<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <<jsp:include page="header.jsp"></jsp:include> --%>
<%-- <%@include file="header2.jsp" %> --%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@include file="header.jsp"%> --%>

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
<link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<link href="${pageContext.request.contextPath}/resources/includes/css/bootstrap-glyphicons.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/resources/includes/css/styles.css" rel="stylesheet">

<!-- Include Modernizer in the head, before any other Javascript -->
<script src="${pageContext.request.contextPath}/resources/includes/js/modernizr-2.6.2.min.js"></script>

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
					src="${pageContext.request.contextPath}/resources/img/logo-3.png" style="height: 20px;"
					alt="Your logo"></a>

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
						<spring:url value="${pageContext.request.contextPath}/resources/img/logo-3.png" var="img"/>
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

	<!-- All Javascript at the bottom of the page for faster page loading -->

	<!-- First try for the online version of jQuery-->
	<script src="http://code.jquery.com/jquery.js"></script>

	<!-- If no online access, fallback to our hardcoded version of jQuery -->
	<script>
		window.jQuery || document.write('<script src="${pageContext.request.contextPath}/resources/includes/js/jquery-1.8.2.min.js"><\/script>')
	</script>

	<!-- Bootstrap JS -->
	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>

	<!-- Custom JS -->
	<script src="${pageContext.request.contextPath}/resources/includes/js/script.js"></script>



<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-12">
				<div class="well">


					<div class="page-header">
						<h2 class="h2">
							Edit Product<br>
						</h2>
					</div>
					<!-- end header -->

					<form:form
						action="${pageContext.request.contextPath}/new/edit"
						method="post" commandName="product" enctype="multipart/form-data">
						<table class="table table-striped">
							<tr>
								<td>Name:</td>
								<td><form:input path="productName" id="pname" /> <form:hidden
										path="productId" id="pid" /></td>
							</tr>

							<tr>
								<td><label for="catagory">Category:</label></td>

								<td class="checkbox-inline"><form:radiobutton
										path="productCategory" id="Category" value="phone" />Phone
								<td class="checkbox-inline"><form:radiobutton
										path="productCategory" id="Category" value="laptop" />Laptop

								
								<td class="checkbox-inline"><form:radiobutton
										path="productCategory" id="Category" value="clothes" />Clothes

								
								<td class="checkbox-inline"><form:radiobutton
										path="productCategory" id="Category" value="games" />Games
								</td>
								<td class="checkbox-inline"><form:radiobutton
										path="productCategory" id="Category" value="others" />Other
								</td>
								<%-- <td class="checkbox-inline"><form:radiobutton
								path="productCategory" id="Category" value="Bidding" />For
							Bidding</td> --%>
							</tr>

							<tr>
								<td><label for="productDescription">Description</label></td>
								<td><form:textarea path="productDescription"
										id="description" /></td>
							</tr>

							<tr>
								<td><label for="price">Price</label></td>
								<td><form:input path="productPrice" id="price" /></td>
							</tr>

							<tr>
								<td><label for="condition">Condition</label></td>
								<td><label class="checkbox-inline"><form:radiobutton
											path="productCondition" id="condition" value="new" />New</label> <label
									class="checkbox-inline"><form:radiobutton
											path="productCondition" id="condition" value="used" />Used</label></td>
							</tr>

							<tr>
								<td><label for="status">Status</label></td>
								<td class="checkbox-inline"><form:radiobutton
										path="productStatus" id="status" value="active" />Active
								<td class="checkbox-inline"><form:radiobutton
										path="productStatus" id="status" value="inactive" />Inactive</td>
							</tr>

							<tr>
								<td><label for="unitInStock">Unit In Stock</label></td>
								<td><form:input path="unitInStock" id="unitInStock" /></td>
							</tr>

							<tr>
								<td><label for="manufacturer">Manufacturer</label></td>
								<td><form:input path="productManufacturer"
										id="manufacturer" /></td>
							</tr>


							<tr>
								<td><label for="productImage">Upload Image</label></td>
								<td><form:input id="productImage" path="productImage"
										type="file" /></td>
							</tr>


							<tr>
								<td><input type="submit" value="Edit"
									class="btn btn-default"></td>
								<spring:url value="/productList" var="list" />
								<td><a href="${list}" class="btn btn-info">Cancel</a></td>
							</tr>
						</table>

					</form:form>


				</div>
				<!-- end well -->
			</div>
			<!-- end col -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->





	

</body>
</html>