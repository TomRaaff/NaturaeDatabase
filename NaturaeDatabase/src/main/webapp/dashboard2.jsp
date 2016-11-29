<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="header.jsp"%>
<title>Dashboard</title>


</head>

<body ng-app="dashboard2">
	<div id="wrapper">

		<!-- MenuBar -->
		<%@include file="sidebar.jsp"%>

		<!-- Page Content --------------------------------------------------------------------- -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div class="row">


					<!-- Linkerkant Pagina -->
					<div class="col-lg-6">
						<h1>Invoer Bestelling</h1>

						<div ng-controller="dashboard2Controller as vm">
							<ul class="list-group">
								<li class="list-group-item" ng-repeat="b in vm.bestellingen">
									<input type="button" ng-click="selectie = b"
									class="btn btn-xs btn-default" value="Bekijk"> {{b.klant.klantNaam}}
								</li>
							</ul>
						</div>


						<!-- Rechterkant Pagina -->
						<div class="col-lg-6">
							<h1>Info van bestelling</h1>
							<table id="bestellingTable" class="table table-striped">
								<tr>
									<td>Naam:</td>
									<td><input type="text" ng-model="selectie.klant.klantNaam"></td>
								</tr>
								<tr>
									<td>Opleverdatum:</td>
									<td><input type="date" ng-model="selectie.opleverDatum"></td>
								</tr>
							</table>
							<input type="button" class="btn btn-xs btn-default" id="wijzig"
								value="wijzig">

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /#page-content-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<script src="js/dashboard2.module.js"></script>
	<script src="js/dashboard2.controller.js"></script>
</body>
</html>