<%@include file="header.jsp"%>


<title>Bestelling Invoer</title>

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
    
<!--  Scripts  -->
<script>
	$(function() {
		$("#opleverDatum").datepicker();
	});
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
