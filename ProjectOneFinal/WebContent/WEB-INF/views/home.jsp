<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
.one {
	margin-top: 100px;
}

div.c-wrapper{
    width: 50%; /* for example */
    margin: auto;
}

.carousel-inner > .item > img, 
.carousel-inner > .item > a > img{
width: 100%; /* use this, or not */
margin: auto;
}
</style>
<body>
	<div class="container one">
		<div class="carousel slide c-wrapper" id="myCarousel" data-interval="3000"
			data-ride="carousel">
			
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active">
				</li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<div class="carousel-inner" id="slide1">
				<div class="item active">
					<%-- 	<spring:url value="/resources/c_Images/Image_c ${ph.getImageId()}.jpg" value="img1"/> --%>
					<spring:url value="/resources/img/ps4-gold.png" var="img1" />
					<img src="${img1}" alt="image1" class="img-responsive" >
				</div>
				<!-- end of item1 -->

				<div class="item">
					<%-- <spring:url value="/resources/c_Images/Image_c ${ph.getImageId()}.jpg" value="img2"/>  --%>
					<spring:url value="/resources/img/phone.png" var="img2" />
					<img src="${img2}" alt="image2" class="img-responsive" style="margin:auto">
				</div>
				<!-- end of item2 -->

				<div class="item">
					<%-- <spring:url value="/resources/c_Images/Image_c ${ph.getImageId()}.jpg" value="img3"/> --%>
					<spring:url value="/resources/img/img7.jpg" var="img3" />
					<img src="${img3}" alt="image3" class="img-responsive" style="margin:auto;">
				</div>
				<!-- end of item3 -->
			</div>
			<!-- end of inner -->


			<a class="carousel-control right" href="#myCarousel"
				data-slide="next"><span
				class="glyphicon glyphicon-chevron-right"></span></a> <a
				class="carousel-control left" href="#myCarousel" data-slide="prev"><span
				class="glyphicon glyphicon-chevron-left"></span></a>
		</div>
		<!-- end of carousel-inner -->
	</div>
	<!-- end carousel slide -->
	<!-- end container -->

</body>
</html>