<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <title>Change Password - Mimity</title>

    <!-- Required css -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

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
            <li class="breadcrumb-item"><a href="account-profile.jsp">My Account</a></li>
            <li class="breadcrumb-item active" aria-current="page">Change Password</li>
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
                  <h5 class="user-name">John Thor</h5>
                  <small class="card-text text-muted">Joined Dec 31, 2017</small>
                  <div class="card-text small text-muted">Points: 100</div>
                </div>
              </div>
            </div>
            <div class="list-group list-group-flush">
              <a href="account-profile.jsp" class="list-group-item list-group-item-action"><i class="material-icons">person</i> Profile</a>
              <a href="account-order.jsp" class="list-group-item list-group-item-action"><i class="material-icons">shopping_cart</i> Orders</a>
              <a href="account-address.jsp" class="list-group-item list-group-item-action"><i class="material-icons">location_on</i> Addresses</a>
              <a href="account-wishlist.jsp" class="list-group-item list-group-item-action"><i class="material-icons">favorite</i> Wishlist<span class="badge badge-secondary badge-pill float-right mt-1">3</span></a>
              <a href="account-password.jsp" class="list-group-item list-group-item-action active"><i class="material-icons">vpn_key</i> Change Password</a>
              <a href="ind" class="list-group-item list-group-item-action d-none d-md-block"><i class="material-icons">exit_to_app</i> Logout</a>
            </div>
          </div>
        </div>
        <div class="col-lg-9 col-md-8">
          <div class="title"><span>Change Password</span></div>
          <form>
            <div class="form-row">
              <div class="form-group col-md-6">
                <label for="InputOldPassword">Old Password</label>
                <input type="Password" class="form-control" id="InputOldPassword" placeholder="Enter Old Password">
              </div>
            </div>
            <div class="form-row">
              <div class="form-group col-md-6">
                <label for="InputNewPassword">New Password</label>
                <input type="Password" class="form-control" id="InputNewPassword" placeholder="Enter New Password">
              </div>
              <div class="form-group col-md-6">
                <label for="InputNewPassword2">Confirm Password</label>
                <input type="Password" class="form-control" id="InputNewPassword2" placeholder="Enter New Password">
              </div>
            </div>
            <button type="submit" class="btn btn-theme my-1"><i class="material-icons">save</i> Save</button>
          </form>
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