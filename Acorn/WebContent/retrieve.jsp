<%@page import="com.dto.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

<!-- Template css -->
<link rel="stylesheet" href="css/style.min.css">
<title>boardView</title>

</head>
<body>
	<jsp:include page="importJSP/topHeader.jsp"></jsp:include>
	<jsp:include page="importJSP/middleHeader.jsp"></jsp:include>
	<div class="breadcrumb-container">
		<div class="container-fluid limited">
			<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
				<li class="breadcrumb-item"><a href="RankingOut">내 글만 조회</a></li>
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
								<h5 class="user-name">{login.userid}</h5>
								<small class="card-text text-muted">Joined Dec 31, 2017</small>
								<div class="card-text small text-muted"></div>
							</div>
						</div>
					</div>
					<div class="list-group list-group-flush">
						<a href="BoardListServlet"
							class="list-group-item list-group-item-action active">Board</a>
						<a href="#" class="list-group-item list-group-item-action">Board</a>

					</div>
				</div>
			</div>
			<div class="col-lg-9 col-md-8">
				<div class="title">
					<span>My Orders</span>
				</div>
				<%
					BoardDTO dto = (BoardDTO) session.getAttribute("dto");
					int num = dto.getNum();
					String title = dto.getTitle();
					String userid = dto.getUserid();
					String content = dto.getContent();
					String writeday = dto.getWriteday();
					int readCnt = dto.getReadCnt();
				%>
				<h1>글 자세히 화면</h1>

				<form method="post" id="myForm">
					<table class="table table-bordered table-hover"
						style="text-align: center; border: 2px solid #dddddd; margin: 1em auto;"
						width="50%" align="center" height="auto">

						<thead>
							<tr>
								<th colspan="5"
									style="background-color: #eeeeee; text-align: center;"><h3>게시판
										글보기</h3></th>
							</tr>

							<input type="hidden" name="num" value="<%=num%>">
							<input type="hidden" name="title" value="<%=title%>">
							<input type="hidden" name="writeday" value="<%=writeday%>">
							<input type="hidden" name="userid" value="<%=userid%>">
							<input type="hidden" name="content" value="<%=content%>">
						</thead>
						<tbody>

							<tr>
								<td colspan="1">글 제목:&nbsp;</td>
								<td colspan="5" style="width: 150px;"><input type="text"
									style="width: 850px" class="form-control" name="title"
									maxlength="30" value="${dto.title}"></td>
							</tr>
							<tr>
								<td colspan="1">작성일:&nbsp;</td>
								<td colspan="5" style="width: 150px"><input type="text"
									readonly="readonly" class="form-control" name="writeday"
									maxlength="30" value="${dto.writeday}"></td>
							</tr>
							<tr>
								<td colspan="1">작성자:&nbsp;</td>
								<td colspan="5" style="width: 150px"><input type="text"
									readonly="readonly" class="form-control" name="userid"
									value="${dto.userid}"></td>
							</tr>


							<tr>
								<td colspan="1">글 내용:&nbsp;</td>
								<td colspan="5" style="width: 150px"><textarea
										class="form-control" name="content" rows="20"
										readonly="readonly" style="height: 400%;">${dto.content}</textarea></td>
							</tr>

							<!-- 게시글 내용(작성자, 작성일, 조회수, 번호, 제목, 내용) -->


							<%-- 글 자세히 보는 상태에서 유저의 아이디가 작성글 아이디와 일치하면 수정, 삭제 버튼 




String userid = null;
if (session.getAttribute("userid") != null) {

	userid = (String) session.getAttribute("userid");
}
if(userid == null) {
	session.setAttribute("mesg", "로그인이 되어 있지 않습니다.");
	response.sendRedirect("login.jsp");
	return;
}

if(dto.userid != null && dto.userid.equals("login.userid") {
	
<tr><td colspan="1"> 댓글 :&nbsp; </td>
								<td colspan="5" style="width: 150px">
	 <p><a href="https://www.w3.org/TR/html5/" target="_blank" title="html5 speicification">
  <img src="coding.jpg" width="100%">
  </p><p style="margin-top:45px;">
  </p>
  <p>
    <div id="disqus_thread"></div>
<script>

(function() { // DON'T EDIT BELOW THIS LINE
var d = document, s = d.createElement('script');
s.src = 'https://web1-2.disqus.com/embed.js';
s.setAttribute('data-timestamp', +new Date());
(d.head || d.body).appendChild(s);
})();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
  </p>
  </td></tr>


}

--%>
							<tr>
								<td colspan="5" align="right"><input type="button"
									class="btn btn-outline-theme" value="목록"
									onclick="location.href='BoardListServlet'"> <c:if
										test="${login.userid eq dto.userid}">
										<input type="button" class="btn btn-outline-theme"
											onclick="update()" value="수정"> &nbsp; 
									<input type="button" class="btn btn-outline-theme"
											onclick="del()" value="삭제"> &nbsp; </c:if> <input
									type="button" class="btn btn-outline-theme" onclick="comment()"
									value="댓글"> &nbsp;&nbsp;</td>
							</tr>
						</tbody>
					</table>

				</form>

			</div>
		</div>


		<script type="text/javascript">
			function del() {
				location.href = 'BoardDeleteServlet?num=${dto.num}';
			}
			function update() {
				location.href = 'BoardUpdateServlet?num=${dto.num}';
			}
			function comment() {

				location.href = 'BoardReplyServlet?num=${dto.num}';
			}
			function changeView(f) {
				//location.href='BoardUpdateDoneServlet?num=${dto.num}';
				f.action = "BoardListServlet";
				f.submit();

			}
		</script>





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


		<!-- Plugins js -->

		<!-- Template JS -->
</body>
</html>




