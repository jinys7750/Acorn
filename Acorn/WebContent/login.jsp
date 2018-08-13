<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE jsp>
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
    <title>Login - Mimity</title>

    <!-- Required css -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <!-- Plugins css -->

    <!-- Template css -->
    <link rel="stylesheet" href="css/style.min.css">
  </head>
  <body class="body-pattern">
<jsp:include page="importJSP/topHeader.jsp"></jsp:include>
	<jsp:include page="importJSP/middleHeader.jsp"></jsp:include>
    <div class="container-fluid limited mb-5">
      <div class="row justify-content-center mt-4">
        <div class="col-xs-12 col-sm-auto">
          <div class="card">
            <div class="card-body pt-2">
              <div class="text-center">
                <div class="d-inline-block border border-secondary rounded-circle text-center m-auto">
                  <h1 class="px-2"><i class="material-icons align-middle md-3">person</i></h1>
                </div>
              </div>
              <h5 class="card-title text-center">Please Enter Your Information</h5>
              <form>
                <div class="form-group">
                  <label for="InputUsername">Username</label>
                  <input type="text" class="form-control" id="InputUsername" placeholder="Enter Username">
                </div>
                <div class="form-group">
                  <label for="InputPassword">Password</label>
                  <input type="password" class="form-control" id="InputPassword" placeholder="Password">
                </div>
                <div class="custom-control custom-checkbox">
                  <input type="checkbox" class="custom-control-input" id="rememberMe">
                  <label class="custom-control-label" for="rememberMe">Remember Me</label>
                </div>
                <button type="submit" class="btn btn-theme btn-sm btn-block my-3">Enter</button>
                <div class="form-group mb-0">
                  <a href="register.jsp" class="text-secondary"><small><u>Register</u></small></a>
                  <a href="#" class="float-right text-secondary"><small><u>Forgot Password ?</u></small></a>
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