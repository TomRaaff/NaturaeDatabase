<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@include file="header.jsp" %>


<title>Overzicht Bestellingen</title>

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
								<a class="btn btn-danger" href="/verwijderBestelling?Id=${bestelling.bestellingId}" role="button">Verwijder</a>			
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
