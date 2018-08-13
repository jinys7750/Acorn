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
    <title>Shopping Cart - Mimity</title>

    <!-- Required css -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <!-- Plugins css -->
    <link rel="stylesheet" href="css/swiper.min.css">

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
            <li class="breadcrumb-item active" aria-current="page">Shopping Cart</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="container-fluid limited">
      <div class="row">
        <div class="col-12">
          <div class="title"><span>You have 4 items in your bag</span></div>
          <div class="table-responsive">
            <table class="table table-cart">
              <thead>
                <tr>
                  <th scope="col" class="w-50">Item</th>
                  <th scope="col" class="text-center">Qty</th>
                  <th scope="col" class="d-none d-sm-table-cell">Price</th>
                  <th scope="col" class="d-none d-sm-table-cell">Subtotal</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <div class="media">
                      <a href="detail.jsp" class="mr-3 d-none d-md-block"><img src="img/product/polo1-small.jpg" class="img-fluid" alt="product"></a>
                      <div class="media-body">
                        <a href="detail.jsp" class="h6">U.S. Polo Assn. Green Solid Slim Fit</a>
                        <div class="small">Size: S <span class="mx-2">|</span> Color: Green</div>
                        <div class="mb-1">
                          <span class="d-inline d-sm-none small">Price: <span class="text-theme">$13.50</span></span>
                          <span class="badge badge-success">In stock</span>
                        </div>
                        <div class="btn-group btn-group-sm">
                          <button class="btn btn-light py-0 d-none d-md-block">Move to wishlist</button>
                          <button class="btn btn-light py-0">Remove</button>
                        </div>
                      </div>
                    </div>
                  </td>
                  <td class="text-center">
                    <div class="input-group input-group-sm input-group-qty d-inline-flex mb-2">
                      <div class="input-group-prepend"><button class="btn btn-light btn-down" type="button"><i class="material-icons">keyboard_arrow_down</i></button></div>
                      <input type="text" class="form-control text-center border-light" aria-label="Quantity" value="1" data-min="1" data-max="10">
                      <div class="input-group-append"><button class="btn btn-light btn-up" type="button"><i class="material-icons">keyboard_arrow_up</i></button></div>
                    </div>
                    <div class="d-block d-sm-none">
                      <small>Subtotal </small><div class="text-theme">$13.50</div>
                    </div>
                  </td>
                  <td class="d-none d-sm-table-cell">
                    <ul class="card-text list-inline">
                      <li class="list-inline-item"><span class="text-theme">$13.50</span></li>
                      <li class="list-inline-item"><del class="text-muted small">$15.00</del></li>
                    </ul>
                  </td>
                  <td class="d-none d-sm-table-cell"><span class="text-theme">$13.50</span></td>
                </tr>
                <tr>
                  <td>
                    <div class="media">
                      <a href="detail.jsp" class="mr-3 d-none d-md-block"><img src="img/product/polo2-small.jpg" class="img-fluid" alt="product"></a>
                      <div class="media-body">
                        <a href="detail.jsp" class="h6">U.S. Polo Assn. Red Solid Slim Fit</a>
                        <div class="small">Size: M <span class="mx-2">|</span> Color: Red</div>
                        <div class="mb-1">
                          <span class="d-inline d-sm-none small">Price: <span class="text-theme">$13.50</span></span>
                          <span class="badge badge-danger">Out of stock</span>
                        </div>
                        <div class="btn-group btn-group-sm">
                          <button class="btn btn-light py-0 d-none d-md-block">Move to wishlist</button>
                          <button class="btn btn-light py-0">Remove</button>
                        </div>
                      </div>
                    </div>
                  </td>
                  <td class="text-center">
                    <div class="input-group input-group-sm input-group-qty d-inline-flex mb-2">
                      <div class="input-group-prepend"><button class="btn btn-light btn-down" type="button"><i class="material-icons">keyboard_arrow_down</i></button></div>
                      <input type="text" class="form-control text-center border-light" aria-label="Quantity" value="1" data-min="1" data-max="10">
                      <div class="input-group-append"><button class="btn btn-light btn-up" type="button"><i class="material-icons">keyboard_arrow_up</i></button></div>
                    </div>
                    <div class="d-block d-sm-none">
                      <small>Subtotal </small><div class="text-theme">$13.50</div>
                    </div>
                  </td>
                  <td class="d-none d-sm-table-cell">
                    <ul class="card-text list-inline">
                      <li class="list-inline-item"><span class="text-theme">$13.50</span></li>
                      <li class="list-inline-item"><del class="text-muted small">$15.00</del></li>
                    </ul>
                  </td>
                  <td class="d-none d-sm-table-cell"><span class="text-theme">$13.50</span></td>
                </tr>
                <tr>
                  <td>
                    <div class="media">
                      <a href="detail.jsp" class="mr-3 d-none d-md-block"><img src="img/product/polo3-small.jpg" class="img-fluid" alt="product"></a>
                      <div class="media-body">
                        <a href="detail.jsp" class="h6">U.S. Polo Assn. Yellow Solid</a>
                        <div class="small">Size: L <span class="mx-2">|</span> Color: Yellow</div>
                        <div class="mb-1">
                          <span class="d-inline d-sm-none small">Price: <span class="text-theme">$13.50</span></span>
                          <span class="badge badge-success">In stock</span>
                        </div>
                        <div class="btn-group btn-group-sm">
                          <button class="btn btn-light py-0 d-none d-md-block">Move to wishlist</button>
                          <button class="btn btn-light py-0">Remove</button>
                        </div>
                      </div>
                    </div>
                  </td>
                  <td class="text-center">
                    <div class="input-group input-group-sm input-group-qty d-inline-flex mb-2">
                      <div class="input-group-prepend"><button class="btn btn-light btn-down" type="button"><i class="material-icons">keyboard_arrow_down</i></button></div>
                      <input type="text" class="form-control text-center border-light" aria-label="Quantity" value="1" data-min="1" data-max="10">
                      <div class="input-group-append"><button class="btn btn-light btn-up" type="button"><i class="material-icons">keyboard_arrow_up</i></button></div>
                    </div>
                    <div class="d-block d-sm-none">
                      <small>Subtotal </small><div class="text-theme">$13.50</div>
                    </div>
                  </td>
                  <td class="d-none d-sm-table-cell">
                    <ul class="card-text list-inline">
                      <li class="list-inline-item"><span class="text-theme">$13.50</span></li>
                      <li class="list-inline-item"><del class="text-muted small">$15.00</del></li>
                    </ul>
                  </td>
                  <td class="d-none d-sm-table-cell"><span class="text-theme">$13.50</span></td>
                </tr>
                <tr>
                  <td>
                    <div class="media">
                      <a href="detail.jsp" class="mr-3 d-none d-md-block"><img src="img/product/polo4-small.jpg" class="img-fluid" alt="product"></a>
                      <div class="media-body">
                        <a href="detail.jsp" class="h6">Red Tape Blue Solid Slim Fit</a>
                        <div class="small">Size: XL <span class="mx-2">|</span> Color: Blue</div>
                        <div class="mb-1">
                          <span class="d-inline d-sm-none small">Price: <span class="text-theme">$13.50</span></span>
                          <span class="badge badge-success">In stock</span>
                        </div>
                        <div class="btn-group btn-group-sm">
                          <button class="btn btn-light py-0 d-none d-md-block">Move to wishlist</button>
                          <button class="btn btn-light py-0">Remove</button>
                        </div>
                      </div>
                    </div>
                  </td>
                  <td class="text-center">
                    <div class="input-group input-group-sm input-group-qty d-inline-flex mb-2">
                      <div class="input-group-prepend"><button class="btn btn-light btn-down" type="button"><i class="material-icons">keyboard_arrow_down</i></button></div>
                      <input type="text" class="form-control text-center border-light" aria-label="Quantity" value="1" data-min="1" data-max="10">
                      <div class="input-group-append"><button class="btn btn-light btn-up" type="button"><i class="material-icons">keyboard_arrow_up</i></button></div>
                    </div>
                    <div class="d-block d-sm-none">
                      <small>Subtotal </small><div class="text-theme">$13.50</div>
                    </div>
                  </td>
                  <td class="d-none d-sm-table-cell">
                    <ul class="card-text list-inline">
                      <li class="list-inline-item"><span class="text-theme">$13.50</span></li>
                      <li class="list-inline-item"><del class="text-muted small">$15.00</del></li>
                    </ul>
                  </td>
                  <td class="d-none d-sm-table-cell"><span class="text-theme">$13.50</span></td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <div class="row justify-content-between">
        <div class="col-12 col-sm-6 col-md-5 col-lg-4 col-xl-3 mb-2">
          <div class="input-group input-group-sm">
            <input type="text" class="form-control" placeholder="Coupon code" aria-label="Coupon code">
            <div class="input-group-append">
              <button class="btn btn-theme" type="button">Apply</button>
            </div>
          </div>
        </div>
        <div class="col-12 col-md-6 col-lg-5 col-xl-4">
          <div class="d-flex">
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
            <div>Order Total</div>
            <div class="ml-auto text-theme h5 mb-0">$54.00</div>
          </div>
          <hr>
        </div>
        <div class="col-12 text-right">
          <div class="btn-group" role="group" aria-label="Basic example">
            <a href="shop.jsp" class="d-none d-sm-inline-block btn btn-outline-theme">Continue Shopping</a>
            <a href="checkout.jsp" class="btn btn-theme rounded-xs">PROCEED TO CHECKOUT</a>
          </div>
        </div>
      </div>
      <div class="row my-5">
        <div class="col-12"><div class="title"><span>Recently viewed items</span></div></div>
        <div class="col-12">
          <div class="swiper-nav">
            <div class="swiper-nav-prev" id="newInPrev"><i class="material-icons">keyboard_arrow_left</i></div>
            <div class="swiper-nav-next" id="newInNext"><i class="material-icons">keyboard_arrow_right</i></div>
          </div>
          <div class="swiper-container swiper-container-have-hover" id="newIn-slider">
            <div class="swiper-wrapper">
              <div class="card card-product swiper-slide">
                <a href="detail.jsp"><img class="card-img-top" src="img/product/polo1.jpg" alt="Card image cap"></a>
                <div class="card-body">
                  <div class="card-title"><a href="detail.jsp" title="Burberry The Plymouth Duffle Coat">Burberry The Plymouth Duffle Coat</a></div>
                  <ul class="card-text list-inline pr-2">
                    <li class="list-inline-item"><span class="price">$13.50</span></li>
                    <li class="list-inline-item"><del class="text-muted small">$15.00</del></li>
                    <li class="list-inline-item d-none d-sm-inline-block"><span class="badge badge-secondary">-10%</span></li>
                  </ul>
                  <div class="action">
                    <div class="btn-group btn-group-sm" role="group" aria-label="Action">
                      <button class="btn btn-outline-theme show-quickview"><i class="material-icons">zoom_in</i></button>
                      <button class="btn btn-theme">ADD TO CART</button>
                      <button class="btn btn-outline-theme"><i class="material-icons">favorite_border</i></button>
                    </div>
                  </div>
                  <div class="small-action d-block d-md-none">
                    <div class="btn-group dropup">
                      <span role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">&#10247;</span>
                      <div class="dropdown-menu dropdown-menu-right fadeIn">
                        <a class="dropdown-item" href="#"><i class="material-icons">add_shopping_cart</i> BUY</a>
                        <a class="dropdown-item" href="#"><i class="material-icons">favorite_border</i> Wishlist</a>
                        <a class="dropdown-item" href="#"><i class="material-icons">compare_arrows</i> Compare</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card card-product swiper-slide">
                <a href="detail.jsp"><img class="card-img-top" src="img/product/polo2.jpg" alt="Card image cap"></a>
                <div class="card-body">
                  <div class="card-title"><a href="detail.jsp" title="Fendi Bugs Sweater">Fendi Bugs Sweater</a></div>
                  <ul class="card-text list-inline">
                    <li class="list-inline-item"><span class="price">$13.50</span></li>
                    <li class="list-inline-item"><del class="text-muted small">$15.00</del></li>
                    <li class="list-inline-item d-none d-sm-inline-block"><span class="badge badge-secondary">-10%</span></li>
                  </ul>
                  <div class="action">
                    <div class="btn-group btn-group-sm" role="group" aria-label="Action">
                      <button class="btn btn-outline-theme show-quickview"><i class="material-icons">zoom_in</i></button>
                      <button class="btn btn-theme">ADD TO CART</button>
                      <button class="btn btn-outline-theme"><i class="material-icons">favorite_border</i></button>
                    </div>
                  </div>
                  <div class="small-action d-block d-md-none">
                    <div class="btn-group dropup">
                      <span role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">&#10247;</span>
                      <div class="dropdown-menu dropdown-menu-right fadeIn">
                        <a class="dropdown-item" href="#"><i class="material-icons">add_shopping_cart</i> BUY</a>
                        <a class="dropdown-item" href="#"><i class="material-icons">favorite_border</i> Wishlist</a>
                        <a class="dropdown-item" href="#"><i class="material-icons">compare_arrows</i> Compare</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card card-product swiper-slide">
                <a href="detail.jsp"><img class="card-img-top" src="img/product/polo3.jpg" alt="Card image cap"></a>
                <div class="card-body">
                  <div class="card-title"><a href="detail.jsp" title="Alexander McQueen Classic Piqué Polo Shirt">Alexander McQueen Classic Piqué Polo Shirt</a></div>
                  <ul class="card-text list-inline">
                    <li class="list-inline-item"><span class="price">$13.50</span></li>
                    <li class="list-inline-item"><del class="text-muted small">$15.00</del></li>
                    <li class="list-inline-item d-none d-sm-inline-block"><span class="badge badge-secondary">-10%</span></li>
                  </ul>
                  <div class="action">
                    <div class="btn-group btn-group-sm" role="group" aria-label="Action">
                      <button class="btn btn-outline-theme show-quickview"><i class="material-icons">zoom_in</i></button>
                      <button class="btn btn-theme">ADD TO CART</button>
                      <button class="btn btn-outline-theme"><i class="material-icons">favorite_border</i></button>
                    </div>
                  </div>
                  <div class="small-action d-block d-md-none">
                    <div class="btn-group dropup">
                      <span role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">&#10247;</span>
                      <div class="dropdown-menu dropdown-menu-right fadeIn">
                        <a class="dropdown-item" href="#"><i class="material-icons">add_shopping_cart</i> BUY</a>
                        <a class="dropdown-item" href="#"><i class="material-icons">favorite_border</i> Wishlist</a>
                        <a class="dropdown-item" href="#"><i class="material-icons">compare_arrows</i> Compare</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card card-product swiper-slide">
                <a href="detail.jsp"><img class="card-img-top" src="img/product/polo4.jpg" alt="Card image cap"></a>
                <div class="card-body">
                  <div class="card-title"><a href="detail.jsp" title="MCQ Alexander McQueen Swallow Badge Polo Shirt">MCQ Alexander McQueen Swallow Badge Polo Shirt</a></div>
                  <ul class="card-text list-inline">
                    <li class="list-inline-item"><span class="price">$13.50</span></li>
                    <li class="list-inline-item"><del class="text-muted small">$15.00</del></li>
                    <li class="list-inline-item d-none d-sm-inline-block"><span class="badge badge-secondary">-10%</span></li>
                  </ul>
                  <div class="action">
                    <div class="btn-group btn-group-sm" role="group" aria-label="Action">
                      <button class="btn btn-outline-theme show-quickview"><i class="material-icons">zoom_in</i></button>
                      <button class="btn btn-theme">ADD TO CART</button>
                      <button class="btn btn-outline-theme"><i class="material-icons">favorite_border</i></button>
                    </div>
                  </div>
                  <div class="small-action d-block d-md-none">
                    <div class="btn-group dropup">
                      <span role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">&#10247;</span>
                      <div class="dropdown-menu dropdown-menu-right fadeIn">
                        <a class="dropdown-item" href="#"><i class="material-icons">add_shopping_cart</i> BUY</a>
                        <a class="dropdown-item" href="#"><i class="material-icons">favorite_border</i> Wishlist</a>
                        <a class="dropdown-item" href="#"><i class="material-icons">compare_arrows</i> Compare</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card card-product swiper-slide">
                <a href="detail.jsp"><img class="card-img-top" src="img/product/polo5.jpg" alt="Card image cap"></a>
                <div class="card-body">
                  <div class="card-title"><a href="detail.jsp" title="MCQ Alexander McQueen Mini Swallow Sweatshirt">MCQ Alexander McQueen Mini Swallow Sweatshirt</a></div>
                  <ul class="card-text list-inline">
                    <li class="list-inline-item"><span class="price">$13.50</span></li>
                    <li class="list-inline-item"><del class="text-muted small">$15.00</del></li>
                    <li class="list-inline-item d-none d-sm-inline-block"><span class="badge badge-secondary">-10%</span></li>
                  </ul>
                  <div class="action">
                    <div class="btn-group btn-group-sm" role="group" aria-label="Action">
                      <button class="btn btn-outline-theme show-quickview"><i class="material-icons">zoom_in</i></button>
                      <button class="btn btn-theme">ADD TO CART</button>
                      <button class="btn btn-outline-theme"><i class="material-icons">favorite_border</i></button>
                    </div>
                  </div>
                  <div class="small-action d-block d-md-none">
                    <div class="btn-group dropup">
                      <span role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">&#10247;</span>
                      <div class="dropdown-menu dropdown-menu-right fadeIn">
                        <a class="dropdown-item" href="#"><i class="material-icons">add_shopping_cart</i> BUY</a>
                        <a class="dropdown-item" href="#"><i class="material-icons">favorite_border</i> Wishlist</a>
                        <a class="dropdown-item" href="#"><i class="material-icons">compare_arrows</i> Compare</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card card-product swiper-slide">
                <a href="detail.jsp"><img class="card-img-top" src="img/product/vneck1.jpg" alt="Card image cap"></a>
                <div class="card-body">
                  <div class="card-title"><a href="detail.jsp" title="Burberry Button Down Collar Check Stretch Cotton Blend Shirt">Burberry Button Down Collar Check Stretch Cotton Blend Shirt</a></div>
                  <ul class="card-text list-inline">
                    <li class="list-inline-item"><span class="price">$13.50</span></li>
                    <li class="list-inline-item"><del class="text-muted small">$15.00</del></li>
                    <li class="list-inline-item d-none d-sm-inline-block"><span class="badge badge-secondary">-10%</span></li>
                  </ul>
                  <div class="action">
                    <div class="btn-group btn-group-sm" role="group" aria-label="Action">
                      <button class="btn btn-outline-theme show-quickview"><i class="material-icons">zoom_in</i></button>
                      <button class="btn btn-theme">ADD TO CART</button>
                      <button class="btn btn-outline-theme"><i class="material-icons">favorite_border</i></button>
                    </div>
                  </div>
                  <div class="small-action d-block d-md-none">
                    <div class="btn-group dropup">
                      <span role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">&#10247;</span>
                      <div class="dropdown-menu dropdown-menu-right fadeIn">
                        <a class="dropdown-item" href="#"><i class="material-icons">add_shopping_cart</i> BUY</a>
                        <a class="dropdown-item" href="#"><i class="material-icons">favorite_border</i> Wishlist</a>
                        <a class="dropdown-item" href="#"><i class="material-icons">compare_arrows</i> Compare</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card card-product swiper-slide">
                <a href="detail.jsp"><img class="card-img-top" src="img/product/polo1.jpg" alt="Card image cap"></a>
                <div class="card-body">
                  <div class="card-title"><a href="detail.jsp" title="Burberry The Plymouth Duffle Coat">Burberry The Plymouth Duffle Coat</a></div>
                  <ul class="card-text list-inline pr-2">
                    <li class="list-inline-item"><span class="price">$13.50</span></li>
                    <li class="list-inline-item"><del class="text-muted small">$15.00</del></li>
                    <li class="list-inline-item d-none d-sm-inline-block"><span class="badge badge-secondary">-10%</span></li>
                  </ul>
                  <div class="action">
                    <div class="btn-group btn-group-sm" role="group" aria-label="Action">
                      <button class="btn btn-outline-theme show-quickview"><i class="material-icons">zoom_in</i></button>
                      <button class="btn btn-theme">ADD TO CART</button>
                      <button class="btn btn-outline-theme"><i class="material-icons">favorite_border</i></button>
                    </div>
                  </div>
                  <div class="small-action d-block d-md-none">
                    <div class="btn-group dropup">
                      <span role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">&#10247;</span>
                      <div class="dropdown-menu dropdown-menu-right fadeIn">
                        <a class="dropdown-item" href="#"><i class="material-icons">add_shopping_cart</i> BUY</a>
                        <a class="dropdown-item" href="#"><i class="material-icons">favorite_border</i> Wishlist</a>
                        <a class="dropdown-item" href="#"><i class="material-icons">compare_arrows</i> Compare</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>        </div>
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
    <script src="js/swiper.min.js"></script>

    <!-- Template JS -->
    <script src="js/script.min.js"></script>

  </body>
</html>