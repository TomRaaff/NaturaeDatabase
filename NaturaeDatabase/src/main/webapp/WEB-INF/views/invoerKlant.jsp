<%@include file="header.jsp" %>

<title>Simple Sidebar - Start Bootstrap Template</title>

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

		<!-- Page Content -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1>Invoer Klant</h1>
						<c:forEach items="${alleKlanten }" var="k">
							<ul>
								<li>${k.klantNaam}
							</ul>
						</c:forEach>



						<form method="post">
							<table>
								<tr>
									<td>Klant type:</td>
									<td><select name="typeKlant">
											<option value="0">Stockist</option>
											<option value="1">Particulier</option>
											<option value="2">Overig</option>
									</select></td>
								</tr>

								<tr>
									<td>Klant naam:</td>
									<td><input type="text" name="klantNaam"></td>
								</tr>

								<tr>
									<td>Adres:</td>
									<td><input type="text" name="adres"></td>
								</tr>

								<tr>
									<td>E-mail adres:</td>
									<td><input type="text" name="mail"></td>
								</tr>

								<tr>
									<td>Tel.Nr.:</td>
									<td><input type="text" name="telNr"></td>
								</tr>

								<tr>
									<td>Type Contract</td>
									<td><select name="typeContract">
											<option value="0">Geen</option>
											<option value="1">Verhuur</option>
											<option value="2">Consignatie</option>
											<option value="3">Verkoop</option>
											<option value="4">Trunkshow</option>
											<option value="5">Verhuur & Consignatie</option>
									</select></td>
								</tr>

								<tr>
									<td>Start datum contract:</td>
									<td><input type="text" name="startDatumContract"></td>
								</tr>

								<tr>
									<td>Eind datum contract:</td>
									<td><input type="text" name="eindDatumContract"></td>
								</tr>

								<tr>
									<td>Naam contactpersoon:</td>
									<td><input type="text" name="contactPersoon"></td>
								</tr>

								<tr>
									<td>Notitie:</td>
									<td><input type="text" name="notitie"></td>
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
