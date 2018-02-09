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
<spring:url value="${pageContext.request.contextPath}/resources/includes/css/bootstrap.min.css"
	var="bootstrapMain" />
<link href="${bootstrapMain}" rel="stylesheet">

<spring:url value="${pageContext.request.contextPath}/resources/includes/css/bootstrap-glyphicons.css"
	var="glyphicon" />
<link href="${glyphicon}" rel="stylesheet">

<!-- Custom CSS -->
<spring:url value="${pageContext.request.contextPath}/resources/includes/css/styles.css" var="css" />
<link href="${css}" rel="stylesheet">

<!-- jQuery files!!!! -->

<script src="https://code.jquery.com/jquery-1.11.1.min.js">
	
</script>
<script
	src="https://cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js">
	
</script>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.4/css/jquery.dataTables.min.css">

<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
<script type="text/javascript">
	$(document).ready(function() {
		$('#table_id').dataTable({
			"pagingType" : "full_numbers",
			"lengthMenu" : [ 2, 4, 5],
		});
	});
</script>
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
<body>
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-12">
				<div class="well">


					<div class="page-header">

						<h2 class="h2" id="test">
							List of Products Added<br> <small class="text-muted">The
								list of amazing Products!!</small>

						</h2>

					</div>
					<!-- end header -->


					<table id="table_id" class="table table-striped table-bordered"
						cellspacing="0" width="100%">

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

						<tfoot>
							<tr>
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
						</tfoot>
						<tbody>
							<!-- <tr>

								<select DataTable>
									<option value="2">2</option>
									<option value="4">4</option>
								</select>
							</tr> -->
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
										href="<spring:url value="/user/productDetails/${product.productId}" />"><span
											class="glyphicon glyphicon-info-sign"></span></a></td>
									<%-- <td><spring:url
						value="/product/viewProduct/${product.productId}" var="pid">
						<a href="${pid}"></a>
					</spring:url></td> --%>
									<td><spring:url
											value="/admin/deleteProduct/${product.productId}" var="delete" />
										<a href="${delete}" class="btn btn-primary"><span
											class="glyphicon glyphicon-trash "> Delete</span></a></td>
									<td><spring:url value="/admin/editProduct/${product.productId}"
											var="edit" /><a href="${edit}" class="btn btn-primary"
										style="background-color:;"><span
											class="glyphicon glyphicon-pencil "></span> Edit</a></td>
								</tr>

							</c:forEach>
						</tbody>
						<tr>
							<td><spring:url value="/admin/addProducts" var="add" /><a
								href="${add}" class="btn btn-primary">Add</a></td>
						</tr>

					</table>

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