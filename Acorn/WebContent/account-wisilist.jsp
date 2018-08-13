<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
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
<title>My Wishlist - Mimity</title>

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
					<li class="breadcrumb-item"><a href="account-profile.jsp">My
							Account</a></li>
					<li class="breadcrumb-item active" aria-current="page">My
						Wishlist</li>
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
						<a href="account-profile.jsp"
							class="list-group-item list-group-item-action"><i
							class="material-icons">person</i> Profile</a> <a
							href="account-order.jsp"
							class="list-group-item list-group-item-action"><i
							class="material-icons">shopping_cart</i> Orders</a> <a
							href="account-address.jsp"
							class="list-group-item list-group-item-action"><i
							class="material-icons">location_on</i> Addresses</a> <a
							href="account-wishlist.jsp"
							class="list-group-item list-group-item-action active"><i
							class="material-icons">favorite</i> Wishlist<span
							class="badge badge-light badge-pill float-right mt-1">3</span></a> <a
							href="account-password.jsp"
							class="list-group-item list-group-item-action"><i
							class="material-icons">vpn_key</i> Change Password</a> <a
							href="index.jsp"
							class="list-group-item list-group-item-action d-none d-md-block"><i
							class="material-icons">exit_to_app</i> Logout</a>
					</div>
				</div>
			</div>
			<div class="col-lg-9 col-md-8">
				<div class="title">
					<span>My Wishlist</span>
				</div>
				<div class="row mb-3 border pt-2 px-3 rounded no-gutters">
					<div class="mb-2 col-12 col-sm-6 text-center text-sm-left">
						<span>Date</span> <select name="sortbydate"
							class="custom-select ml-2 w-auto custom-select-sm">
							<option value="newest">Newest</option>
							<option value="oldest">Oldest</option>
						</select>
					</div>
					<div class="mb-2 col-12 col-sm-6 text-center text-sm-right">
						<span>Availability</span> <select name="availability"
							class="custom-select ml-2 w-auto custom-select-sm">
							<option value="all">All</option>
							<option value="in-stock">In Stock</option>
							<option value="out-stock">Out of Stock</option>
						</select>
					</div>
				</div>
				<div class="table-responsive">
					<table class="table table-cart table-wishlist">
						<thead>
							<tr>
								<th scope="col" class="w-50">Item</th>
								<th scope="col" class="d-none d-sm-table-cell">Added</th>
								<th scope="col" class="d-none d-sm-table-cell">Price</th>
								<th scope="col" class="text-center">Action</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<div class="media">
										<a href="detail.jsp" class="mr-3 d-none d-md-block"><img
											src="img/product/polo1-small.jpg" class="img-fluid"
											alt="product"></a>
										<div class="media-body">
											<a href="detail.jsp" class="h6">U.S. Polo Assn. Green
												Solid Slim Fit</a>
											<div class="mb-1">
												<span class="d-inline d-sm-none small">Price: <span
													class="text-theme">$13.50</span></span>
												<div class="small mt-2 d-none d-sm-block">Availability:</div>
												<span class="badge badge-success custom-badge arrowed-right">In
													stock</span>
											</div>
											<div class="small d-block d-sm-none">Added: March 18,
												2018</div>
										</div>
									</div>
								</td>
								<td class="d-none d-sm-table-cell">March 18, 2018</td>
								<td class="d-none d-sm-table-cell">
									<ul class="card-text list-inline">
										<li class="list-inline-item"><span class="text-theme">$13.50</span></li>
										<li class="list-inline-item"><del
												class="text-muted small">$15.00</del></li>
									</ul>
								</td>
								<td class="text-center">
									<div class="btn-group" role="group" aria-label="Compare action">
										<button type="button" class="btn btn-sm btn-theme">BUY
											NOW</button>
										<button type="button" class="btn btn-sm btn-outline-theme">
											<i class="material-icons">close</i>
										</button>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="media">
										<a href="detail.jsp" class="mr-3 d-none d-md-block"><img
											src="img/product/polo2-small.jpg" class="img-fluid"
											alt="product"></a>
										<div class="media-body">
											<a href="detail.jsp" class="h6">U.S. Polo Assn. Red
												Solid Slim Fit</a>
											<div class="mb-1">
												<span class="d-inline d-sm-none small">Price: <span
													class="text-theme">$13.50</span></span>
												<div class="small mt-2 d-none d-sm-block">Availability:</div>
												<span class="badge badge-danger custom-badge arrowed-right">Out
													of stock</span>
											</div>
											<div class="small d-block d-sm-none">Added: March 18,
												2018</div>
										</div>
									</div>
								</td>
								<td class="d-none d-sm-table-cell">March 18, 2018</td>
								<td class="d-none d-sm-table-cell">
									<ul class="card-text list-inline">
										<li class="list-inline-item"><span class="text-theme">$13.50</span></li>
										<li class="list-inline-item"><del
												class="text-muted small">$15.00</del></li>
									</ul>
								</td>
								<td class="text-center">
									<div class="btn-group" role="group" aria-label="Compare action">
										<button type="button" class="btn btn-sm btn-theme"
											disabled="disabled">BUY NOW</button>
										<button type="button" class="btn btn-sm btn-outline-theme">
											<i class="material-icons">close</i>
										</button>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="media">
										<a href="detail.jsp" class="mr-3 d-none d-md-block"><img
											src="img/product/polo3-small.jpg" class="img-fluid"
											alt="product"></a>
										<div class="media-body">
											<a href="detail.jsp" class="h6">U.S. Polo Assn. Yellow
												Solid</a>
											<div class="mb-1">
												<span class="d-inline d-sm-none small">Price: <span
													class="text-theme">$13.50</span></span>
												<div class="small mt-2 d-none d-sm-block">Availability:</div>
												<span class="badge badge-success custom-badge arrowed-right">In
													stock</span>
											</div>
											<div class="small d-block d-sm-none">Added: March 18,
												2018</div>
										</div>
									</div>
								</td>
								<td class="d-none d-sm-table-cell">March 18, 2018</td>
								<td class="d-none d-sm-table-cell">
									<ul class="card-text list-inline">
										<li class="list-inline-item"><span class="text-theme">$13.50</span></li>
										<li class="list-inline-item"><del
												class="text-muted small">$15.00</del></li>
									</ul>
								</td>
								<td class="text-center">
									<div class="btn-group" role="group" aria-label="Compare action">
										<button type="button" class="btn btn-sm btn-theme">BUY
											NOW</button>
										<button type="button" class="btn btn-sm btn-outline-theme">
											<i class="material-icons">close</i>
										</button>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="text-center">
					<button class="btn btn-outline-theme">
						<i class="material-icons">shopping_cart</i> Add All to Cart
					</button>
				</div>
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
	<script src="js/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="js/typeahead.bundle.min.js"></script>

	<!-- Plugins js -->

	<!-- Template JS -->
	<script src="js/script.min.js"></script>

</body>
</html>