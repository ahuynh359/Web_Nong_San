<%@include file="/WEB-INF/views/include/library.jsp"%>
<style>
#passwordToggler {
	color: #001e2b;
	cursor: pointer;
	font-size: 16px;
	position: absolute;
	right: 20px;
	top: 50%;
	transform: translateY(-50%);
}
</style>
<body>

	<c:choose>
		<c:when test="${alert == 1}">
			<div class="position-fixed bottom-0 end-0 p-3">
				<div class="  alert alert-danger alert-dismissible fade show"
					role="alert">
					Edit Failed
					<button type="button" class="ms-auto btn-close"
						data-bs-dismiss="alert" aria-label="Close"></button>
				</div>
			</div>

		</c:when>
		<c:when test="${alert == 2}">
			<div class="position-fixed bottom-0 end-0 p-3">
				<div class="  alert alert-success alert-dismissible fade show"
					role="alert">
					Edit Successfully
					<button type="button" class="ms-auto btn-close"
						data-bs-dismiss="alert" aria-label="Close"></button>
				</div>
			</div>

		</c:when>

		<c:when test="${alert == 3}">
			<div class="position-fixed bottom-0 end-0 p-3">
				<div class="  alert alert-danger alert-dismissible fade show"
					role="alert">
					Upload Avatar Failed
					<button type="button" class="ms-auto btn-close"
						data-bs-dismiss="alert" aria-label="Close"></button>
				</div>
			</div>

		</c:when>

	</c:choose>

	<div class="row">

		<!-- Sidebar -->
		<div class="col-2 d-none d-lg-inline "><%@include
				file="/WEB-INF/views/admin/admin-header-nav.jsp"%></div>
		<div class="col-10 col-12-sm col-12-md">
			<div id="content-wrapper" class="d-flex flex-column">
				<nav
					class="  navbar navbar-light bg-white mb-4 static-top shadow d-none d-lg-inline">
					<%@include file="/WEB-INF/views/admin/admin-topbar.jsp"%>
				</nav>
				<!-- Main -->
				<div class="container">
					<div class="row mt-3">

						<div class="col-md-12 mb-4">
							<div class="d-md-flex justify-content-between align-items-center">
								<!-- pageheader -->
								<div>
									<h2>Edit User</h2>
									<!-- breacrumb -->
									<nav aria-label="breadcrumb">
										<ol class="breadcrumb mb-0 text-muted fs-6 fw-semibold">
											<li class="breadcrumb-item  "><a
												href="admin/user/dashboard.htm"
												class="text-decoration-none text-success ">Dashboard </a></li>
											<li class="breadcrumb-item active" aria-current="page"
												class="text-decoration-none">Edit User</li>
										</ol>

									</nav>
								</div>

							</div>
						</div>

						<div class=" col-md-6 offset-md-3 card p-5 ">
							<form:form action="admin/user/edit.htm?id=${id }"
								modelAttribute="userbean" enctype="multipart/form-data"
								method="post">
								<form:input type="hidden" path="password" />
								<!-- Begin -->
								<div class="row g-3">
									<!-- col -->
									<div class="col">
										<!-- input -->
										<form:input type="text" id="lastName" placeholder="Last name"
											class="form-control " path="lastName" />
										<form:errors class="text-danger" path="lastName" />
									</div>
									<div class="col">
										<form:input type="text" id="firstName"
											placeholder="First name" class="form-control "
											path="firstName" />
										<form:errors class="text-danger" path="firstName" />

									</div>

									<div class="col-12 ">
										<form:input type="text" class="form-control" id="email"
											path="email" placeholder="Email" />
										<form:errors class="text-danger" path="email" />
									</div>


									<div class="col-12 ">
										<form:input type="text" class="form-control" id="phoneNumber"
											path="phoneNumber" placeholder="Phone Number" />
										<form:errors class="text-danger" path="phoneNumber" />
									</div>
									<div class="col-12 ">
										<img
											src="<c:url value="/assets/img/account/${userbean.avatarDir} "/>"
											id="output" class="mt-2 mb-2 rounded-circle" width="100px"
											height="100px" class="mv-10" />
										<form:input path="avatar" class="form-control" type="file"
											accept="image/*" id="formFile" onchange="loadFile(event)" />
										<form:errors class="text-danger" path="avatar" />
									</div>
									<!-- btn -->
									<div class="col-12 d-grid">
										<button type="submit" class="btn btn-success">Submit</button>
									</div>


								</div>


							</form:form>
						</div>
					</div>
				</div>
				<!-- End Main -->
			</div>


		</div>

	</div>





</body>
<script>
	var pass = document.getElementById("password");
	toggleIcon = function(x) {
		x.classList.toggle('bi-eye');
		const type = pass.getAttribute("type") === "password" ? "text"
				: "password";
		password.setAttribute("type", type);
	};
</script>
<script src="<c:url value="/assets/js/admin/AlertHandler.js"/>"></script>
<script type="text/javascript" src="assets/js/user/account.js"></script>
</html>
