
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
							<a class="dropdown-item" href="ReservationListServlet">My Reservation</a>
						</div>
					</div>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle no-caret"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">RECORD</a>
						<div class="dropdown-menu animate">
							<a class="dropdown-item" href="RankingOut">My Record</a> 
							<a class="dropdown-item" href="myplaytime.jsp">My PlayTime</a>
						</div>
					</div>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle no-caret"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">BOARD</a>
							<div class="dropdown-menu animate">
							<a class="dropdown-item" href="BoardListServlet">Board</a> 
							<a class="dropdown-item" href="faq.jsp">FAQ</a>
						</div>
					</div>
				</nav>
			</div>

		</div>
	</div>
</div>
<!-- /Middle Header -->