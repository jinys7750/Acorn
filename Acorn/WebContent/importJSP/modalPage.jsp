
<!-- Modal Menu -->
<div class="modal fade modal-menu" id="menuModal" tabindex="-1"
	role="dialog" aria-labelledby="menuModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="menuModalLabel">
					<a href="index.jsp" class="d-inline-block"><img
						src="img/logo.svg" alt="Mimity" height="35"></a>
				</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="list-group list-group-no-border" id="list-menu"
					data-children=".list-submenu">
					<a href="index.jsp" class="list-group-item list-group-item-action">HOME</a>
					<div class="list-group-collapse list-submenu">
						<a class="list-group-item list-group-item-action"
							href="#list-submenu-1" data-toggle="collapse"
							aria-expanded="false" aria-controls="list-submenu-1">
							RESERVATION </a>
						<div class="collapse" id="list-submenu-1" data-parent="#list-menu">
							<div class="list-group">
								<a class="list-group-item list-group-item-action"
									href="reservation.jsp">Reservation</a>
							</div>
						</div>
					</div>
					<div class="list-group-collapse list-submenu">
						<a class="list-group-item list-group-item-action"
							href="#list-submenu-2" data-toggle="collapse"
							aria-expanded="false" aria-controls="list-submenu-2"> BLOG </a>
						<div class="collapse" id="list-submenu-2" data-parent="#list-menu">
							<div class="list-group">
								<a class="list-group-item list-group-item-action"
									href="blog.jsp">Blog Grid</a> <a
									class="list-group-item list-group-item-action"
									href="blog-list.jsp">Blog List</a> <a
									class="list-group-item list-group-item-action"
									href="blog-detail.jsp">Blog Detail</a>
							</div>
						</div>
					</div>
					<div class="list-group-collapse list-submenu">
						<a class="list-group-item list-group-item-action"
							href="#list-submenu-3" data-toggle="collapse"
							aria-expanded="false" aria-controls="list-submenu-3"> PAGES </a>
						<div class="collapse" id="list-submenu-3" data-parent="#list-menu">
							<div class="list-group">
								<a class="list-group-item list-group-item-action"
									href="about.jsp">About Us</a> <a
									class="list-group-item list-group-item-action"
									href="compare.jsp">Compare</a> <a
									class="list-group-item list-group-item-action"
									href="contact.jsp">Contact Us</a> <a
									class="list-group-item list-group-item-action"
									href="cart-empty.jsp">Empty Shopping Cart</a> <a
									class="list-group-item list-group-item-action" href="404.jsp">Error
									404</a> <a class="list-group-item list-group-item-action"
									href="faq.jsp">FAQ</a>
									<!-- ë¡ê·¸ì¸ íì´ì§ ì´ëíëê±° ê·¸ë¥ ìì´ìµëë¤. modalë¡ë§ ì²ë¦¬í  ê² -->
									<!-- <a	class="list-group-item list-group-item-action" href="login.jsp">Login</a> -->
								<a class="list-group-item list-group-item-action"
									href="register.jsp">Register</a>
							</div>
						</div>
					</div>
					<div class="list-group-collapse list-submenu">
						<a class="list-group-item list-group-item-action"
							href="#list-submenu-4" data-toggle="collapse"
							aria-expanded="false" aria-controls="list-submenu-4"> MY
							ACCOUNT </a>
						<div class="collapse" id="list-submenu-4" data-parent="#list-menu">
							<div class="list-group">
								<a class="list-group-item list-group-item-action"
									href="account-profile.jsp">Profile</a> <a
									class="list-group-item list-group-item-action"
									href="account-order.jsp">Orders</a> <a
									class="list-group-item list-group-item-action"
									href="account-address.jsp">Addresses</a> <a
									class="list-group-item list-group-item-action"
									href="account-wishlist.jsp">Wishlist</a> <a
									class="list-group-item list-group-item-action"
									href="account-password.jsp">Change Password</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Modal Cart -->
<div class="modal fade modal-cart" id="cartModal" tabindex="-1"
	role="dialog" aria-labelledby="cartModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="cartModalLabel">You have 4 items in
					your bag</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="media">
					<a href="detail.jsp" class="mr-2"><img
						class="img-fluid rounded" src="img/product/polo1-small.jpg"
						width="70" alt="Generic placeholder image"></a>
					<div class="media-body">
						<div>
							<a href="detail.jsp" class="text-dark">Burberry The Plymouth
								Duffle Coat</a>
						</div>
						<span class="text-secondary"><span class="mr-3">x1</span>$50.00</span>
						<button class="close text-danger">
							<i class="material-icons">close</i>
						</button>
					</div>
				</div>
				<div class="media">
					<a href="detail.jsp" class="mr-2"><img
						class="img-fluid rounded" src="img/product/polo2-small.jpg"
						width="70" alt="Generic placeholder image"></a>
					<div class="media-body">
						<div>
							<a href="detail.jsp" class="text-dark">Fendi Bugs Sweater</a>
						</div>
						<span class="text-secondary"><span class="mr-3">x1</span>$50.00</span>
						<button class="close text-danger">
							<i class="material-icons">close</i>
						</button>
					</div>
				</div>
				<div class="media">
					<a href="detail.jsp" class="mr-2"><img
						class="img-fluid rounded" src="img/product/polo3-small.jpg"
						width="70" alt="Generic placeholder image"></a>
					<div class="media-body">
						<div>
							<a href="detail.jsp" class="text-dark">Alexander McQueen
								Classic PiquÃ© Polo Shirt</a>
						</div>
						<span class="text-secondary"><span class="mr-3">x1</span>$50.00</span>
						<button class="close text-danger">
							<i class="material-icons">close</i>
						</button>
					</div>
				</div>
				<div class="media">
					<a href="detail.jsp" class="mr-2"><img
						class="img-fluid rounded" src="img/product/polo4-small.jpg"
						width="70" alt="Generic placeholder image"></a>
					<div class="media-body">
						<div>
							<a href="detail.jsp" class="text-dark">MCQ Alexander McQueen
								Swallow Badge Polo Shirt</a>
						</div>
						<span class="text-secondary"><span class="mr-3">x1</span>$50.00</span>
						<button class="close text-danger">
							<i class="material-icons">close</i>
						</button>
					</div>
				</div>
			</div>
			<div class="modal-footer justify-content-center border-top-0">
				<div class="btn-group" role="group" aria-label="Cart Action">
					<a href="cart.jsp" class="btn btn-outline-theme" role="button">VIEW
						CART</a> <a href="checkout.jsp" class="btn btn-theme" role="button">CHECKOUT</a>
				</div>
			</div>
		</div>
	</div>
</div>
<form action="LoginServlet">
	<!-- Modal Login -->
	<div class="modal fade modal-login" id="loginModal" tabindex="-1"
		role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="loginModalLabel">Enter Your
						Information</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label for="inputUsername">UserID</label> <input type="text"
							class="form-control" id="inputUsername"
							placeholder="Enter UserID" name="userid">
					</div>
					<div class="form-group">
						<label for="inputPassword">Password</label> <input type="password"
							class="form-control" id="inputPassword" placeholder="Password"
							name="passwd">
						<div class="text-right">
							<a href="#" class="text-secondary"><small>Forgot
									Password ?</small></a>
						</div>
					</div>
					<div class="custom-control custom-checkbox mt-1">
						<input type="checkbox" class="custom-control-input"
							id="checkRemember"> <label class="custom-control-label"
							for="checkRemember">Remember me</label>
					</div>
				</div>
				<div class="modal-footer justify-content-center">
					<div class="btn-group" role="group" aria-label="Login Action">
						<a href="register.jsp" class="btn btn-outline-theme" role="button">I
							want to Sign Up</a>
						<button type="submit" class="btn btn-theme">SIGN IN</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>
<!-- logout -->

<!-- Modal Quikview -->
<div class="modal fade modal-quickview" id="quickviewModal"
	tabindex="-1" role="dialog" aria-labelledby="quickviewModalLabel"
	aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title font-weight-normal" id="quickviewModalLabel">
					<a href="detail.jsp" class="text-dark">U.S. Polo Assn. Green
						Solid Slim Fit</a>
				</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body px-0">
				<div class="container-fluid">
					<div class="row compact">
						<div class="col col-sm-6">
							<div class="swiper-container" id="quickview-slider">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<img src="img/product/polo1.jpg" alt="image" class="w-100">
									</div>
									<div class="swiper-slide">
										<img src="img/product/polo2.jpg" alt="image" class="w-100">
									</div>
									<div class="swiper-slide">
										<img src="img/product/polo3.jpg" alt="image" class="w-100">
									</div>
								</div>
								<div class="swiper-pagination"></div>
								<div class="swiper-button-prev d-none d-sm-flex"
									id="quickview-prev">
									<i class="material-icons md-3">keyboard_arrow_left</i>
								</div>
								<div class="swiper-button-next d-none d-sm-flex"
									id="quickview-next">
									<i class="material-icons md-3">keyboard_arrow_right</i>
								</div>
							</div>
						</div>
						<div class="col col-sm-6">
							<div class="list-detail">
								<div>Price</div>
								<div>
									<ul class="list-inline mb-0">
										<li class="list-inline-item"><span class="price">$13.50</span></li>
										<li class="list-inline-item"><del
												class="small text-muted">$15.00</del></li>
										<li class="list-inline-item d-none d-sm-inline-block"><span
											class="badge badge-secondary">-10%</span></li>
									</ul>
								</div>
							</div>
							<div class="list-detail">
								<div>Quantity</div>
								<div>
									<div class="input-group input-group-sm input-group-qty">
										<div class="input-group-prepend">
											<button class="btn btn-light btn-down" type="button">
												<i class="material-icons">keyboard_arrow_down</i>
											</button>
										</div>
										<input type="text"
											class="form-control text-center border-light"
											aria-label="Quantity" value="1" data-min="1" data-max="10">
										<div class="input-group-append">
											<button class="btn btn-light btn-up" type="button">
												<i class="material-icons">keyboard_arrow_up</i>
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="list-detail">
								<div>Size</div>
								<div>
									<select name="size" class="custom-select custom-select-sm w-50">
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="L">L</option>
										<option value="XL">XL</option>
										<option value="XXL">XXL</option>
									</select>
								</div>
							</div>
							<div class="list-detail">
								<div>Checkbox</div>
								<div>
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input"
											id="quickviewCheck"> <label
											class="custom-control-label" for="quickviewCheck">Check
											this</label>
									</div>
								</div>
							</div>
							<div class="list-detail">
								<div>Radio Options</div>
								<div>
									<div class="custom-control custom-radio">
										<input type="radio" id="quickviewOption1"
											name="quickview-option" class="custom-control-input">
										<label class="custom-control-label" for="quickviewOption1">Yes</label>
									</div>
									<div class="custom-control custom-radio">
										<input type="radio" id="quickviewOption2"
											name="quickview-option" class="custom-control-input">
										<label class="custom-control-label" for="quickviewOption2">No</label>
									</div>
								</div>
							</div>
							<div class="list-detail">
								<div class="btn-group btn-group-sm w-100" role="group"
									aria-label="quickview action">
									<button class="btn btn-theme w-75">
										<i class="material-icons">add_circle</i> Add to Cart
									</button>
									<button class="btn btn-outline-theme w-25">
										<i class="material-icons">favorite</i>
									</button>
								</div>
							</div>
						</div>
						<div class="col-sm-6"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>