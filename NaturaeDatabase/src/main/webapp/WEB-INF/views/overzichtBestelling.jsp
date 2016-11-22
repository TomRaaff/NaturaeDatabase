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
						
						<h1>Overzicht van bestellingen</h1>
						
						<c:forEach items="${alleBestellingen}" var="bestelling">
							<ul>
								<li>${bestelling.klant.klantNaam}<br>
									${bestelling.opleverDatum}<br>
									Verzonden:${bestelling.verzonden}<br>
									Betaald:${bestelling.betaald}<br>
									
								<c:forEach items="${bestelling.orderlines}" var="orderline">
									<table>
										<tr>
											<td>${orderline.product.productNaam}</td>
											<td>${orderline.hoeveelheid}</td>
										</tr>	
									</table>
								</c:forEach>							
										<a href="/verwijderBestelling?Id=${bestelling.bestellingId}">Verwijderen</a>
													
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
