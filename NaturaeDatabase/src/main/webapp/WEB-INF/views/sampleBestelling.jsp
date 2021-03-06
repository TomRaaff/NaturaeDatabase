<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@include file="header.jsp" %>


<title>Sample Bestelling</title>

<!-- Scripts -->
<script>
  $( function() {
    $( "#opleverDatum" ).datepicker();
    dateFormat: "dd-mm-yy"
  } );
  $( function() {
	    $( "#startDatumContract" ).datepicker();
	    dateFormat: "dd-mm-yy"
	  } );
  $( function() {
	    $( "#eindDatumContract" ).datepicker();
	    dateFormat: "dd-mm-yy"
	  } );
  </script>

</head>

<body>

	<div id="wrapper">

<%@include file="sidebar.jsp" %>


		<!-- Page Content --------------------------------------------------------------------- -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1>Sample Bestelling</h1>


						<form method="post">
							<table>

								<tr>
									<td>Klant:</td>
									<td><select name="klantId">
											<c:forEach items="${alleKlanten }" var="k">
												<option value="${k.klantId}">${k.klantNaam}</option>
											</c:forEach>
									</select></td>
								</tr>
								<tr>
									<td>Contract:</td>
									<td><select name="contractId">
											<option value="0">Geen</option>
											<option value="1">Verhuur</option>
											<option value="2">Consignatie</option>
											<option value="3">Verkoop</option>
											<option value="4">Trunkshow</option>
											<option value="5">Verhuur & Consignatie</option>
									</select>
								</tr>
								<tr>
									<td>Oplever datum:</td>
									<td><input type="text" id="opleverDatum" name="opleverDatum"></td>
								<tr>
									<td>Startdatum contract:</td>
									<td><input type="text" id="startDatumContract" name="startDatumContract"></td>
								<tr>
									<td>Einddatum contract:</td>
									<td><input type="text" id="eindDatumContract" name="eindDatumContract"></td>
							</table>

							<input type="submit">

						</form>

						
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
