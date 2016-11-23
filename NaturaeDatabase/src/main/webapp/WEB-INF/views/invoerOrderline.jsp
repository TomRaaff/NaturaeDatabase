<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@include file="header.jsp" %>

<title>Orderline Invoer</title>

</head>

<body>

	<div id="wrapper">

		<!-- Sidebar -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><a href="#"> Start Bootstrap </a></li>
				<li><a href="#">Dashboard</a></li>
				<li><a href="/invoerKlant">Invoeren Klant</a></li>
				<li><a href="/invoerBestelling">Invoeren Bestelling</a></li>
				<li><a href="/invoerProduct">Invoeren Product</a></li>
			</ul>
		</div>
		<!-- /#sidebar-wrapper -->

		<!-- Page Content --------------------------------------------------------------------- -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1>Invoer orderline</h1>
							<table>
								<tr>
									<td>Klant: </td>
									<td>${bestelling.klant.klantNaam}</td>
								</tr>
								<tr>
									<td>Opleverdatum: </td>
									<td>${bestelling.opleverDatum}</td>			
								</tr>
								
								<tr>
									<td>Verzonden: </td>
									<td>${bestelling.verzonden}</td>
								</tr>
								<tr>
									<td>Betaald: </td>
									<td>${bestelling.betaald}</td>
								</tr>
				
							</table>
							<table>
							<c:forEach items="${bestelling.orderlines}" var="orderline">
									<tr>
										<td>${orderline.product.productNaam}</td>
										<td>${orderline.hoeveelheid}</td>
									</tr>
									
							</c:forEach>
							</table>
							
<!-- Hier begint een nieuwe form voor orderline, deze staat in de form voor product -->							
						
							
							<form method="post">
								<table>
									<tr><td><select name="productId">
											<c:forEach items="${alleProducten}" var="product">
												<option value="${product.productId}">${product.productNaam}</option>
											</c:forEach>
									</select></td>
									<td> hoeveelheid:<input type="number" name="hoeveelheid" >
									<td> <input type="submit">
								</table>
														
							</form>
							
							<form action="/overzichtBestelling">
    							<input type="submit" value="Klaar"/>
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
