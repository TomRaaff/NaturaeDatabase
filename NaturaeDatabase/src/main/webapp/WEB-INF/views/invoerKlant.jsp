<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@include file="header.jsp"%>

<title>Invoer Klant</title>

</head>

<body>

	<div id="wrapper">

		<%@include file="sidebar.jsp"%>

		<!-- Page Content -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1>Invoer Klant</h1>

						<!-- FORM START -->
						<form method="post">
							<table>
								<tr>
									<td>Klant type:</td>
									<td><select name="typeKlant">
											<option value="0">Stockist</option>
											<option value="1">Particulier</option>
											<option value="2">Overig</option>
									</select></td>
								</tr>

								<tr>
									<td>Klant naam:</td>
									<td><input type="text" name="klantNaam"></td>
								</tr>

								<tr>
									<td>Straat:</td>
									<td><input type="text" name="straat"></td>
								</tr>

								<tr>
									<td>Huisnummer:</td>
									<td><input type="text" name="huisnummer"></td>
								</tr>

								<tr>
									<td>Postcode:</td>
									<td><input type="text" name="postcode"></td>
								</tr>

								<tr>
									<td>Stad:</td>
									<td><input type="text" name="stad"></td>
								</tr>

								<tr>
									<td>Staat:</td>
									<td><input type="text" name="staat"></td>
								</tr>

								<tr>
									<td>Land:</td>
									<td><input type="text" name="land"></td>
								</tr>

								<tr>
									<td>E-mail adres:</td>
									<td><input type="text" name="mail"></td>
								</tr>

								<tr>
									<td>Tel.Nr.:</td>
									<td><input type="text" name="telNr"></td>
								</tr>

								<tr>
									<td>Naam contactpersoon:</td>
									<td><input type="text" name="contactPersoon"></td>
								</tr>
								
								<tr>
									<td>VAT:</td>
									<td><input type="text" class="vat" name="vat"></td>
								</tr>
					
								<tr>
									<td>Notitie:</td>
									<td><input type="text" name="notitie"></td>
								</tr>

								<tr>
									<td><input type="submit"></td>
								</tr>
							</table>
						</form>
						<!-- FORM END -->

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
