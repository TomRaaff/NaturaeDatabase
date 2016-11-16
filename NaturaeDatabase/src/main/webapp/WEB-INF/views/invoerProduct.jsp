<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nieuw Product</title>
</head>
<body>
	<c:forEach items="${alleProducten }" var="p">
		<ul>
			<li>${p.productNaam}
		</ul>
	</c:forEach>



	<form method="post">
		<table>
			<tr>
				<td>Product naam:</td>
				<td><input type="text" name="productNaam"></td>
			</tr>

			<tr>
				<td>Inkoop prijs:</td>
				<td><input type="number" step="0.01" name="inkoopPrijs"></td>
			</tr>

			<tr>
				<td>Verkoop prijs:</td>
				<td><input type="number" step="0.01" name="verkoopPrijs"></td>
			</tr>

			<tr>
				<td>Werk uren per product:</td>
				<td><input type="number" name="werkUren"></td>
			</tr>

			<tr>
				<td>Materialen URL's:</td>
				<td><input type="text" name="materialenUrls"></td>
			</tr>
			
			<tr>
				<td><input type="submit">
			</tr>
		</table>
	</form>

</body>
</html>