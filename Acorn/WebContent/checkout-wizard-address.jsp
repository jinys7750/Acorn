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
    <title>Checkout - Mimity</title>

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
            <li class="breadcrumb-item active" aria-current="page">Checkout</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="container-fluid limited mb-5">
      <div class="row">
        <div class="col-12">
          <ul class="wizard">
            <li class="active">1. Address</li>
            <li><a href="checkout-wizard-shipping.jsp">2. Shipping</a></li>
            <li><a href="checkout-wizard-payment.jsp">3. Payment</a></li>
            <li><a href="checkout-wizard-review.jsp">4. Review</a></li>
          </ul>
        </div>
        <div class="col-sm-12 col-md-8">
          <h4>Shipping Address</h4>
          <hr>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="inputFirstName">First Name *</label>
              <input type="text" class="form-control" id="inputFirstName">
            </div>
            <div class="form-group col-md-6">
              <label for="inputLastName">Last Name *</label>
              <input type="text" class="form-control" id="inputLastName">
            </div>
            <div class="form-group col-md-6">
              <label for="inputAddress">Address Line 1 *</label>
              <input type="text" class="form-control" id="inputAddress">
            </div>
            <div class="form-group col-md-6">
              <label for="inputAddress2">Address Line 2 (optional)</label>
              <input type="text" class="form-control" id="inputAddress2">
            </div>
            <div class="form-group col-md-6">
              <label for="inputCountry">Country *</label>
              <input type="text" class="form-control" id="inputCountry">
            </div>
            <div class="form-group col-md-6">
              <label for="inputZip">Zip/Postal Code *</label>
              <input type="text" class="form-control" id="inputZip">
            </div>
            <div class="form-group col-md-6">
              <label for="inputCity">City *</label>
              <input type="text" class="form-control" id="inputCity">
            </div>
            <div class="form-group col-md-6">
              <label for="inputRegion">Region *</label>
              <input type="text" class="form-control" id="inputRegion">
            </div>
            <div class="form-group col-md-6">
              <label for="inputPhone">Phone Number *</label>
              <input type="text" class="form-control" id="inputPhone">
            </div>
            <div class="form-group col-md-6">
              <label for="inputEmail">Email Address *</label>
              <input type="email" class="form-control" id="inputEmail">
            </div>
            <div class="form-group col-12 text-right">
              <a class="btn btn-theme" href="checkout-wizard-shipping.jsp" role="button">Next <i class="material-icons">arrow_forward</i></a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <h5>ORDER SUMMARY</h5>
          <div class="rounded p-2 bg-light">
            <div class="media mb-2 border-bottom">
              <div class="media-body">
                <a href="detail.jsp">U.S. Polo Assn. Green Solid Slim Fit</a>
                <div class="small text-muted">Size: S <span class="mx-2">|</span> Color: Green</div>
                <div class="small text-muted">Price: $13.50 <span class="mx-2">|</span> Qty: 1 <span class="mx-2">|</span> Subtotal: $13.50</div>
              </div>
            </div>
            <div class="media mb-2 border-bottom">
              <div class="media-body">
                <a href="detail.jsp">U.S. Polo Assn. Red Solid Slim Fit</a>
                <div class="small text-muted">Size: M <span class="mx-2">|</span> Color: Red</div>
                <div class="small text-muted">Price: $13.50 <span class="mx-2">|</span> Qty: 1 <span class="mx-2">|</span> Subtotal: $13.50</div>
              </div>
            </div>
            <div class="media mb-2 border-bottom">
              <div class="media-body">
                <a href="detail.jsp">U.S. Polo Assn. Yellow Solid</a>
                <div class="small text-muted">Size: L <span class="mx-2">|</span> Color: Yellow</div>
                <div class="small text-muted">Price: $13.50 <span class="mx-2">|</span> Qty: 1 <span class="mx-2">|</span> Subtotal: $13.50</div>
              </div>
            </div>
            <div class="media mb-2">
              <div class="media-body">
                <a href="detail.jsp">Red Tape Blue Solid Slim Fit</a>
                <div class="small text-muted">Size: XL <span class="mx-2">|</span> Color: Blue</div>
                <div class="small text-muted">Price: $13.50 <span class="mx-2">|</span> Qty: 1 <span class="mx-2">|</span> Subtotal: $13.50</div>
              </div>
            </div>
          </div>
          <div class="d-flex mt-3">
            <div>Bag Total</div>
            <div class="ml-auto font-weight-bold">$60.00</div>
          </div>
          <div class="d-flex">
            <div>Bag Discount</div>
            <div class="ml-auto font-weight-bold">$6.00</div>
          </div>
          <div class="d-flex">
            <div>Coupon Discount</div>
            <div class="ml-auto font-weight-bold">-</div>
          </div>
          <hr>
          <div class="d-flex">
            <div class="font-weight-bold h6">Order Total</div>
            <div class="ml-auto text-theme h5">$54.00</div>
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