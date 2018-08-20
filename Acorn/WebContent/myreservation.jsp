<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link rel="icon" type="image/png" href="favicon.png">
    <link rel="apple-touch-icon" href="touch-icon-iphone.png">
    <link rel="apple-touch-icon" sizes="152x152" href="touch-icon-ipad.png">
    <link rel="apple-touch-icon" sizes="180x180" href="touch-icon-iphone-retina.png">
    <link rel="apple-touch-icon" sizes="167x167" href="touch-icon-ipad-retina.png">
    <title>MyReservation - Yelf</title>

    <!-- Required css -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <!-- Plugins css -->

    <!-- Template css -->
    <link rel="stylesheet" href="css/style.min.css">
    <script type="text/javascript" src="js/jquery-3.3.1.js">
	
</script>
<script type="text/javascript">
	$(document).ready(
			function() {
				//특정상품 삭제버튼
				$(".delBtn").on("click", function() {
					console.log("dd");
					var playYear = $(this).attr("data-pYear");
					var playMonth = $(this).attr("data-pMonth");
					var playDay = $(this).attr("data-pDay");
					var playTime = $(this).attr("data-pTime");
					var reserve_passwd = $(this).attr("data-rpw");
					location.href = "ReservationCancelServlet?playYear="
						+ playYear
						+ "&playMonth="
						+ playMonth
						+ "&playDay="
						+ playDay
						+ "&playTime="
						+ playTime
						+ "&reserve_passwd="
						+ reserve_passwd;
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
            <li class="breadcrumb-item active" aria-current="page">Blog List</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="container-fluid limited mb-5">
      <div class="row">
        <div class="col-md-8 mb-3">
          <div class="title"><span>MyReservation</span></div>
          <div class="row">
            <div class="col-12">
            <c:forEach var="i" items="${reservelist}" varStatus="status">
            <input type="hidden" name="${i.reserve_passwd }">
              <div class="media hover-style media-list">
                <a href="blog-detail.jsp">
                  <div data-cover="img/blog/blog1.jpg" data-xs-height="100px" data-sm-height="200px" data-md-height="100" data-lg-height="200px" data-xl-height="200px">
                  </div>
                </a>
                <div class="media-body">
                  <ul class="list-inline mb-1">
                    <li class="list-inline-item"><small><i class="material-icons md-1 align-text-bottom">DATE   </i> ${i.playYear }. ${i.playMonth }. ${i.playDay } </small></li>
                    <li class="list-inline-item"><small><i class="material-icons md-1 align-text-bottom">TIME   </i> ${i.playTime } </small></li>
                    <li class="list-inline-item"><small><i class="material-icons md-1 align-text-bottom">NAME   </i> ${i.username }</small></li>
                  </ul>
                  <button class="btn btn-sm btn-theme delBtn" data-pYear=${i.playYear } data-pMonth=${i.playMonth } data-pDay=${i.playDay } data-rpw="${i.reserve_passwd } " data-pTime="${i.playTime }">예약 취소</button>
                </div>
              </div>
              </c:forEach>
            </div>
          </div>
        </div>
     <jsp:include page="importJSP/modalPage.jsp"></jsp:include>
	<jsp:include page="importJSP/footer.jsp"></jsp:include>

    <!-- Copyright -->
    <div class="copyright">
      Copyright © 2018 Mimity All right reserved
    </div>
    <!-- /Copyright -->

    <a href="#top" class="back-top text-center" id="back-top">
      <i class="material-icons">expand_less</i>
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