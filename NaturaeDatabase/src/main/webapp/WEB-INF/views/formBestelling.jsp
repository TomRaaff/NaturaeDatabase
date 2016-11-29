<h1>Info van bestelling</h1>

<!-- Hoe kan id meegegeven worden? -->
<form method="post" action="wijzigBestelling">
    <input type="hidden" id="idForm" name="id">
	<table id="bestellingTable" class="table table-striped">
		
		<tr>
			<td>Naam:</td>
			<td><input type="text" id="naam" name="naam"></td>
		</tr>
		<tr>
			<td>Opleverdatum:</td>
			<td><input id="opleverDatum" name="opleverDatum" ></td>
		</tr>
		<tr>
			<td>Betaald:</td>
			<td><input type="checkbox" id="betaald" name="betaald"></td>
		</tr>
		<tr>
			<td>Klaar:</td>
			<td><input type="checkbox" id="klaar" name="klaar"></td>
		</tr>
		<tr>
			<td>Verzonden:</td>
			<td><input type="checkbox" id="verzonden" name="verzonden"></td>
		</tr>
		<tr>
			<td>Track and Trace:</td>
			<td><input type="text" id="trackAndTrace" name="trackAndTrace"></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="wijzig"></td>
		</tr>
	</table>
</form>