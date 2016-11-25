<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@include file="header.jsp" %>


<title>Dashboard</title>

<script>
$(document).ready(function(){
<<<<<<< HEAD
	
$('btn btn-xs btn-default').click(bekijkBestelling);
function bekijkBestelling(){
	console.log("click!");
}
	
	
	
	
	
	/* function bekijkBestelling(){
		console.log($(this).attr("id"));
		var id = $(this).attr("id");
 		$.get("getBestelling", { id }, 
				function(bestelling){
					$("#naam").val(bestelling.klant.klantNaam);
					$("#opleverDatum").val(bestelling.opleverDatum);
					//$("#producten").attr("items").val(bestelling);
		}); 
	} */
	
	
});
/* 	$("#bereken").click(function(totaleInkomsten);
	function totaleInkomsten(){
		$.get
	}
	
	$("#totaleInkomsten").val(alleBestellingen)
}) */

=======
	
	$('input[type="button"][value="bereken"]').click(function(clickButton);
	
	function clickButton(){
		console.log("Click!");
		
	}

});
>>>>>>> master
</script>

</head>

<body>

	<div id="wrapper">

<%@include file="sidebar.jsp" %>


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
									Oplever Datum: ${bestellingDl.opleverDatum}<br>
									<input type="button" class="btn btn-xs btn-default" id="${bestellingDl.bestellingId }" value="Bekijk">
									<input type="button" class="btn btn-xs btn-success" id="${bestellingDl.bestellingId }" value="Klaar"> 
								</div>
							</div>
								
								<tr><td>${bestellingDl.klant.klantNaam}</td>
									<td>${bestellingDl.opleverDatum}</td></tr>
							</c:forEach>		
						</table>

						<h2>Verlopen contracten</h2>

						<table>
							<tr>
								<th>Klant</th>
								<th>Eind Datum</th>
							</tr>
							<c:forEach items="${verlopenContracten}" var="verlopenContract">
<<<<<<< HEAD
								<tr><td>${verlopenContract.klant.klantNaam}</td>
									<td>${verlopenContract.eindDatumContract}</td></tr>
							</c:forEach>						
=======
								<tr>
									<td>${verlopenContract.klant.klantNaam}</td>
									<td>${verlopenContract.eindDatumContract}</td>
								</tr>
							</c:forEach>

>>>>>>> master
						</table>

						Totale inkomsten: <input type="text" id="totaleInkomsten">
						<input type="button" class="btn btn-xs btn-warning" id="bereken" value="bereken">
						<input type="button" class="btn btn-xs btn-warning" id="bekijk" value="bekijk">
						
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
