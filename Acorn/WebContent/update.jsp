<%@page import="com.dto.PageDTO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="com.dto.BoardDTO"%>
<%@page import="com.service.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%-- <%

String userid = null;
if(session.getAttribute("member.userid" != null) {
userid = (String) sesssion.getAttribute("userid");
} 
if(userid == null) {
session.setAttribute("mesg", "오류 메시지");
session.setAttriubte("mesg", "현재 로그인이 되어있지 않습니다.");
response.sendRedirect("login.jsp");
return; 
}

MemberDTO member = new MemberDAO.geUser(userid); ?? 
String num = reqyest.getParameter("num");
if(num == null || num.equals('')) {
session.setAttribute("mesg", "오류메시지");
session.setAttriubte("mesg", "접근할 수 없습니다.");
response.sendRedirect("login.jsp");
return; 
}

자신의 글인 경우에만 수정할 수 있도록 이거는 보여주고 안보여주고 ...  


%> --%> 


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

<!-- Template css -->
<link rel="stylesheet" href="css/style.min.css">

<title>글 수정 화면</title>

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



<form method="get" id="myForm">

<input type="hidden" name="num" value="${dto.num}" >
<table class= "table table-bordered table-hover" style="text-align:center; border: 2px solid #dddddd; margin:1em auto;" width=
"50%" align="center" height="auto">
   <thead>	
		<tr>
			<th colspan="5" style="background-color: #eeeeee; text-align: center;"><h4>게시판 글 수정 </h4></th>
		</tr>

	</thead>
			<tbody>
					
					<tr>
						<td colspan="1"> 글 제목:&nbsp; </td>
						 <td colspan="5" style="width: 150px;" ><input type="text" class="wrap" 
						name="title" maxlength="30" value="${dto.title}"></td>
					</tr>
					<tr>
						<td colspan="1"> 작성일:&nbsp;</td>
						 <td colspan="5" style="width: 150px"><input type="text" readonly="readonly" class="wrap" 
						name="writeday" maxlength="30" value="${dto.writeday}"></td>
					</tr>
					<tr>
						<td colspan="1"> 작성자:&nbsp;</td>
						<td colspan="5" style="width: 150px"><input type="text" readonly="readonly" class="wrap" 
						name="userid" value="${dto.userid}"></td>
					</tr>
				
							<tr>
								<td colspan="1">글 내용:&nbsp;</td>
								<td colspan="5" style="width: 150px">
								<textarea class="wrap" placeholder="글 내용을 수정해주세요." name="content" rows="20"
								style="height: 400%;">${dto.content }</textarea></td>
							</tr>
				
				

					<tr>
						<td colspan="5" align="right">
							<input type="button" class="btn btn-primary pull-right" onClick = "changeView(myForm)"
							value="등록"> &nbsp;&nbsp;
							
							<input type="reset" class="btn btn-primary pull-right" value="다시 쓰기"> &nbsp;&nbsp;
							<input type="button" class="btn btn-primary pull-right" 
							onclick="location.href='BoardListServlet'"value="목록"> &nbsp;&nbsp;
							<input type="button" class="btn btn-primary pull-right" 
							onclick="del()" value="삭제"> &nbsp;&nbsp;
					
						</td>
					</tr>
			</tbody>
	</table>

</form> 
</div>
</div>
</div>

 <script type="text/javascript">
        function changeView(f) {
            //location.href='BoardUpdateDoneServlet?num=${dto.num}';
            f.action="BoardUpdateDoneServlet";
            f.submit();
            
        }
        
        function del() {
            location.href='BoardDeleteServlet?num=${dto.num}';
        }
</script>


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


	<!-- Plugins js -->

	<!-- Template JS -->


</body>
</html>






