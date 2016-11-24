<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@include file="header.jsp" %>

<title>Orderline Invoer</title>
<script>
	$(document).ready(function(){
		$("#toevoegen").click(voegProductToe);
		function voegProductToe(){
 			$.post("maakOrderline", {
				productId: $("#productId").val(),
				hoeveelheid: $("#hoeveelheid").val(),
				bestellingId: ${bestelling.bestellingId}
			}, function(orderline){
				var orderline = $("<tr><td>" + orderline.product.productNaam + "</td><td> "+ orderline.hoeveelheid + "</td></tr>" );
				$("#orderlineTable").append(orderline);
			}); 
		}
	})
</script>
</head>

<body>

	<div id="wrapper">

<%@include file="sidebar.jsp" %>

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
							<br>
							<table id="orderlineTable">
								<tr><th>Product</th><th>Aantal</th></tr>
								<!-- INSERT ORDERLINES HERE -->
							</table>
							<br>
<!-- Hier begint een nieuwe form voor orderline, deze staat in de form voor product -->							
						
							
							<form method="post">
								<table>
									<tr><td><select name="productId" id="productId">
											<c:forEach items="${alleProducten}" var="product">
												<option value="${product.productId}">${product.productNaam}</option>
											</c:forEach>
									</select></td>
									<td> hoeveelheid:<input type="number" name="hoeveelheid" id="hoeveelheid">
									<td> <input type="button" value="toevoegen" id="toevoegen">
								</table>
														
							</form>
							
							<form action="/overzichtBestelling">
    							<input type="submit" value="Klaar"/>
							</form>

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
