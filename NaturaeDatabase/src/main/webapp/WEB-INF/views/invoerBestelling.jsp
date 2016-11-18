<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, shrink-to-fit=no, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

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

</head>

<body>

	<div id="wrapper">

		<!-- Sidebar -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><a href="#"> Start Bootstrap </a></li>
				<li><a href="#">Dashboard</a></li>
				<li><a href="/invoerKlant">Invoeren Klant</a></li>
				<li><a href="#">Invoeren Bestelling</a></li>
				<li><a href="/invoerProduct">Invoeren Product</a></li>
			</ul>
		</div>
		<!-- /#sidebar-wrapper -->

		<!-- Page Content --------------------------------------------------------------------- -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1>Invoer Bestelling</h1>


						<form method="post">
							<table>
								<tr>
									<td> Klant:</td>
									<td><select name="klantId">
											<c:forEach items="${alleKlanten }" var="k">
												<option value="${k.klantId}">${k.klantNaam}</option>
											</c:forEach>
									</select></td>
								</tr>
								
								<tr>
									<td>Opleverdatum:</td>
									<td><input type="text" name="opleverDatum"></td>
								</tr>
								
								<tr>
									<td>Verzonden:</td>
									<td><input type="checkbox" name="verzonden"></td>
								</tr>
								
								<tr>
									<td>Betaald:</td>
									<td><input type="checkbox" name="betaald"></td>
								</tr>						
						
							</table>
							
							<c:forEach items="${alleProducten}" var="product">
								<ul>
									<li>${product.productNaam} <input type="number" name="hoeveelheid"></li>
								</ul>
							</c:forEach>
							<input type="submit">
							
						</form>
						
						<h1>Overzicht van bestellingen</h1>
						
						<c:forEach items="${alleBestellingen }" var="b">
							<ul>
								<li>${b.opleverDatum}<br>
									${b.klant.klantNaam}
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
