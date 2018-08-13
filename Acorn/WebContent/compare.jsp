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
    <title>Compare Product - Mimity</title>

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
            <li class="breadcrumb-item active" aria-current="page">Compare</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="container-fluid limited mb-5">
      <div class="row">
        <div class="col">
          <div class="title"><span>Product Comparison</span></div>
          <div class="table-responsive">
            <table class="table table-bordered table-cart">
              <thead>
                <tr>
                  <td class="bg-light" colspan="4">Product Details</td>
                </tr>
              </thead>
              <tbody>
                <tr class="text-center">
                  <td>
                    <a href="detail.jsp" class="d-none d-md-inline-block"><img class="img-thumbnail" src="img/product/polo1-small.jpg" alt="product image" width="100" height="109"></a>
                    <a href="detail.jsp" class="d-block font-weight-bold text-secondary"><u>U.S. Polo Assn. Green Solid Slim Fit</u></a>
                  </td>
                  <td>
                    <a href="detail.jsp" class="d-none d-md-inline-block"><img class="img-thumbnail" src="img/product/polo2-small.jpg" alt="product image" width="100" height="109"></a>
                    <a href="detail.jsp" class="d-block font-weight-bold text-secondary"><u>U.S. Polo Assn. Red Solid Slim Fit</u></a>
                  </td>
                  <td>
                    <a href="detail.jsp" class="d-none d-md-inline-block"><img class="img-thumbnail" src="img/product/polo3-small.jpg" alt="product image" width="100" height="109"></a>
                    <a href="detail.jsp" class="d-block font-weight-bold text-secondary"><u>U.S. Polo Assn. Yellow Solid</u></a>
                  </td>
                  <td>
                    <a href="detail.jsp" class="d-none d-md-inline-block"><img class="img-thumbnail" src="img/product/polo4-small.jpg" alt="product image" width="100" height="109"></a>
                    <a href="detail.jsp" class="d-block font-weight-bold text-secondary"><u>Red Tape Blue Solid Slim Fit</u></a>
                  </td>
                </tr>
                <tr>
                  <td>
                    <strong>Price:</strong>
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item"><span class="text-danger">$13.50</span></li>
                      <li class="list-inline-item"><del class="text-muted">$15.00</del></li>
                      <li class="list-inline-item d-none d-md-inline-block"><span class="badge badge-secondary custom-badge arrowed-left">-10%</span></li>
                    </ul>
                  </td>
                  <td>
                    <strong>Price:</strong>
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item"><span class="text-danger">$13.50</span></li>
                      <li class="list-inline-item"><del class="text-muted">$15.00</del></li>
                      <li class="list-inline-item d-none d-md-inline-block"><span class="badge badge-primary custom-badge arrowed-left">-10%</span></li>
                    </ul>
                  </td>
                  <td>
                    <strong>Price:</strong>
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item"><span class="text-danger">$13.50</span></li>
                      <li class="list-inline-item"><del class="text-muted">$15.00</del></li>
                      <li class="list-inline-item d-none d-md-inline-block"><span class="badge badge-success custom-badge arrowed-left">-10%</span></li>
                    </ul>
                  </td>
                  <td>
                    <strong>Price:</strong>
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item"><span class="text-danger">$13.50</span></li>
                      <li class="list-inline-item"><del class="text-muted">$15.00</del></li>
                      <li class="list-inline-item d-none d-md-inline-block"><span class="badge badge-danger custom-badge arrowed-left">-10%</span></li>
                    </ul>
                  </td>
                </tr>
                <tr>
                  <td><strong>Model:</strong><div>Model 1</div></td>
                  <td><strong>Model:</strong><div>Model 2</div></td>
                  <td><strong>Model:</strong><div>Model 3</div></td>
                  <td><strong>Model:</strong><div>Model 4</div></td>
                </tr>
                <tr>
                  <td><strong>Brand:</strong><div>Brand 1</div></td>
                  <td><strong>Brand:</strong><div>Brand 2</div></td>
                  <td><strong>Brand:</strong><div>Brand 3</div></td>
                  <td><strong>Brand:</strong><div>Brand 4</div></td>
                </tr>
                <tr>
                  <td><strong>Availability:</strong><div>Available 1</div></td>
                  <td><strong>Availability:</strong><div>Available 2</div></td>
                  <td><strong>Availability:</strong><div>Available 3</div></td>
                  <td><strong>Availability:</strong><div>Available 4</div></td>
                </tr>
                <tr>
                  <td>
                    <strong>Rating:</strong>
                    <div class="rating">
                      <i class="material-icons md-1 align-text-bottom">star</i>
                      <i class="material-icons md-1 align-text-bottom">star</i>
                      <i class="material-icons md-1 align-text-bottom">star</i>
                      <i class="material-icons md-1 align-text-bottom">star_half</i>
                      <i class="material-icons md-1 align-text-bottom">star_border</i>
                    </div>
                    <a href="#" class="text-secondary small d-none d-md-inline-block">(1 reviews)</a>
                  </td>
                  <td>
                    <strong>Rating:</strong>
                    <div class="rating">
                      <i class="material-icons md-1 align-text-bottom">star</i>
                      <i class="material-icons md-1 align-text-bottom">star</i>
                      <i class="material-icons md-1 align-text-bottom">star</i>
                      <i class="material-icons md-1 align-text-bottom">star_half</i>
                      <i class="material-icons md-1 align-text-bottom">star_border</i>
                    </div>
                    <a href="#" class="text-secondary small d-none d-md-inline-block">(2 reviews)</a>
                  </td>
                  <td>
                    <strong>Rating:</strong>
                    <div class="rating">
                      <i class="material-icons md-1 align-text-bottom">star</i>
                      <i class="material-icons md-1 align-text-bottom">star</i>
                      <i class="material-icons md-1 align-text-bottom">star</i>
                      <i class="material-icons md-1 align-text-bottom">star_half</i>
                      <i class="material-icons md-1 align-text-bottom">star_border</i>
                    </div>
                    <a href="#" class="text-secondary small d-none d-md-inline-block">(3 reviews)</a>
                  </td>
                  <td>
                    <strong>Rating:</strong>
                    <div class="rating">
                      <i class="material-icons md-1 align-text-bottom">star</i>
                      <i class="material-icons md-1 align-text-bottom">star</i>
                      <i class="material-icons md-1 align-text-bottom">star</i>
                      <i class="material-icons md-1 align-text-bottom">star_half</i>
                      <i class="material-icons md-1 align-text-bottom">star_border</i>
                    </div>
                    <a href="#" class="text-secondary small d-none d-md-inline-block">(4 reviews)</a>
                  </td>
                </tr>
                <tr>
                  <td class="d-none d-md-table-cell"><strong>Description:</strong><div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, illum, qui1</div></td>
                  <td class="d-none d-md-table-cell"><strong>Description:</strong><div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, illum, qui2</div></td>
                  <td class="d-none d-md-table-cell"><strong>Description:</strong><div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, illum, qui3</div></td>
                  <td class="d-none d-md-table-cell"><strong>Description:</strong><div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, illum, qui4</div></td>
                </tr>
                <tr>
                  <td>
                    <div class="btn-group" role="group" aria-label="Compare action">
                      <button type="button" class="btn btn-sm btn-theme"><i class="material-icons">add_circle</i> Add to cart</button>
                      <button type="button" class="btn btn-sm btn-secondary"><i class="material-icons">cancel</i></button>
                    </div>
                  </td>
                  <td>
                    <div class="btn-group" role="group" aria-label="Compare action">
                      <button type="button" class="btn btn-sm btn-theme"><i class="material-icons">add_circle</i> Add to cart</button>
                      <button type="button" class="btn btn-sm btn-secondary"><i class="material-icons">cancel</i></button>
                    </div>
                  </td>
                  <td>
                    <div class="btn-group" role="group" aria-label="Compare action">
                      <button type="button" class="btn btn-sm btn-theme"><i class="material-icons">add_circle</i> Add to cart</button>
                      <button type="button" class="btn btn-sm btn-secondary"><i class="material-icons">cancel</i></button>
                    </div>
                  </td>
                  <td>
                    <div class="btn-group" role="group" aria-label="Compare action">
                      <button type="button" class="btn btn-sm btn-theme"><i class="material-icons">add_circle</i> Add to cart</button>
                      <button type="button" class="btn btn-sm btn-secondary"><i class="material-icons">cancel</i></button>
                    </div>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          <button class="btn btn-sm btn-secondary btn-block">Clear All</button>
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