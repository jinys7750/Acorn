
<!-- Middle Header -->
<div class="middle-header" id="middle-header">
	<div class="container-fluid limited position-relative">

		<div class="input-search-wrapper invisible">
			<form action="#" method="post">
				<input type="text" class="form-control" id="input-search"
					placeholder="Search" aria-label="Search"> <span
					class="rounded-circle bg-dark text-white toggle-search"><i
					class="small material-icons">close</i></span> <input type="submit"
					hidden="hidden">
			</form>
		</div>

		<div class="row">

			<div class="col-4 d-flex d-md-none align-items-center">
				<a href="#" class="text-dark" data-toggle="modal"
					data-target="#menuModal"><i class="material-icons md-2">menu</i></a>
			</div>
			<div
				class="col-4 col-md-auto d-flex align-items-center justify-content-center justify-content-md-start">
				<a href="index.jsp" class="logo"> <img src="img/logo.svg"
					alt="Mimity" class="d-none d-md-block"> <img
					src="img/logo-text.svg" alt="Mimity" class="d-block d-md-none">
				</a>
			</div>
			<div class="col d-none d-md-block position-static">
				<nav
					class="navbar nav main-nav justify-content-center justify-content-md-start position-static p-0">
					<a class="nav-link" href="index.jsp">HOME</a>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle no-caret"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">RESERVATION</a>
						<div class="dropdown-menu animate">
							<a class="dropdown-item" href="ReservationUIServlet">Reservation</a>
							<!--  <a class="dropdown-item" href="shop-list.jsp">Shop List</a>
                  <a class="dropdown-item" href="cart.jsp">Shopping Cart</a>
                  <a class="dropdown-item" href="checkout.jsp">Checkout</a> -->
							<!--          <div class="dropdown-submenu">
                    <a href="#" class="dropdown-item d-flex justify-content-between">Checkout Wizard <i class="material-icons md-1 mt-1">chevron_right</i></a>
                    <div class="dropdown-menu animate">
                      <a href="checkout-wizard-address.jsp" class="dropdown-item">Addresses</a>
                      <a href="checkout-wizard-shipping.jsp" class="dropdown-item">Shipping</a>
                      <a href="checkout-wizard-payment.jsp" class="dropdown-item">Payment</a>
                      <a href="checkout-wizard-review.jsp" class="dropdown-item">Review</a>
                    </div>
                  </div> -->
							<a class="dropdown-item" href="ReservationListServlet">My Reservation</a>
						</div>
					</div>
<!-- 					<div class="nav-item dropdown position-static">
						<a href="#" class="nav-link dropdown-toggle no-caret"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">MEGA MENU</a>
						<div class="dropdown-menu dropdown-menu-mega animate">
							<form>
								added <form> tags to prevent dropdown closed when clicked inside dropdown-menu
								<div class="row">
									<div class="col-4 col-lg-3">
										<h6
											class="p-2 font-weight-bold border border-top-0 border-right-0 border-left-0">Top
											Categories</h6>
										<div class="list-group list-group-no-border list-group-sm">
											<a href="shop.jsp"
												class="list-group-item list-group-item-action">Polo
												T-Shirt</a> <a href="shop.jsp"
												class="list-group-item list-group-item-action">Round
												Neck T-Shirt</a> <a href="shop.jsp"
												class="list-group-item list-group-item-action">V Neck
												T-Shirt</a> <a href="shop.jsp"
												class="list-group-item list-group-item-action">Hooded
												T-Shirt</a> <a href="shop.jsp"
												class="list-group-item list-group-item-action">Polo
												T-Shirt</a> <a href="shop.jsp"
												class="list-group-item list-group-item-action">Round
												Neck T-Shirt</a> <a href="shop.jsp"
												class="list-group-item list-group-item-action">V Neck
												T-Shirt</a>
										</div>
									</div>
									<div class="col-4 col-lg-3">
										<h6
											class="p-2 font-weight-bold border border-top-0 border-right-0 border-left-0">Categories</h6>
										<div class="list-group list-group-no-border list-group-sm"
											id="list-mega" data-children=".list-submega">
											<a href="shop.jsp"
												class="list-group-item list-group-item-action">Dresses</a>
											<div class="list-group-collapse list-submega">
												<a href="#list-submega-1"
													class="list-group-item list-group-item-action"
													data-toggle="collapse" aria-expanded="false"
													aria-controls="list-submega-1"> Tops </a>
												<div class="collapse" id="list-submega-1"
													data-parent="#list-mega">
													<div class="list-group">
														<a class="list-group-item list-group-item-action"
															href="shop.jsp">lorem ipsum</a> <a
															class="list-group-item list-group-item-action"
															href="shop.jsp">lorem ipsum</a> <a
															class="list-group-item list-group-item-action"
															href="shop.jsp">lorem ipsum</a>
													</div>
												</div>
											</div>
											<a href="shop.jsp"
												class="list-group-item list-group-item-action">Bottoms</a> <a
												href="shop.jsp"
												class="list-group-item list-group-item-action">Jackets /
												Coats</a>
											<div class="list-group-collapse list-submega">
												<a href="#list-submega-2"
													class="list-group-item list-group-item-action"
													data-toggle="collapse" aria-expanded="false"
													aria-controls="list-submega-2"> Sweaters </a>
												<div class="collapse" id="list-submega-2"
													data-parent="#list-mega">
													<div class="list-group">
														<a class="list-group-item list-group-item-action"
															href="shop.jsp">lorem ipsum</a> <a
															class="list-group-item list-group-item-action"
															href="shop.jsp">lorem ipsum</a> <a
															class="list-group-item list-group-item-action"
															href="shop.jsp">lorem ipsum</a>
													</div>
												</div>
											</div>
											<a href="shop.jsp"
												class="list-group-item list-group-item-action">Gym Wear</a>
											<a href="shop.jsp"
												class="list-group-item list-group-item-action">Others</a>
										</div>
									</div>
									<div class="col-4 col-lg-3">
										<div class="card hover-style2 border-white text-white mb-2">
											<img class="card-img" src="img/product/type-polo.jpg"
												alt="Card image">
											<div class="card-img-overlay text-center p-2 p-md-3">
												<h4 class="card-title mb-0">Polo T-Shirts</h4>
												<p class="card-text mb-xl-1">40% OFF</p>
												<a href="shop.jsp" class="btn btn-sm btn-theme"
													role="button">SHOP NOW</a>
											</div>
										</div>
										<div class="card hover-style2 border-white text-white">
											<img class="card-img" src="img/product/type-hooded.jpg"
												alt="Card image">
											<div class="card-img-overlay text-center p-2 p-md-3">
												<h4 class="card-title">New Collection</h4>
												<a href="shop.jsp" class="btn btn-sm btn-light"
													role="button">SHOP NOW</a>
											</div>
										</div>
									</div>
									<div class="col-4 col-lg-3 d-none d-lg-block">
										<a href="shop.jsp"><img src="img/product/mega-menu.jpg"
											class="img-fluid rounded hover-style2" alt="Product"></a>
									</div>
								</div>
							</form>
						</div>
					</div> -->
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle no-caret"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">RECORD</a>
						<div class="dropdown-menu animate">
							<a class="dropdown-item" href="RankingOut">My Record</a> 
							<!-- 내 레코드 확인하는 페이지 경로 href에 삽입하기 유효성 검사 할것-->
							<a class="dropdown-item" href="">My Record</a>
						</div>
					</div>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle no-caret"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">BOARD</a>
							<div class="dropdown-menu animate">
							<a class="dropdown-item" href="board.jsp">Board</a> 
							<!-- 내 레코드 확인하는 페이지 경로 href에 삽입하기 유효성 검사 할것-->
							<a class="dropdown-item" href="faq.jsp">FAQ</a>
						</div>
					</div>
				</nav>
			</div>

		</div>
	</div>
</div>
<!-- /Middle Header -->