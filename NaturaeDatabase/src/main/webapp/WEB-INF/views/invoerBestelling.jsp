<%@include file="header.jsp"%>


<title>Bestelling Invoer</title>

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
						<h1>Invoer Bestelling</h1>

						<form method="post" action="invoerBestelling">
							<table>
								<tr>
									<td> Klant:</td>
									<td><select name="klantId">
											<c:forEach items="${alleKlanten}" var="klant">
												<option value="${klant.klantId}">${klant.klantNaam}</option>
											</c:forEach>
									</select></td>
								</tr>
								
								<tr>
									<td>Opleverdatum:</td>
									<td><input type="text" id="opleverDatum" name="opleverDatum"></td>
								</tr>
								
								<tr>
									<td>Verzonden:</td>
									<td><input type="checkbox" name="verzonden"></td>
								</tr>
								
								<tr>
									<td>Betaald:</td>
									<td><input type="checkbox" name="betaald"></td>
								</tr>
								
								<tr>
									<td><input type="submit"></td>
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
