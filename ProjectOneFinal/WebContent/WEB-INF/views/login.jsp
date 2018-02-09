<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
</head>
<body>

	<c:if test="${not empty error1 }">
		
		<div class="row">
			<div class="col-md-offset-3 col-md-6">
			
				<div class="alert alert-danger">
				invalid username and password
				</div>
			
			</div><!-- end of col-md-offset -->
		</div> <!-- end of row -->
		
	</c:if>
	
	<div class="container" style="margin-top: 100px;">
		<div class="row">
			<div class="col-12">
				<div class="well">

					<div class="page-header">
						<h1>
							LOGIN<br>
							<small>Welcome to Shop ON!!</small>
						</h1>
					</div>
					<!-- end page-header -->

					<p class="lead">
						<%-- <form:form action="${pageContext.request.contextPath}/login"
							method="post"> --%>
							<form name="loginForm" action="<c:url value="/login" />" method="post">
							<table class="table table-striped table-hover">
								<tr>
									<td><input type="text" placeholder="Email_Id"
										name="username" id="username" />${error}</td>
								</tr>
								<tr>
									<td><input type="password" placeholder="Password" id="password" 
										name="password"></td>
								</tr>

								<tr>
									<td><input type="submit" value="Login"></td>
									<td><input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}"></td>
									<td><a href="${pageContext.request.contextPath}/signUp"
										class="btn btn-default">Sign Up</a></td>
									<td><a href="/" class="btn btn-default">Cancel</a></td>
								</tr>
							</table>
						</form>
					</p>

				</div>
				<!-- end of well -->
			</div>
			<!-- end of col-12 -->
		</div>
		<!-- end of row -->
	</div>
	<!-- end of container -->

</body>
</html>