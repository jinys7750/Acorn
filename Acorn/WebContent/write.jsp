<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="com.dto.PageDTO"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.dto.BoardDTO"%>
<%@page import="com.dao.BoardDAO"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<link rel="stylesheet" href="css/bootstrap.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>

<!-- Required meta tags -->

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

<link rel="stylesheet" href="bootstrap/css/bootstrap.css">

<!-- Template css -->
<link rel="stylesheet" href="css/style.min.css">
<title>Write</title>

<script>
	$(document).ready(
			function() {
				$('.wrap').on('keyup', 'textarea', function(e) {
					$(this).css('height', 'auto');
					$(this).height(this.scrollHeight);
				});
				$('.wrap').find('textarea').keyup();
				$('.wrap').focus(
						function() {
							$(this).data('placeholder',
									$(this).attr('placeholder')).attr(
									'placeholder', '');
						}).blur(function() {
					$(this).attr('placeholder', $(this).data('placeholder'));
				});

			});
</script>
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

				<form method="post" action="BoardWriteServlet" enctype="multipart/form-data" >
					<table class= "table table-bordered table-hover" style="text-align:center; border: 2px solid #dddddd; margin:1em auto;" width=
"50%" align="center" height="auto">
						<thead>
							<tr>
								<th colspan="5" style="background-color: #eeeeee; text-align: center;">
									<h4>게시판 글 쓰기</h4></th>
							</tr>
						</thead>
						
						<tbody>

							<tr>
								<td colspan="1"> 아이디:&nbsp;</td>
								<td colspan="5" style="width: 150px"><input type="text"
									class="wrap" name="userid" value="${dto.userid}"></td>
							</tr>
							<tr>
								<td colspan="1">글 제목:&nbsp;</td>
								<td colspan="5" style="width: 150px">
								<input type="text" placeholder="글 제목을 입력해주세요." class="wrap" name="title" style="width: 600px"
									maxlength="30" value="${dto.title}"></td>
							</tr>
						<tr>
								<td colspan="1">파일 업로드 :&nbsp;</td>
								<td colspan="5" align="center" style="width: 150px">
 								<input type="file" name="fileName"  value="파일 선택" class="wrap">
								<input type="submit" value="업로드">
					
							</td>
						</tr>
							<tr>
								<td colspan="1">글 내용 :&nbsp;</td>
								<td colspan="5" style="width: 150px">
								<textarea class="form-control" placeholder="글 내용을 입력해주세요." name="content" rows="20" value= "${dto.content}"
										maxlength="4000" style="height: 400%;"></textarea></td>
							</tr>
						
								<!--  버튼 태그 구현 내용 비로그인 상태에서 login.jsp로 보내주는 코드 필요 -->
							<tr>
								<td colspan="5" style="width: 150px"><input type="submit"
									value="글쓰기 완료"> &nbsp;&nbsp; <input type="reset"
									value="다시 쓰기"> &nbsp;&nbsp;
									<input type="button" class="btn btn-primary pull-right" value="목록" 
									onclick="location.href='BoardListServlet'"> &nbsp;</td>
							</tr>
							
							

							
							
							
						</tbody>





					</table>
				</form>
			</div>
		</div>

	


</body>
</html>
						