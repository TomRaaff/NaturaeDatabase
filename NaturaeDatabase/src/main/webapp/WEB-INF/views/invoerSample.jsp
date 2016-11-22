<%@include file="header.jsp"%>

<title>Sample Invoer</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/simple-sidebar.css" rel="stylesheet">

<!-- Scripts -->
<script>
  $( function() {
    $( "#opleverDatum" ).datepicker();
  } );

  </script>

</head>

<body>

	<div id="wrapper">

		<%@include file="sidebar.jsp"%>


		<!-- Page Content --------------------------------------------------------------------- -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1>Sample Bestelling</h1>


						<form method="post">
							<table>

								<tr>
									<td>Productlijn:</td>
									<td><select name="productId">
											<c:forEach items="${alleProducten }" var="s">
												<option value="${s.productId}">${s.productNaam}</option>
											</c:forEach>
									</select></td>
							</table>

							<input type="submit">
							<a class="btn btn-danger" href="#" role="button">Delete</a>

						</form>

						<h1>Overzicht van Samples</h1>
						<table>
							<tr>
								<th>Product Naam</th>
								<th>ID</th>
								<th>Klant naam</th>
							<c:forEach items="${alleSamples }" var="s">
							<tr>
								<td>${s.product.productNaam}</td>
								<td>ID: ${s.sampleId}</td>
								<td>${s.klant.klantNaam }</td>
							</tr>
							</c:forEach>
						</table>


						<a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Toggle
							Menu</a>
					</div>
				</div>
			</div>
		</div>
		<!-- /#page-content-wrapper -->

	</div>
	<!-- /#wrapper -->

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
