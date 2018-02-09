<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="header.jsp" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>SHOP ON!</title>
</head>
<body>
	<div class="container" style="margin-top: 100px; margin-left: 100px;">
		<div class="row">
		<div class="col-12">
			<div class="well">
		<div class="page-header">
			<h2>Add Products</h2>
		</div><!-- end page-Header -->
			<form:form method="POST"
				action="${pageContext.request.contextPath}/addProductsP"
				commandName="product" enctype="multipart/form-data">
				<table class="table table-hover">

					<tr>
						<td><label for="name">Name:</label></td>
						<td><form:input path="productName" id="pname"
								placeholder="product name" /></td>
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
								path="productCategory" id="Category" value="others" />Others
								</td>
						<%-- <td class="checkbox-inline"><form:radiobutton
								path="productCategory" id="Category" value="Bidding" />For
							Bidding</td> --%>
					</tr>

					<tr>
						<td><label for="productDescription">Description</label></td>
						<td><form:textarea path="productDescription" id="description" />
						</td>
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
						<td><form:input path="productManufacturer" id="manufacturer" />
						</td>
					</tr>

					<tr>
						<td><label for="productImage">Upload Picture</label></td>
						<td><form:input id="productImage" path="productImage"
								type="file" class="form:input-large" /></td>
					</tr>

					<tr>
						<td><input type="submit" value="Add" class="btn btn-default"></td>
						<spring:url value="/productList" var="products" />
						<td><a href="${products}" class="btn btn-default">cancel</a>
					</tr>
				</table>
			</form:form>
			</div><!-- end col-12 -->
			</div><!-- end well -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</body>
</html>