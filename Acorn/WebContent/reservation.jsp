<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<title>Reservation</title>

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
					<li class="breadcrumb-item active" aria-current="page">Reservation</li>
				</ol>
			</nav>
		</div>
	</div>

	<div class="container-fluid limited">
		<div class="row">
			<div class="col">
				<div class="text-center">
					<i class="material-icons md-5">RESERVATION</i>
				</div>
				<br> <Br>
				<p>
				<div>
					<form action="ReservationServlet" method="get">
						<!-- 캘린더 불러오기 위한 코드!!! body 밑에 jquery있음 -->
						<!-- 					<label for="pick Date">Select Floor</label> <input type="text"
						class="form-control" id="datepicker"
						placeholder="Enter Reservation Date" name="datetimepicker"> -->
						<label for="pick Date">Select Floor</label> <select name="floor"
							class="form-control">
							<option value="A1">A1</option>
							<option value="A2">A2</option>
							<option value="A3">A3</option>
							<option value="B1">B1</option>
							<option value="B2">B2</option>
							<option value="B3">B3</option>
							<option value="C1">C1</option>
							<option value="C2">C2</option>
							<option value="C3">C3</option>
						</select><br> <label for="pick Date">Select Date</label> <input
							type="text" id="datepicker"> <Br> <br> <label
							for="pick Date">Select Time</label> <input type="text"
							id="timepicker"> <br>
							<label for="pick Date">Reservation Password</label>
							 <input type="password" class="form-control" name="reserve_passwd">
							<Br> <br>
						<!-- hidden -->
						<input type="hidden" name="userid" value="${login.userid }">
						<input type="hidden" name="username" value="${login.username }">
						<input type="hidden" id="reserve_date" name="reserve_date">
						<input type="hidden" name="reserve_time" id="reserve_time">
						<!-- /hidden -->
						<input type="submit" value="SUBMIT" class="btn btn-outline-theme">
						<a href="index.jsp" role="button" class="btn btn-outline-theme">HOME</a>
					</form>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="importJSP/modalPage.jsp"></jsp:include>
	<jsp:include page="importJSP/footer.jsp"></jsp:include>

	<!-- Copyright -->
	<div class="copyright">Copyright © 2018 Mimity All right reserved
	</div>
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
<link rel="stylesheet" type="text/css"
	href="css/jquery.datetimepicker.css"/ >
<script type="text/javascript" src="js/jquery-3.3.1.js">
	
</script>
<script src="js/jquery.datetimepicker.full.js"></script>
<script>
	$(document).ready(
			function() {
				jQuery.datetimepicker.setLocale('de');
				jQuery('#datepicker').datetimepicker(
						{
							i18n : {
								de : {
									months : [ 'Januar', 'Februar', 'März',
											'April', 'Mai', 'Juni', 'Juli',
											'August', 'September', 'Oktober',
											'November', 'Dezember', ],
									dayOfWeek : [ "So.", "Mo", "Di", "Mi",
											"Do", "Fr", "Sa.", ]
								}
							},
							timepicker : false,
							format : 'Y.m.d',
							minDate : '-7D',
							onChangeDateTime : function(dp, $input) {
								$("#reserve_date").val($input.val());
							}
						});
				jQuery('#timepicker').datetimepicker(
						{
							datepicker : false,
							allowTimes : [ '9:00', '10:00', '11:00', '12:00',
									'13:00', '14:20', '15:00', '16:00',
									'17:00', '18:00', '19:00', '20:00' ],
							format : 'H:i',
							onChangeDateTime : function(dp, $input) {
								$("#reserve_time").val($input.val());
							}
						});
			});
</script>
</html>
