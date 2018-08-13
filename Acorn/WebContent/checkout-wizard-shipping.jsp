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
            <li class="done"><a href="checkout-wizard-address.jsp">1. Address</a></li>
            <li class="active">2. Shipping</li>
            <li><a href="checkout-wizard-payment.jsp">3. Payment</a></li>
            <li><a href="checkout-wizard-review.jsp">4. Review</a></li>
          </ul>
        </div>
        <div class="col-sm-12 col-md-8">
          <h4>Choose Shipping Method</h4>
          <hr>
          <div class="custom-control custom-radio">
            <input type="radio" id="shippingOption1" name="shipping-option" class="custom-control-input" checked="checked">
            <label class="custom-control-label" for="shippingOption1">Standard Delivery</label>
            <span class="float-right font-weight-bold">FREE</span>
          </div>
          <div class="ml-4 mb-2 small">(3-7 business days)</div>
          <div class="custom-control custom-radio">
            <input type="radio" id="shippingOption2" name="shipping-option" class="custom-control-input">
            <label class="custom-control-label" for="shippingOption2">Express Delivery</label>
            <span class="float-right font-weight-bold">$10.00</span>
          </div>
          <div class="ml-4 mb-2 small">(2-4 business days)</div>
          <div class="custom-control custom-radio">
            <input type="radio" id="shippingOption3" name="shipping-option" class="custom-control-input">
            <label class="custom-control-label" for="shippingOption3">Next Business day</label>
            <span class="float-right font-weight-bold">$20.00</span>
          </div>
          <div class="d-flex justify-content-between my-5">
            <a class="btn btn-outline-theme" href="checkout-wizard-address.jsp" role="button"><i class="material-icons">arrow_back</i> Back</a>
            <a class="btn btn-theme" href="checkout-wizard-payment.jsp" role="button">Next <i class="material-icons">arrow_forward</i></a>
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
          <hr class="my-1">
          <div class="d-flex">
            <div>Coupon Discount</div>
            <div class="ml-auto font-weight-bold">-</div>
          </div>
          <div class="d-flex">
            <div>Shipping Cost</div>
            <div class="ml-auto font-weight-bold">FREE</div>
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