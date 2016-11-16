<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nieuwe Klant</title>
</head>
<body>
	<form method="post">
	<table>
		<tr>
		<td>Klant type: </td>
		<td><select name="typeKlant">
			<option value="0">Stockist</option>
			<option value="1">Particulier</option>
			<option value="2">Overig</option>
		</select></td></tr>
		
		<tr><td>Klant naam: </td>
			<td><input type="text" name="klantNaam"></td></tr>
		
		<tr><td>Adres: </td>
			<td><input type="text" name="adres"></td></tr>
			
		<tr><td>E-mail adres: </td>
			<td><input type="text" name="mail"></td></tr>
			
		<tr><td>Tel.Nr.: </td>
			<td><input type="text" name="telNr"></td></tr>
			
		<tr><td>Type Contract</td>
			<td><select name="typeContract">
				<option value="0">Geen</option>
				<option value="1">Verhuur</option>
				<option value="2">Consignatie</option>
				<option value="3">Verkoop</option>
				<option value="4">Trunkshow</option>
				<option value="5">Verhuur & Consignatie</option>
			</select></td></tr>
			
		<tr><td>Start datum contract: </td>
			<td><input type="text" name="startDatumContract"></td></tr>
			
		<tr><td>Eind datum contract: </td>
			<td><input type="text" name="startDatumContract"></td></tr>
			
		<tr><td>Naam contactpersoon: </td>
			<td><input type="text" name="contactPersoon"></td></tr>
			
		<tr><td>Notitie: </td>
			<td><input type="text" name="notitie"></td></tr>
			
		<tr><td><input type="submit"></td></tr>
	</table>
	</form>

</body>
</html>