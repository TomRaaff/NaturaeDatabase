<%@include file="header.jsp" %>


<title>Overzicht Bestellingen</title>

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
						
						<h1>Overzicht van Sample bestellingen</h1>
						
						<c:forEach items="${alleSampleBestellingen}" var="bestelling">
							<ul>
									<li><table>
											<tr><td>Naam Klant: </td><td>${bestelling.klant.klantNaam}</td></tr>
											<tr><td>Contract: </td><td>${bestelling.contractId}</td></tr>
											<tr><td>Oplever Datum: </td><td>${bestelling.opleverDatum}</td></tr>
											<tr><td>Start datum: </td><td>${bestelling.startDatumContract}</td></tr>
											<tr><td>Eind datum: </td><td>${bestelling.eindDatumContract}</td></tr>
										<c:forEach items="${bestelling.sampleOrderlines}" var="orderline">
											<tr><td>${orderline.sample.product.productNaam}</td></tr>
										</c:forEach>
										</table>
																				
										<a class="btn btn-danger" href="/verwijderSampleBestelling?Id=${sampleBestelling.sampleBestellingId}" role="button">Verwijder</a>
							</ul>
						</c:forEach>							
									

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
