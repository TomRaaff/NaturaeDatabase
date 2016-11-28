<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<%@include file="header.jsp" %>

<title>Dashboard</title>


</head>

<body ng-app="dashboard2"> <!-- Angular specifieke code -->
	<div ng-controller="dashboard2Controller as vm">
		Filter by: <input type="text" ng-model="filterBy">
		<ul>
			<li ng-repeat="item in vm.klanten">
				{{item.klantNaam}}
			</li>
		</ul>
	</div>
	
	<script src="js/dashboard2.module.js"></script>
	<script src="js/dashboard2.controller.js"></script>
</body>
</html>