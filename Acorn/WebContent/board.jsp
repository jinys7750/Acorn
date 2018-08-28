<%@page import="com.dto.PageDTO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="com.dto.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



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
							class="list-group-item list-group-item-action active">회원 정보</a>
						<a href="#" class="list-group-item list-group-item-action">게시물 조회</a>

					</div>
				</div>
			</div>
			<div class="col-lg-9 col-md-8">
				<div class="title">
					<span>Board</span>
				</div>



				<!-- 내용 -->

			
   
   
   <thead class ="thead-inverse">
<tr> 
<th colspan="5"><h3>Board</h3>
				<!--  내용 -->
				
<table class= "table table-bordered table-hover" style="text-align:center; border: 1px solid #dddddd; margin:1em auto;" width=
"50%" align="center" height="auto">

   <tr>
    <td colspan="5" align="right">
      <form action="BoardPerPageServlet">
      <select name="perPage">
        <option value="3" >3개씩 보기</option>
        <option value="5">5개씩 보기</option>
        <option value="10">10개씩 보기</option>
      </select>
      <input type="submit" value="검색"> 
     </form> </td></tr>
   <tr>
     <td align="center"style="background-color: #f2fff9; color: #000000; width: 10%"><h6>글번호</h6></td>
     <td align="center"style="background-color: #f2fff9; color: #000000; width: 39%;"><h6>제목</h6></td>
     <td align="center"style="background-color: #f2fff9; color: #000000; width: 16%;"><h6>작성자</h6></td>
     <td align="center"style="background-color: #f2fff9; color: #000000; width: 25%;"><h6>작성일</h6></td>
     <td align="center"style="background-color: #f2fff9; color: #000000; width: 10%;"><h6>조회수</h6></td>
   </tr>
   </thead>

 <c:set var="xxx" value="${page}"/>

 <c:forEach items="${xxx.getList()}" var="dto">	
  
   <tr>
     <td align="center"><h5>${dto.num}</h5></td>
     <td align="center"><h6><a href="BoardRetrieveServlet?num=${dto.num}">${dto.title}</a></h6></td>
     <td align="center"><h6>${dto.userid}</h6></td>
     <td align="center"><h6>${dto.writeday}</h6></td>
     <td align="center"><h5>${dto.readCnt}</h5></td>
   </tr>
 </c:forEach>

  <tr>   
     <td colspan="5">
       <jsp:include page="page.jsp" flush="true" />
     </td>
     <tr>
    <td colspan="5" align= "right">
     <form action="BoardListServlet">
      <select name="searchName">
        <option value="title" >제목</option>
        <option value="userid" >작성자</option>
      </select>
      <input type="text" name="searchValue">
      <input type="submit" value="검색"> 
     </form> 
    </td>
   </tr>

 </tbody>
</table>
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


	<!-- Plugins js -->

	<!-- Template JS -->

</body>
</html>
