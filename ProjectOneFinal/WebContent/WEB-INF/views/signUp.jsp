<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SIGN UP</title>
</head>
<body>
	<div class="container" style="margin-top: 100px;">
		<div class="row">
			<div class="col-12">
				<div class="well">

					<div class="page-header">
						<h1>
							Sign Up<br> <small>Welcome to Shop ON!!</small>
						</h1>
					</div>
					<!-- end page-header -->

					<p class="lead">
						<form:form action="${pageContext.request.contextPath}/signUp"
							commandName="customer" method="post">
							<table class="table table-striped table-hover">
								<tr>
									<td>Email Id:</td><td><span style="color: #ff0000">${emailMsg}</span></td>
									<td><form:input path="customerEmail" id="email"/>
									</td>
								</tr>
								<tr>
									<td>Name:</td>
									<td><form:input path="customerName" id="name" /></td>
								</tr>
								<tr>
									<td>PhoneNo:</td>
									<td><form:input path="customerPhoneNo" id="phone" /></td>
								</tr>
								
								<tr>
									<td>Password:</td>
									<td><form:input type="password" path="password" id="password" /></td>
								</tr>
								
								<tr>
									<td class="h4" class="col-12" style="text-align: center">billing
										Address</td>
								</tr>

								<tr>
									<td>AppartmentNumber & Name:</td>
									<td><form:input path="billingAddress.apartmentNumber"
											id="billingAddress_apartmentNumber" /></td>
								</tr>

								<tr>
									<td>StreetName With landmarks:</td>
									<td><form:input path="billingAddress.streetName"
											id="billingAddress_streetName" /></td>
								</tr>

								<tr>
									<td>City:</td>
									<td><form:input path="billingAddress.city"
											id="billingAddress_city" /></td>
								</tr>

								<tr>
									<td>State:</td>
									<td><form:input path="billingAddress.state"
											id="billingAddress_state" /></td>
								</tr>

								<tr>
									<td>Country:</td>
									<td><form:input path="billingAddress.country"
											id="billingAddress_country" /></td>
								</tr>

								<tr>
									<td>Zipcode:</td>
									<td><form:input path="billingAddress.zipcode"
											id="billingAddress_zipcode" /></td>
								</tr>


								<tr>
									<td class="h4" class="col-12" style="text-align: center">shipping
										Address</td>
								</tr>

								<tr>
									<td>AppartmentNumber & Name:</td>
									<td><form:input path="shippingAddress.apartmentNumber"
											id="shippingAddress_apartmentNumber" /></td>
								</tr>

								<tr>
									<td>StreetName With landmarks:</td>
									<td><form:input path="shippingAddress.streetName"
											id="shippingAddress_streetName" /></td>
								</tr>

								<tr>
									<td>City:</td>
									<td><form:input path="shippingAddress.city"
											id="shippingAddress_city" /></td>
								</tr>

								<tr>
									<td>State:</td>
									<td><form:input path="shippingAddress.state"
											id="shippingAddress_state" /></td>
								</tr>

								<tr>
									<td>Country:</td>
									<td><form:input path="shippingAddress.country"
											id="shippingAddress_country" /></td>
								</tr>

								<tr>
									<td>Zipcode:</td>
									<td><form:input path="shippingAddress.zipcode"
											id="shippingAddress_zipcode" /></td>
								</tr>

								<tr>
									<td><input type="submit" class="btn btn-large btn-primary"
										value="Register"></td>
									<td><a href="/" class="btn btn-default">Cancel</a></td>
								</tr>
							</table>
						</form:form>
					</p>
				</div>
				<!--  end well -->
			</div>
			<!-- end col -->
		</div>
		<!--  end row -->
	</div>
	<!-- end container -->
</body>
</html>