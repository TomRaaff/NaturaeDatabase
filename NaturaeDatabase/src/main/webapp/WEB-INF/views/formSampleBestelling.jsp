<h1>Info van sample bestelling</h1>

<form method="post" action="wijzigSampleBestelling">
	<input type="hidden" class="id" name="id">
	<table id="sampleBestellingTable" class="table table-striped">
		<tr>
			<td>Naam:</td>
			<td><input type="text" class="naam"></td>
		</tr>

		<tr>
			<td>Contract:</td>
			<td><select name="contractId" class="contract">
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
			<td><input type="text" class="opleverDatum"></td>
		<tr>
			<td>Startdatum contract:</td>
			<td><input type="text" class="startDatumContract"></td>
		</tr>

		<tr>
			<td>Einddatum contract:</td>
			<td><input type="text" class="eindDatumContract"></td>
		</tr>

		<tr>
			<td>Is weer terug:</td>
			<td><input type="checkbox" class="isTerug" name="isTerug"></td>
		</tr>
		<tr>
			<td><input type="submit" value="Wijzig"></td>
		</tr>
	</table>
</form>