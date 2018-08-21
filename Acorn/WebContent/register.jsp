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
<title>Register - Yelf</title>

<!-- Required css -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">

<!-- Plugins css -->

<!-- Template css -->
<link rel="stylesheet" href="css/style.min.css">
<script type="text/javascript" src="js/jquery-3.3.1.js">
	
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#userid").on("keyup", function() {
			$.ajax({
				url : 'MemberIDCheckServlet',
				type : 'get',
				dataType : 'text',
				data : {
					userid : $("#userid").val()
				},
				success : function(data, textStatus, xhr) {
					$("#result").text(data);
				},
				error : function(xhr, status, error) {
					console.log(error);
				}
			});
		});
		$("#passwd2").on("keyup", function() {
			var passwd = $("#passwd").val();
			var mesg = "비밀번호 불일치";
			if (passwd == $("#passwd2").val()) {
				mesg = "비밀번호 일치";
			}
			$("#passwdResult").text(mesg);
		});
		$("form").on("submit", function(event) {
			var userid = $("#userid").val();
			var passwd = $("#passwd").val();
			var passwd2 = $("#passwd2").val();
			if (userid.length == 0) {
				alert("필수 항목을 입력해주세요");
				$("#userid").focus();
				event.preventDefault();
			} else if (passwd.length == 0) {
				alert("필수 항목을 입력해주세요");
				$("#passwd").focus();
				event.preventDefault();
			} else if (passwd2.length == 0) {
				alert("필수 항목을 입력해주세요");
				$("#passwd2").focus();
				event.preventDefault();
			}
		});
		$("#emailSelect").on("change", function() {
			$("#email2").val($(this).val());
		});

	});
</script>
</head>
<body class="body-pattern">
	<jsp:include page="importJSP/topHeader.jsp"></jsp:include>
	<jsp:include page="importJSP/middleHeader.jsp"></jsp:include>
	<div class="container-fluid limited mb-5">
		<div class="row justify-content-center mt-4">
			<div class="col-xs-12 col-lg-6 col-md-8">
				<div class="card">
					<div class="card-body pt-2">
						<div class="text-center">
							<div
								class="d-inline-block border border-secondary rounded-circle text-center m-auto">
								<h1 class="px-2">
									<i class="material-icons align-middle md-3">person</i>
								</h1>
							</div>
						</div>
						<h5 class="card-title text-center">Create an Account</h5>
						<form action="MemberRegisterServlet" method="get">
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="InputName">UserID</label> <input type="text"
										class="form-control" id="userid" name="userid"
										placeholder="Enter Name"> <label id="result"
										style="font-size: 12px"></label>
								</div>
								<div class="form-group col-md-6">
									<label for="InputName">Name</label> <input type="text"
										class="form-control" id="username" name="username"
										placeholder="Enter Name">
								</div>
								<div class="form-group col-md-6">
									<label for="InputPassword">Password</label> <input
										type="password" class="form-control" id="passwd"
										placeholder="Password" name="passwd">
								</div>
								<div class="form-group col-md-6">
									<label for="InputPassword2">Confirm Password</label> <input
										type="password" class="form-control" id="passwd2"
										name="passwd2" id="InputPassword2"
										placeholder="Confirm Password"><label
										id="passwdResult" for="result passwd" style="font-size: 12px"></label>
								</div>
								<div class="form-group col-md-6">
									<label for="Input PhoneNumber">PhoneNumber</label>
									<!-- 나중에 파싱하는 형태로 만들기!! css가 망가져서 도저히 방법이 없음 -->
									<input type="text" id="phone" name="phone" class="form-control"
										placeholder="000-0000-0000">
								</div>
								<div class="form-group col-md-6"></div>
								<!-- 자기 주소 받아오는 API -->
								<div class="form-group col-md-6">
									<label for="button"></label> <input type="button"
										onclick="sample6_execDaumPostcode()" value="SearchAddress"
										class="btn btn-theme btn-sm btn-block my-3">
								</div>
								<div class="form-group col-md-6">
									<label for="Input PostNumber">Post Number</label> <input
										type="text" id="post" name="post" placeholder="Post Number"
										class="form-control">
								</div>
								<div class="form-group col-md-6">
									<label for="Address">Address</label> <input type="text" id="addr1"
										 name="addr1" class="form-control"
										placeholder="Address">
								</div>

								<div class="form-group col-md-6">
									<label for="Input Detail Address">Detail Address</label> <input
										type="text" id="addr2" name="addr2" class="form-control"
										placeholder="Detail Address">
								</div>
								<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
								<script>
									function sample6_execDaumPostcode() {
										new daum.Postcode(
												{
													oncomplete : function(data) {
														// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

														// 각 주소의 노출 규칙에 따라 주소를 조합한다.
														// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
														var fullAddr = ''; // 최종 주소 변수
														var extraAddr = ''; // 조합형 주소 변수

														// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
														if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
															fullAddr = data.roadAddress;

														} else { // 사용자가 지번 주소를 선택했을 경우(J)
															fullAddr = data.jibunAddress;
														}

														// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
														if (data.userSelectedType === 'R') {
															//법정동명이 있을 경우 추가한다.
															if (data.bname !== '') {
																extraAddr += data.bname;
															}
															// 건물명이 있을 경우 추가한다.
															if (data.buildingName !== '') {
																extraAddr += (extraAddr !== '' ? ', '
																		+ data.buildingName
																		: data.buildingName);
															}
															// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
															fullAddr += (extraAddr !== '' ? ' ('
																	+ extraAddr
																	+ ')'
																	: '');
														}

														// 우편번호와 주소 정보를 해당 필드에 넣는다.
														document
																.getElementById('post').value = data.zonecode; //5자리 새우편번호 사용
														document
																.getElementById('addr1').value = fullAddr;

														// 커서를 상세주소 필드로 이동한다.
														document
																.getElementById(
																		'addr2')
																.focus();
													}
												}).open();
									}
								</script>
								<div class="form-group col-md-6">
									<label for="InputEmail">Email Address</label> <input
										type="email" class="form-control" id="email" name="email"
										placeholder="Enter Email">
								</div>
								<div class="form-group col-md-6">
								</div>
							</div>
							<input type="submit" class="btn btn-theme btn-sm btn-block my-3"
								value="submit">
							<div class="form-group text-right">
								<a href="login.jsp" class="text-secondary"><small><u>Already
											Registered ?</u></small></a>
							</div>
						</form>
					</div>
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

	<!-- Template JS -->
	<script src="js/script.min.js"></script>

</body>
</html>