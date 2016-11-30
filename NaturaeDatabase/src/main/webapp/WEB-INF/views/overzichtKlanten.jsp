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
	$('input[type="button"][value="Bekijk"]').click(bekijkKlant);
	
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
					$(".idForm").val(klant.klantId);
					$(".naam").val(klant.klantNaam);
					$(".typeKlant").val(typeKlant);
					$(".naam").val(klant.klantNaam);
					$(".straat").val(klant.straat);
					$(".huisnummer").val(klant.huisnummer);
					$(".postcode").val(klant.postcode);
					$(".stad").val(klant.stad);
					$(".land").val(klant.land);
					$(".staat").val(klant.staat);
					$(".mail").val(klant.mail);
					$(".telNr").val(klant.telNr);
					$(".contactPersoon").val(klant.contactPersoon);
					$(".notitie").val(klant.notitie);

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
									<h3 class="panel-title">
									<input type="button" class="btn btn-xs btn-info" id="${k.klantId }" value="Bekijk">
									${k.klantNaam}
									</h3>
								</div>
							</div>

						</c:forEach>

					</div>
 					<div class="col-lg-6">

						<%@include file="formKlant.jsp" %>
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
