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

	
	
/* 	if (${verlopenContracten}.length != 0){
		console.log("Send mail!");
	} else {
		console.log("Send no mail");
	} */
	
	
	$('input[type="button"][value="bereken"]').click(clickButton);
	
	function clickButton(){
		console.log("Click!");
		
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
					<div class="col-lg-12">
						<h1>Dashboard</h1>
						Hier komen statistieken.<br>
					

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
