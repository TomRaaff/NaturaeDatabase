<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@include file="header.jsp"%>


<title>Dashboard</title>

<script>
$(document).ready(function(){

	$('input[type="button"][value="Bekijk"]').click(bekijkBestelling);
	
	function bekijkBestelling(){
		$("#formBestelling").show();
		/* $("#formSampleBestelling").hide(); */
		$(".orderline").remove();
		console.log($(this).attr("id"));
		var id = $(this).attr("id");
 		$.get("getBestelling", { id }, 
				function(bestelling){
					$("#naam").val(bestelling.klant.klantNaam);
					var opleverDatum = moment(bestelling.opleverDatum);
					$("#opleverDatum").val(opleverDatum.format("DD/MM/YYYY"));
					$("#betaald").prop("checked", bestelling.betaald );
					$("#klaar").prop("checked", bestelling.klaar);
					$("#verzonden").prop("checked", bestelling.verzonden);
					$("#trackAndTrace").val(bestelling.trackAndTrace);
				for (var i = 0; i < bestelling.orderlines.length; i++){
						var newElement = $('<tr class="orderline"><td>' + bestelling.orderlines[i].product.productNaam 
								+ '</td><td>' + bestelling.orderlines[i].hoeveelheid + '</td></tr>');
								/*<a class="btn btn-xs btn-danger" href="/verwijderOrderline?Id=${bestelling.bestellingId}" role="button">Verwijder</a></tr>');*/
						$("#bestellingTable").append(newElement);
					}
			
				
		}); 
	}

	$('input[type="button"][value="Klaar"]').click(klaarBestelling);
	
	function klaarBestelling(){
		var id = $(this).attr("id");
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

					<!-- Links -->
					<div class="col-lg-6">
						<h1>Dashboard</h1>
						Hier komen statistieken.<br>

						<h2>Bestellingen ToDo</h2>

						<table>
							<c:forEach items="${BestellingenTweeWeek}" var="bestellingDl">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h3 class="panel-title">${bestellingDl.klant.klantNaam}</h3>
									</div>
									<div class="panel-body">
										Opleverdatum:
										<fmt:formatDate pattern="dd-MM-YYYY"
											value="${bestellingDl.opleverDatum}" />
										<br> <input type="button" class="btn btn-xs btn-default"
											id="${bestellingDl.bestellingId }" value="Bekijk"> <input
											type="button" class="btn btn-xs btn-success"
											id="${bestellingDl.bestellingId }" value="Klaar">
									</div>
								</div>
							</c:forEach>
						</table>

						<h2>Verlopen contracten</h2>

						<table>
							<tr>
								<th>Klant</th>
								<th>Eind Datum</th>
							</tr>
							<c:forEach items="${verlopenContracten}" var="verlopenContract">
								<tr>
									<td>${verlopenContract.klant.klantNaam}</td>
									<td>${verlopenContract.eindDatumContract}</td>
								</tr>
							</c:forEach>

						</table>

						Totale inkomsten: <input type="text" id="totaleInkomsten">
						<input type="button" class="btn btn-xs btn-warning" id="bereken"
							value="bereken"> <input type="button"
							class="btn btn-xs btn-warning" id="bekijk" value="bekijk">

					</div>

					<div class="col-lg-6">
						
						<div id="formSampleBestelling" style="display:none">
							<%@include file="formSampleBestelling.jsp"%>
						</div>
						
						<div id="formBestelling" style="display:none">
							<%@include file="formBestelling.jsp"%>
						</div>
						
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

</body>

</html>
