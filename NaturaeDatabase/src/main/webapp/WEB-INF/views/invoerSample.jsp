<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@include file="header.jsp"%>

<title>Sample Invoer</title>

<!-- Scripts -->
<script>
	$(function() {
		$("#opleverDatum").datepicker();
	});

	$(document).ready(function() {

	});
	
	
$(document).ready(function(){
	$("#bekijkLocatie").click(bekijkLocatie);	
	function bekijkLocatie(){
		//pas de boel even aan aan bekijk locatie
		console.log($(this).attr("id"));
		var id = $(this).attr("id");
 		$.get("getBestelling", { id }, 
				function(bestelling){
 					$(".id").val(bestelling.bestellingId);
					$(".naam").val(bestelling.klant.klantNaam);
					var opleverDatum = moment(bestelling.opleverDatum);
					$(".opleverDatum").val(opleverDatum.format("DD/MM/YYYY"));
					$(".betaald").prop("checked", bestelling.betaald );
					$(".klaar").prop("checked", bestelling.klaar);
					$(".verzonden").prop("checked", bestelling.verzonden);
					$(".trackAndTrace").val(bestelling.trackAndTrace);
				for (var i = 0; i < bestelling.orderlines.length; i++){
						var newElement = $('<tr class="orderline"><td>' + bestelling.orderlines[i].product.productNaam 
								+ '</td><td>' + bestelling.orderlines[i].hoeveelheid + '</td></tr>');
						$("#bestellingTable").append(newElement);
					}				
		}); 
	}
});
</script>

</head>

<body>

	<div id="wrapper">

		<%@include file="sidebar.jsp"%>


		<!-- Page Content --------------------------------------------------------------------- -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-6">
						<h1>Sample Bestelling</h1>


						<form method="post">
							<table>

								<tr>
									<td>Productlijn:</td>
									<td><select name="productId">
											<c:forEach items="${alleProducten }" var="s">
												<option value="${s.productId}">${s.productNaam}</option>
											</c:forEach>
									</select></td>
							</table>

							<input type="submit" class="btn btn-xs btn-warning"
								value="Voeg toe">


						</form>

						<h1>Overzicht van Samples</h1>
						<table class="table table-striped">
							<tr>
								<th>Product Naam</th>
								<th>ID</th>
								<th>Locatie</th>
								<c:forEach items="${alleSamples }" var="s">
									<tr>
										<td>${s.product.productNaam}</td>
										<td>ID: ${s.sampleId}</td>
										<td><button type="button" class="btn btn-xs btn-default" id="bekijkLocatie">Bekijk locatie</button></td>											
									</tr>
								</c:forEach>
						</table>



					</div>
					<div class="col-lg-6">
						<h1>Sample Locatie</h1>

						<table class="table table-striped">
							<tr>
								<th>Sample</th>
								<td><input type="text" class="naam"></td>
							</tr>
							<tr>
								<td>Naam:</td>
								<td><input type="text" class="naam" name="klantNaam"></td>
							</tr>
							<tr>
								<td>Type Klant:</td>
								<td><select name="typeKlant">
										<option value="0">Stockist</option>
										<option value="1">Particulier</option>
										<option value="2">Overig</option>
								</select></td>
							</tr>
							<tr>
								<td>Straat:</td>
								<td><input type="text" class="straat" name="straat"></td>
							</tr>
							<tr>
								<td>Huisnummer:</td>
								<td><input type="text" class="huisnummer" name="huisnummer"></td>
							</tr>
							<tr>
								<td>Postcode:</td>
								<td><input type="text" class="postcode" name="postcode"></td>
							</tr>
							<tr>
								<td>Stad:</td>
								<td><input type="text" class="stad" name="stad"></td>
							</tr>
							<tr>
								<td>Staat:</td>
								<td><input type="text" class="staat" name="staat"></td>
							</tr>
							<tr>
								<td>Land:</td>
								<td><input type="text" class="land" name="land"></td>
							</tr>
							<tr>
								<td>E-mail adres:</td>
								<td><input type="text" class="mail" name="mail"></td>
							</tr>
							<tr>
								<td>Tel.nr.:</td>
								<td><input type="text" class="telNr" name="telNr"></td>
							</tr>
							<tr>
								<td>Contact-persoon:</td>
								<td><input type="text" class="contactPersoon"
									name="contactPersoon"></td>
							</tr>
							<tr>
								<td>Notitie:</td>
								<td><input type="text" class="notitie" name="notitie"></td>
							</tr>
						</table>

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
