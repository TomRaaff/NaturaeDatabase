<h1>Info van Klant</h1>

<form method="post" action="wijzigKlant">
	<input type="hidden" class="idForm" name="id">
	<table class="table table-striped">

		<tr>
			<td>Naam:</td>
			<td><input type="text" class="naam" name="klantNaam"></td>
		</tr>
		<tr>
			<td>Type Klant:</td>
			<td><select name="typeKlant">
					<option value="0">Stockist</option>
					<option value="1">Particulier</option>
					<option value="2">Overig</option>
			</select></td>
		</tr>
		<tr>
			<td>Straat:</td>
			<td><input type="text" class="straat" name="straat"></td>
		</tr>
		<tr>
			<td>Huisnummer:</td>
			<td><input type="text" class="huisnummer" name="huisnummer"></td>
		</tr>
		<tr>
			<td>Postcode:</td>
			<td><input type="text" class="postcode" name="postcode"></td>
		</tr>
		<tr>
			<td>Stad:</td>
			<td><input type="text" class="stad" name="stad"></td>
		</tr>
		<tr>
			<td>Staat:</td>
			<td><input type="text" class="staat" name="staat"></td>
		</tr>
		<tr>
			<td>Land:</td>
			<td><input type="text" class="land" name="land"></td>
		</tr>
		<tr>
			<td>E-mail adres:</td>
			<td><input type="text" class="mail" name="mail"></td>
		</tr>
		<tr>
			<td>Tel.nr.:</td>
			<td><input type="text" class="telNr" name="telNr"></td>
		</tr>
		<tr>
			<td>Contact-persoon:</td>
			<td><input type="text" class="contactPersoon"
				name="contactPersoon"></td>
		</tr>
		<tr>
			<td>Notitie:</td>
			<td><input type="text" class="notitie" name="notitie"></td>
		</tr>
		<!-- 	<tr>
		<td>Bestellingen:</td>
	</tr> -->
		<tr>
			<td></td>
			<td><input type="submit" value="wijzig"></td>
		</tr>

	</table>
</form>