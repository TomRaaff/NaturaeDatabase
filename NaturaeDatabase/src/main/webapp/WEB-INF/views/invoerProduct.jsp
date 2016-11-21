<%@include file="header.jsp" %>


<title>Product Invoer</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/simple-sidebar.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div id="wrapper">

<%@include file="sidebar.jsp" %>


		<!-- Page Content --------------------------------------------------------------------- -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1>Invoer Product</h1>
						<c:forEach items="${alleProducten }" var="p">
							<ul>
								<li>${p.productNaam}
							</ul>
						</c:forEach>



						<form method="post">
							<table>
								<tr>
									<td>Product naam:</td>
									<td><input type="text" name="productNaam"></td>
								</tr>

								<tr>
									<td>Inkoop prijs:</td>
									<td><input type="number" step="0.01" name="inkoopPrijs"></td>
								</tr>

								<tr>
									<td>Verkoop prijs:</td>
									<td><input type="number" step="0.01" name="verkoopPrijs"></td>
								</tr>

								<tr>
									<td>Werk uren per product:</td>
									<td><input type="number" name="werkUren"></td>
								</tr>

								<tr>
									<td>Materialen URL's:</td>
									<td><input type="text" name="materialenUrls"></td>
								</tr>

								<tr>
									<td><input type="submit">
								</tr>
							</table>
						</form>
						<a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Toggle
							Menu</a>
					</div>
				</div>
			</div>
		</div>
		<!-- /#page-content-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Menu Toggle Script -->
	<script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>

</body>

</html>
