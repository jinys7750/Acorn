<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		//입력안하면 alert
		$("#form").on("submit", function(event) {
			var maxDistance = $("#maxDistance").val();
			var hitBall = $("#hitBall").val();
			if (maxDistance.length == 0) {
				alert("칸이 비어있다")
				$("#maxDistance").focus();
				event.preventDefault();
			} else if (hitBall.length == 0) {
				alert("칸이 비어있다")
				$("#hitBall").focus();
				event.preventDefault();
			}
		}); //입력안하면 alert

	});//end script
</script>

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


<!-- Required css -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">

<!-- Plugins css -->

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
					<li class="breadcrumb-item"><a href="RankingOut">MyRecord</a></li>
					<li class="breadcrumb-item active" aria-current="page">MyRecord</li>
				</ol>
			</nav>
		</div>
	</div>

	<div class="container-fluid limited mb-5">
		<div class="row">
			<div class="col-lg-3 col-md-4 mb-4 mb-md-0">
				<div class="card user-card">
					<div class="card-body p-2 mb-3 mb-md-0 mb-xl-3">
						<div class="media">
							<img class="rounded-circle" src="img/user.png" alt="John Thor">
							<div class="media-body">
								<h5 class="user-name">USER ID</h5>
								<small class="card-text text-muted">Joined Dec 31, 2017</small>
								<div class="card-text small text-muted"></div>
							</div>
						</div>
					</div>
					<div class="list-group list-group-flush">

						<a href="RankingOut"
							class="list-group-item list-group-item-action active">MyRecord</a>
						<a href="#" class="list-group-item list-group-item-action">MyPlayTime</a>

					</div>
				</div>
			</div>
			<div class="col-lg-9 col-md-8">
				<div class="title">
					<span>My Orders</span>
				</div>


				<!-- 내용 -->

				<h2>Insert record</h2>
				<!--  내용 -->

				

				<form action="RecordIn" method="get" id="form" name="form">
			<div style="width: 120px" align="left">
			<input type="text" id="datepicker" class="form-control" autocomplete="off"></div>

					<table>
						<tr>
							<td>TODAY DISTANCE</td>
							<td><input type="text" id="maxDistance" name="maxDistance"
								maxlength="2"></td>
								</tr>
								<tr>
							<td>TODAY HITBALL</td>
							<td><input type="text" id=hitBall name="hitBall"
								maxlength="2"></td>
						</tr>
						<tr>
							<td><input type="submit" value="submit"
								class="btn btn-theme btn-sm btn-block my-3"></td>
							<td><input type="reset" value="cancel "
								class="btn btn-theme btn-sm btn-block my-3"></td>
						</tr>
							<input type="hidden" id="reserve_date" name="reserve_date">

					</table>
				</form>
				<br>
				<h2>My best record</h2>
				<table>
					<tr>
						<td>DISTANCE :</td>
						<td>${mRecord.maxDistance}<!-- ${record.maxDistance} --></td>
					</tr>
					<tr>
						<td>HITBALL :</td>
						<td>${mRecord.hitBall}<!-- ${record.hitBall} --></td>
					</tr>
				</table>
				<br>
				<%
					int i = 1;
				%>
				<h2>RANKING</h2>
				<br>
				<!-- 토글버튼영역 -->
				<c:if test="${mRecord.userid != null }">
					<div class="card mb-1">

						<div class="card-header p-2" role="tab" id="heading6-1">
							<a class="collapsed text-secondary font-weight-bold"
								data-toggle="collapse" href="#collapse6-1" aria-expanded="false"
								aria-controls="collapse6-1"> Distance Ranking </a>
						</div>
						<div id="collapse6-1" class="collapse" role="tabpanel"
							aria-labelledby="heading6-1" data-parent="#accordion6">
							<div class="card-body">

								<table width="800px" align="center" class="table table-hover">
									<thead class="thead-light">
										<tr align="center">
											<td>RANK</td>
											<td>USERID</td>
											<td>DISTANCE</td>
										</tr>
									</thead>

									<c:forEach var="dr" items="${drList}" varStatus="status">
										<tr align="center">
											<td><%=i%></td>
											<%
												i++;
											%>
											<td>${dr.userid}</td>
											<td>${dr.maxDistance}</td>
										</tr>
									</c:forEach>
								</table>
							</div>
						</div>
						<div class="card-header p-2" role="tab" id="heading6-2">
							<a class="collapsed text-secondary font-weight-bold"
								data-toggle="collapse" href="#collapse6-2" aria-expanded="false"
								aria-controls="collapse6-2"> Hitball Ranking </a>
						</div>
						<div id="collapse6-2" class="collapse" role="tabpanel"
							aria-labelledby="heading6-2" data-parent="#accordion6">
							<div class="card-body">

								<%
									int i2 = 1;
								%>

								<table width="800px" align="center" class="table table-hover">
									<thead class="thead-light">
										<tr align="center">
											<td>RANK</td>
											<td>USERID</td>
											<td>HITBALL</td>
										</tr>
									</thead>

									<c:forEach var="hr" items="${hdto}" varStatus="status">
										<tr align="center">
											<td><%=i2%></td>
											<%
												i2++;
											%>
											<td>${hr.userid }</td>
											<td>${hr.hitBall }</td>
										</tr>
									</c:forEach>

								</table>

							</div>
						</div>


					</div>
				</c:if>
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

	<!-- Template JS -->
	<script src="js/script.min.js"></script>

</body>
<link rel="stylesheet" type="text/css"
	href="css/jquery.datetimepicker.css" />
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
								
								$.ajax({
									url : 'ReservationCheckServlet',
									type : 'get',
									dataType : 'text',
									data : {	
										playDate : $("#reserve_date").val(),
										playTime : $("#reserve_time").val(),

									},
									success : function(data, textStatus, xhr) {
										if(data==str){
											$("#result").text(data);
											$("#result").attr("style", "font-size: 12px;color: red");
										}
										else{
											$("#result").text(data);
											$("#result").attr("style", "font-size: 12px;color: blue");
										}
									},
									error : function(xhr, status, error) {
										console.log(error);
									}
								});
								
								
								
								
								
							}
						});
			/* 	jQuery('#timepicker').datetimepicker(
						{
							datepicker : false,
							allowTimes : [ '9:00', '10:00', '11:00', '12:00',
									'13:00', '14:00', '15:00', '16:00',
									'17:00', '18:00', '19:00', '20:00' ],
							format : 'H:i',
							onChangeDateTime : function(dp, $input) {
								$("#reserve_time").val($input.val());
							}
						}); */

			});
</script>

</html>