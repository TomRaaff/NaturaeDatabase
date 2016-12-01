<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<%@include file="header.jsp" %>

<script>
$(document).ready(function(){
	$('input[type="button"][value="bekijk"]').click(bekijkSampleBestelling);
	
	
	function bekijkSampleBestelling(){
		$(".sampleOrderline").remove();
		var id = $(this).attr("id");
 		$.get("getSampleBestelling", { id }, 
				function(sampleBestelling){
					$(".naam").val(sampleBestelling.klant.klantNaam);
					var contractNaam;
					switch (sampleBestelling.contractId){
					case 0: 
						contractNaam = 'geen';
						break;
					case 1: 
						contractMaam = 'verhuur';
						break;
					case 2: 
						contractNaam = 'consignatie';
						break;
					case 3: 
						contractNaam = 'verkoop';
						break;
					case 4: 
						contractNaam = 'trunkshow';
						break;
					case 5: 
						contractNaam = 'verhuur & consignatie';
						break;
					}
					$(".contract").val(contractNaam);
					var opleverDatum = moment(sampleBestelling.opleverDatum);
					$(".opleverDatum").val(opleverDatum.format("DD/MM/YYYY"));
					var startDatum = moment(sampleBestelling.startDatumContract);
					$(".startDatumContract").val(startDatum.format("DD/MM/YYYY"));
					var eindDatum = moment(sampleBestelling.eindDatumContract);
					$(".eindDatumContract").val(eindDatum.format("DD/MM/YYYY"));
					var datumNu = moment();
					checkSampleKlant(datumNu);
				for (var i = 0; i < sampleBestelling.sampleOrderlines.length; i++){
						var newElement = $('<tr class="sampleOrderline"><td>' + sampleBestelling.sampleOrderlines[i].sample.product.productNaam 
								+ '</td><td>1x</td></tr>');
						$("#sampleBestellingTable").append(newElement);
					}		
		}); 
	}
	
	function checkSampleKlant(datumNu){
		console.log(datumNu);
		if ($(".isTerug") == true){
			if (datumNu < sampleBestelling.opleverDatum){
				sample.klant = sampleBestelling.klant;	// Hoe krijgen we dit voor elkaar?
			} else {
				sample.klant = daniella;	// Hoe krijgen we dit voor elkaar?
			}
		}
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

						<h1>Overzicht van sample bestellingen</h1>

						<c:forEach items="${alleSampleBestellingen}" var="sb">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">${sb.klant.klantNaam}</h3>
								</div>
								<div class="panel-body">
									<input type="button" class="btn btn-xs btn-warning" id="${sb.sampleBestellingId}" value="bekijk">
									Opleverdatum: <fmt:formatDate pattern="dd-MM-YYYY" value="${sb.opleverDatum}" /><br> 
								</div>
							</div>

						</c:forEach>

					</div>
					<div class="col-lg-6">
						<%@include file="formSampleBestelling.jsp" %>
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
