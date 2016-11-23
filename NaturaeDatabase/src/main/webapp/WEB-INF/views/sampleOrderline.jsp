<%@include file="header.jsp" %>


<title>Sample Bestelling</title>

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

<%@include file="sidebar.jsp" %>

		<!-- Page Content --------------------------------------------------------------------- -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1>Sample orderline</h1>

							<table>
								<tr>
									<td>Klant:</td>
									<td>${sampleBestelling.klant.klantNaam}</td>
								</tr>
								
								<tr>
									<td>ContractId:</td>
									<td>${sampleBestelling.contractId}</td>
								</tr>
								
								<tr>
									<td>Oplever datum:</td>
									<td>${sampleBestelling.opleverDatum}</td>
								</tr>
								
								<tr>
									<td>Start datum:</td>
									<td>${sampleBestelling.startDatumContract}</td>
								</tr>
								
								<tr>
									<td>Eind datum:</td>
									<td>${sampleBestelling.eindDatumContract}</td>
								</tr>
				
							</table>
							
							<table>
								<c:forEach items="${sampleBestelling.sampleOrderlines}" var="ol">
									<tr>
										<td>${ol.sample.product.productNaam}</td>
									</tr>
			
								</c:forEach>
							</table>
							
						<form method="post">
						
							<table>
								<tr>
									<td>Sample:</td>
									<td><select name="sampleId">
											<c:forEach items="${alleSamples}" var="sample">
												<option value="${sample.sampleId}">${sample.product.productNaam} ${sample.sampleId}</option>
											</c:forEach>
									</select></td>
									<td> <input type="submit">
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
