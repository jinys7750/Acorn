<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
<link rel="icon" type="image/x-icon" href="favicon.ico">
<link rel="icon" type="image/png" href="favicon.png">
<link rel="apple-touch-icon" href="touch-icon-iphone.png">
<link rel="apple-touch-icon" sizes="152x152" href="touch-icon-ipad.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="touch-icon-iphone-retina.png">
<link rel="apple-touch-icon" sizes="167x167"
	href="touch-icon-ipad-retina.png">
<title>RegisterSuccess</title>

<!-- Required css -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">

<!-- Plugins css -->
<link rel="stylesheet" href="css/swiper.min.css">

<!-- Template css -->
<link rel="stylesheet" href="css/style.min.css">
</head>
<body>
	<jsp:include page="importJSP/topHeader.jsp"></jsp:include>
	<jsp:include page="importJSP/middleHeader.jsp"></jsp:include>
	<div class="breadcrumb-container">
		<div class="container-fluid limited">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">Shopping
						Cart</li>
				</ol>
			</nav>
		</div>
	</div>

	<div class="container-fluid limited">
		<div class="row">
			<div class="col text-center">
				<div>
					<i class="material-icons md-5">REGISTER SUCCESS</i>
				</div>
				<h1 class="font-weight-normal">Register Success!!!!</h1>
				<a href="index.jsp" role="button" class="btn btn-outline-theme">HOME</a>
			</div>
		</div>
		<jsp:include page="importJSP/modalPage.jsp"></jsp:include>
		<jsp:include page="importJSP/footer.jsp"></jsp:include>

		<!-- Copyright -->
		<div class="copyright">Copyright © 2018 Mimity All right
			reserved</div>
		<!-- /Copyright -->

		<a href="#top" class="back-top text-center" id="back-top"> <i
			class="material-icons">expand_less</i>
		</a>
		<!-- Required js -->
		<script src="js/jquery.min.js"></script>
		<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="js/typeahead.bundle.min.js"></script>

		<!-- Plugins js -->
		<script src="js/swiper.min.js"></script>

		<!-- Template JS -->
		<script src="js/script.min.js"></script>
</body>
</html>
