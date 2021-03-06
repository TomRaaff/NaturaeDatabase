<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@include file="header.jsp" %>

<script>
$(document).ready(function(){
	$(':button').click(bekijkBestelling);
	
	
	function bekijkBestelling(){
		$(".orderline").remove();
		$('.totaal').remove();
		console.log($(this).attr("id"));
		var id = $(this).attr("id");
 		$.get("getBestelling", { id }, 
				function(bestelling){
 					$(".id").val(bestelling.bestellingId);
					$(".naam").val(bestelling.klant.klantNaam);
					var opleverDatum = moment(bestelling.opleverDatum);
					$(".opleverDatum").val(opleverDatum.format("DD/MM/YYYY"));  // <-- ander argument
					$(".betaald").prop("checked", bestelling.betaald );
					$(".klaar").prop("checked", bestelling.klaar);
					$(".verzonden").prop("checked", bestelling.verzonden);
					$(".trackAndTrace").val(bestelling.trackAndTrace);
				for (var i = 0; i < bestelling.orderlines.length; i++){
						var orderlineElement = $('<tr class="orderline"><td>' + bestelling.orderlines[i].product.productNaam 
								+ '</td><td>' + bestelling.orderlines[i].hoeveelheid + '</td><td>' + bestelling.orderlines[i].orderlineInkoopPrijs +
								'</td><td>' + bestelling.orderlines[i].orderlineVerkoopPrijs +'</td></tr>');
						$("#orderlineTable").append(orderlineElement);
					}
				var totaalElement = $('<tr class="totaal"><td><b>Totaal</b></td><td></td><td><b>' + 
						bestelling.totaleInkoopPrijs + '</b></td><td><b>' + bestelling.totaleVerkoopPrijs + '</b></td></tr>');
				$("#orderlineTable").append(totaalElement);
						
		}); 
	}

});
</script>
<title>Overzicht Bestellingen</title>

</head>

<body>

	<div id="wrapper">

<%@include file="sidebar.jsp" %>

		<!-- Page Content --------------------------------------------------------------------- -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-6">

						<h1>Overzicht van bestellingen</h1>

						<c:forEach items="${alleBestellingen}" var="bestelling">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">${bestelling.klant.klantNaam}</h3>
								</div>
								<div class="panel-body">
									<input type="button" class="btn btn-xs btn-success" id="${bestelling.bestellingId}" value="bekijk">
									Opleverdatum: <fmt:formatDate pattern="dd-MM-YYYY" value="${bestelling.opleverDatum}" /><br> 
								</div>
							</div>

						</c:forEach>

					</div>
					<div class="col-lg-6">
						<%@include file="formBestelling.jsp" %>
						
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
