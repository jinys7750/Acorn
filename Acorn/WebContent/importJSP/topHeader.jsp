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
							class="material-icons">help_outline</i> Help</a> 
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