<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form method="POST" action="${pageContext.request.contextPath}/checklogin">
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
								href="${pageContext.request.contextPath}/signUp">create one
								here!</a>
						</p>
				</td>
			</tr>
		</table>

	</form>

</body>
</html>