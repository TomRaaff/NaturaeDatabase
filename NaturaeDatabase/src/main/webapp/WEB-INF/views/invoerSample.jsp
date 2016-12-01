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
	$('input[type="button"][value="Bekijk locatie"]').click(bekijkLocatie);	
	function bekijkLocatie(){
		console.log($(this).attr("id"));
		var id = $(this).attr("id");
 		$.get("getSampleBestellingKlant", { id }, 
 				function(sampleBestelling){
 			console.log(sampleBestelling);
 			var typeKlant;
			switch(sampleBestelling.klant.typeKlant){
			case 0:
				typeKlant = "Stockist";
				break;
			case 1:
				typeKlant = "Particulier";
				break;
			case 2:
				typeKlant = "Overig";
				break;
			}
			$(".naam").val(sampleBestelling.klant.klantNaam);
			$(".typeKlant").val(typeKlant);
			$(".naam").val(sampleBestelling.klant.klantNaam);
			$(".straat").val(sampleBestelling.klant.straat);
			$(".huisnummer").val(sampleBestelling.klant.huisnummer);
			$(".postcode").val(sampleBestelling.klant.postcode);
			$(".stad").val(sampleBestelling.klant.stad);
			$(".land").val(sampleBestelling.klant.land);
			$(".staat").val(sampleBestelling.klant.staat); 
			var eindDatum = moment(sampleBestelling.eindDatumContract);
			$(".eindDatumContract").val(eindDatum.format("DD/MM/YYYY"));
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
										<td><input type="button" class="btn btn-xs btn-default"
											id="${s.sampleId}" value="Bekijk locatie"></td>
									</tr>
								</c:forEach>
						</table>



					</div>
					<div class="col-lg-6">
						<h1>Sample Locatie</h1>

						<table class="table table-striped">
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
								<td>Einddatum contract:</td>
								<td><input type="text" class="eindDatumContract"></td>
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
