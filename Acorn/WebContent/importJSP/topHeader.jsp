<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- Top Header -->
<div class="top-header">
	<div class="container-fluid limited">
		<div class="row">
			<div class="col">
				<div class="d-flex justify-content-between">
					<nav class="nav d-none d-lg-flex">
						<c:if test="${!empty login }">
							<a class="nav-link" href=""><i class="material-icons">notifications_none</i>
								WELCOME [${login.username }]</a>
						</c:if>
					</nav>
					<nav class="nav ml-auto">
						<a class="nav-link d-none d-sm-block" href="faq.jsp"><i
							class="material-icons">help_outline</i> Help</a> <a
							class="nav-link d-none d-sm-block" href="account-order.jsp"><i
							class="material-icons">list</i> Track Order</a>
						<!-- 언어선택기능 현재는 안씀 -->
						<!-- <select name="lang"
							id="lang" hidden="hidden">
							<option value="en">English</option>
							<option value="fr">French</option>
						</select> -->

						<!-- 국가선택 안씀 -->
						<!-- 	<div class="nav-item dropdown dropdown-lang">
							<a class="nav-link dropdown-toggle" data-toggle="dropdown"
								href="#" role="button" aria-haspopup="true"
								aria-expanded="false"></a>
							<div class="dropdown-menu animate" data-select="lang">
								<button class="dropdown-item" type="button" data-value="en">
									<img src="img/lang_en.svg" alt="English"> English
								</button>
								<button class="dropdown-item" type="button" data-value="fr">
									<img src="img/lang_fr.svg" alt="French"> French
								</button>
							</div>
						</div> -->

						<!-- <select name="currency" id="currency" hidden="hidden">
							<option value="usd">USD</option>
							<option value="eur">EUR</option>
						</select> -->

						<div class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" data-toggle="dropdown"
								href="#" role="button" aria-haspopup="true"
								aria-expanded="false"></a>
							<div class="dropdown-menu dropdown-menu-right animate"
								data-select="currency">
								<button class="dropdown-item" type="button" data-value="usd">USD</button>
								<button class="dropdown-item" type="button" data-value="eur">EUR</button>
							</div>
						</div>
						<c:if test="${!empty login }">
							<a class="nav-link" href="LogoutServlet"><i
								class="material-icons">person_outline</i> Sign Out</a>
						</c:if>
						<c:if test="${empty login }">
							<a class="nav-link" href="#" data-toggle="modal"
								data-target="#loginModal" ><i class="material-icons">person_outline</i>
								Sign In</a>
						</c:if>
						<c:if test="${login.userid eq 'admin'}">
							<a class="nav-link" href="admin page" data-toggle="modal"><i class="material-icons">person_outline</i>admin page</a>
						</c:if>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /Top Header -->