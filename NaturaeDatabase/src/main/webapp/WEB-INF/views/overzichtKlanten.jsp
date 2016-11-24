<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@include file="header.jsp" %>


<title>Overzicht Klanten</title>
<script>
$(document).ready(function(){
	$(':button').click(bekijkKlant);
	
	
	function bekijkKlant(){
		console.log($(this).attr("id"));
		var id = $(this).attr("id");
 		$.get("getKlant", { id }, 
				function(klant){
					var typeKlant;
					switch(klant.typeKlant){
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
					$("#typeKlant").val(typeKlant);
					$("#naam").val(klant.klantNaam);
					$("#straat").val(klant.straat);
					$("#huisnummer").val(klant.huisnummer);
					$("#postcode").val(klant.postcode);
					$("#stad").val(klant.stad);
					$("#land").val(klant.land);
					$("#staat").val(klant.staat);
					$("#mail").val(klant.mail);
					$("#telNr").val(klant.telNr);
					$("#contactPersoon").val(klant.contactPersoon);
					$("#notitie").val(klant.notitie);

		}); 
	}

});
</script>
</head>

<body>

	<div id="wrapper">

<%@include file="sidebar.jsp" %>


		<!-- Page Content --------------------------------------------------------------------- -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-6">

						<h1>Overzicht van Klanten</h1>

						<c:forEach items="${alleKlanten}" var="k">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">${k.klantNaam}
									<input type="button" class="btn btn-xs btn-default" id="${k.klantId }" value="Bekijk"> 
									<a class="btn btn-xs btn-danger" href="/verwijderKlant?Id=${k.klantId}" role="button">Verwijder</a>
									</h3>
								</div>
							</div>

						</c:forEach>

					</div>
 					<div class="col-lg-6">
						<h1>Info van Klant</h1>
						<form method='post'>
						<table>
							<tr>
								<td>Naam: </td><td><input type="text" id="naam"></td>
							</tr>
							<tr>
								<td>Type Klant: </td><td><input type="text" id="typeKlant"></td>
							</tr>
							<tr>
								<td>Straat: </td><td><input type="text" id="straat"></td>
							</tr>
							<tr>
								<td>Huisnummer: </td><td><input type="text" id="huisnummer"></td>
							</tr>
							<tr>
								<td>Postcode: </td><td><input type="text" id="postcode"></td>
							</tr>
							<tr>
								<td>Stad: </td><td><input type="text" id="stad"></td>
							</tr>
							<tr>
								<td>Staat: </td><td><input type="text" id="staat"></td>
							</tr>
							<tr>
								<td>Land: </td><td><input type="text" id="land"></td>
							</tr>
							<tr>
								<td>E-mail adres: </td><td><input type="text" id="mail"></td>
							</tr>
							<tr>
								<td>Tel.nr.: </td><td><input type="text" id="telNr"></td>
							</tr>
							<tr>
								<td>Contact-persoon: </td><td><input type="text" id="contactPersoon"></td>
							</tr>
							<tr>
								<td>Notitie: </td><td><input type="text" id="notitie"></td>
							</tr>
							<tr>
								<td>Bestellingen: </td>
							</tr>
				
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
