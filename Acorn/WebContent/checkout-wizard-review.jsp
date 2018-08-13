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
            <li class="done"><a href="checkout-wizard-shipping.jsp">2. Shipping</a></li>
            <li class="done"><a href="checkout-wizard-payment.jsp">3. Payment</a></li>
            <li class="active">4. Review</li>
          </ul>
        </div>
        <div class="col-sm-12 col-md-8">
          <h4>Review Your Order</h4>
          <div class="table-responsive mt-3">
            <table class="table table-cart table-sm">
              <thead>
                <tr>
                  <th scope="col" class="w-75">Item</th>
                  <th scope="col">Subtotal</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <div class="media">
                      <a href="detail.jsp" class="mr-3"><img src="img/product/polo1-small.jpg" class="img-fluid" alt="product"></a>
                      <div class="media-body">
                        <a href="detail.jsp" class="h6">U.S. Polo Assn. Green Solid Slim Fit</a>
                        <div class="small">Size: S</div>
                        <div class="small">Color: Green</div>
                        <div class="small">Qty: 1</div>
                      </div>
                    </div>
                  </td>
                  <td><span class="text-theme">$13.50</span></td>
                </tr>
                <tr>
                  <td>
                    <div class="media">
                      <a href="detail.jsp" class="mr-3"><img src="img/product/polo2-small.jpg" class="img-fluid" alt="product"></a>
                      <div class="media-body">
                        <a href="detail.jsp" class="h6">U.S. Polo Assn. Red Solid Slim Fit</a>
                        <div class="small">Size: M</div>
                        <div class="small">Color: Red</div>
                        <div class="small">Qty: 1</div>
                      </div>
                    </div>
                  </td>
                  <td><span class="text-theme">$13.50</span></td>
                </tr>
                <tr>
                  <td>
                    <div class="media">
                      <a href="detail.jsp" class="mr-3"><img src="img/product/polo3-small.jpg" class="img-fluid" alt="product"></a>
                      <div class="media-body">
                        <a href="detail.jsp" class="h6">U.S. Polo Assn. Yellow Solid</a>
                        <div class="small">Size: L</div>
                        <div class="small">Color: Yellow</div>
                        <div class="small">Qty: 1</div>
                      </div>
                    </div>
                  </td>
                  <td><span class="text-theme">$13.50</span></td>
                </tr>
                <tr>
                  <td>
                    <div class="media">
                      <a href="detail.jsp" class="mr-3"><img src="img/product/polo4-small.jpg" class="img-fluid" alt="product"></a>
                      <div class="media-body">
                        <a href="detail.jsp" class="h6">Red Tape Blue Solid Slim Fit</a>
                        <div class="small">Size: XL</div>
                        <div class="small">Color: Blue</div>
                        <div class="small">Qty: 1</div>
                      </div>
                    </div>
                  </td>
                  <td><span class="text-theme">$13.50</span></td>
                </tr>
              </tbody>
            </table>
          </div>
          <div class="text-center">
            <a class="btn btn-outline-theme btn-sm" href="cart.jsp" role="button"><i class="material-icons">mode_edit</i> Edit Cart</a>
          </div>
        </div>
        <div class="col-md-4">
          <h5 class="mt-5">Shipping to:</h5>
          <div>John Thor</div>
          <div>212 Lorem Ipsum. Dolor Sit, Amet</div>
          <div>client@example.com</div>
          <div>+123-456-789</div>
          <hr>
          <h5>Payment Method</h5>
          <div>Credit Card: **** **** **** 4567</div>
          <hr>
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
            <h5 class="mb-0">Order Total</h5>
            <h5 class="mb-0 ml-auto text-theme">$54.00</h5>
          </div>
          <hr>
          <div class="text-center"><button class="btn btn-theme">SUBMIT MY ORDER</button></div>
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