<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@include file="header.jsp" %>

<script>
$(document).ready(function(){
	$(':button').click(bekijkBestelling);
	
	
	function bekijkBestelling(){
		console.log($(this).attr("id"));
		var id = $(this).attr("id");
 		$.get("getBestelling", { id }, 
				function(bestelling){
					$("#naam").val(bestelling.klant.klantNaam);
					$("#opleverDatum").val(bestelling.opleverDatum);
					//$("#producten").attr("items").val(bestelling);
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
									${bestelling.opleverDatum}<br> 
									Verzonden: ${bestelling.verzonden}<br> 
									Betaald: ${bestelling.betaald}<br>
									<input type="button" class="btn btn-xs btn-default" id="${bestelling.bestellingId }" value="bekijk"> 
									<a class="btn btn-xs btn-danger" href="/verwijderBestelling?Id=${bestelling.bestellingId}" role="button">Verwijder</a>
								</div>
							</div>

						</c:forEach>

					</div>
					<div class="col-lg-6">
						<h1>Info van bestelling</h1>
						<form method='post'>
						<table>
							<tr>
								<td>Naam: </td><td><input type="text" id="naam"></td>
							</tr>
							<tr>
								<td>Opleverdatum: </td><td><input type="text" id="opleverDatum"></td>
							</tr>
<%-- 							<c:forEach items="${bestelling.orderlines }" var="o" id="producten">
								<tr>
									<td>Product: </td>
									<td>${o.product.productNaam }</td>
								</tr>
							</c:forEach> --%>				
						</table>
						<input type="button" class="btn btn-xs btn-default" id="wijzig" value="wijzig">
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
