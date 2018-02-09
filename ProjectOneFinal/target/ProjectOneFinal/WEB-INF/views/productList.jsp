<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%-- <<jsp:include page="header.jsp"></jsp:include> --%>
<%-- <%@include file="header2.jsp" %> --%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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

<script>
	$(document).ready(
			function() {

				$('.table').DataTable(
						{
							"lengthMenu" : [ [ 1, 2, 3, 5, 10, -1 ],
									[ 1, 2, 3, 5, 10, "All" ] ]
						});
			});
</script>

</head>
<body>
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-12">
				<div class="well">


					<div class="page-header">
						<h2 class="h2">
							List of Products Added<br> <small class="text-muted">The
								list of amazing Products!!</small>
						</h2>
					</div>
					<!-- end header -->


					<table class="table table-hover table-striped ">
						<thead>
							<tr class="bg-success">
								<th>Photo Thumb</th>
								<th></th>
								<th>Product Name</th>
								<th>Category</th>
								<th>Price</th>
								<th>Condition</th>
								<th></th>
								<th>Other Options</th>
								<th></th>
							</tr>
						</thead>
						<tr>
							
								<!-- <select DataTable>
									<option value="2">2</option>
									<option value="4">4</option>
								</select>  -->
						</tr>
						<c:forEach items="${product}" var="product">
							<tr>
								<td><img
									src="<c:url value="/resources/productImages/Image ${product.productId}.jpg" />"
									alt="image" class="img-rounded"
									style="height: 90px; width: 130px" /></td>
								<td>${product.productId}</td>
								<td>${product.productName}</td>
								<td>${product.productCategory}</td>
								<td>${product.productPrice}</td>
								<td>${product.productCondition}</td>
								<td><a
									href="<spring:url value="/productDetails/${product.productId}" />"><span
										class="glyphicon glyphicon-info-sign"></span></a></td>
								<%-- <td><spring:url
						value="/product/viewProduct/${product.productId}" var="pid">
						<a href="${pid}"></a>
					</spring:url></td> --%>
								<td><spring:url value="/deleteProduct/${product.productId}"
										var="delete" /> <a href="${delete}" class="btn btn-primary"><span
										class="glyphicon glyphicon-trash "> Delete</span></a></td>
								<td><spring:url value="/editProduct/${product.productId}"
										var="edit" /><a href="${edit}" class="btn btn-primary"
									style="background-color:;"><span
										class="glyphicon glyphicon-pencil "></span> Edit</a></td>
							</tr>

						</c:forEach>

						<tr>
							<td><spring:url value="/addProducts" var="add" /><a
								href="${add}" class="btn btn-primary">Add</a></td>
						</tr>
					</table>


					<!-- All Javascript at the bottom of the page for faster page
					loading -->

					<!-- First try for the online version of jQuery-->
					<spring:url value="http://code.jquery.com/jquery.js" var="jsMain"></spring:url>
					<script src="${jsMain}"></script>

					<spring:url value="resources/includes/js/jquery-1.8.2.min.js"
						var="jquery"></spring:url>
					<!-- If no online access, fallback to our hardcoded version of jQuery -->
					<script>
						window.jQuery
								|| document
										.write('<script src="${jquery}"><\/script>')
					</script>

					<!-- Bootstrap JS -->
					<spring:url value="resources/bootstrap/js/bootstrap.min.js"
						var="bjs"></spring:url>
					<script src="${bjs}"></script>

					<!-- Custom JS -->
					<spring:url value="resources/includes/js/script.js" var="cjs"></spring:url>
					<script src="${cjs}"></script>


				</div>
				<!-- end well -->
			</div>
			<!-- end col-12 -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->

</body>
</html>