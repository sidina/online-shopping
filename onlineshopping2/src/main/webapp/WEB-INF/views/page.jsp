<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/assets/css" />
<spring:url var="js" value="/resources/assets/js" />
<spring:url var="images" value="/resources/assets/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping ${title}</title>
<script>
	window.menu = '${title}';
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap sketchy theme -->
<link href="${css}/bootstrap-united-theme.css" rel="stylesheet">


<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>
	<div class="wrapper">
		<!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>

		<!-- Page Content -->
		<div class="content">
			<!-- loading the home content -->
			<c:if test="${userClickHome==true }">
				<%@include file="home.jsp"%>
			</c:if>
			<!-- Only if use click about -->
			<c:if test="${userClickAbout==true }">
				<%@include file="about.jsp"%>
			</c:if>
			<!-- Only if use click contact -->
			<c:if test="${userClickContact==true }">
				<%@include file="contact.jsp"%>
			</c:if>
			<!-- Only if use click contact -->
			<c:if test="${userClickAllProducts==true  or userClickCategoryProducts==true }">
				<%@include file="listProducts.jsp"%>
			</c:if>
			<!-- /.container -->
		</div>
		<!-- Footer -->
		<%@include file="./shared/footer.jsp"%>
		<!-- Bootstrap core JavaScript -->
		<script src="${js}/jquery.js"></script>
		<script src="${js}/bootstrap.bundle.min.js"></script>
		<!-- Selfcoding JavaScript -->
		<script src="${js}/myapp.js"></script>
	</div>
</body>

</html>
