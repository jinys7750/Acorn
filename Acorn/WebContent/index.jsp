<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
    <title>Home - YYJ</title>

    <!-- Required css -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <!-- Plugins css -->
    <link rel="stylesheet" href="css/swiper.min.css">

    <!-- Template css -->
    <link rel="stylesheet" href="css/style.min.css">
  </head>
  <body>
	<jsp:include page="importHTML/topHeader.jsp" flush="true"></jsp:include>
	<jsp:include page="importHTML/middleHeader.jsp" flush="true"></jsp:include>
	<jsp:include page="importHTML/homeSlider.jsp" flush="true"></jsp:include>
    <div class="container-fluid limited mt-5">
		<jsp:include page="importHTML/serviceBlock.jsp" flush="true"></jsp:include>
      </div>
    <jsp:include page="importHTML/modalPage.jsp" flush="true"></jsp:include>
   <jsp:include page="importHTML/footer.jsp" flush="true"></jsp:include>

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
    <script src="js/swiper.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>

    <!-- Template JS -->
    <script src="js/script.min.js"></script>

  </body>
</html>