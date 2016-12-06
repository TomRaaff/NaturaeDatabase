<h1>Info van bestelling</h1>

<form method="post" action="wijzigBestelling">
<input type="hidden" class="id" name="id">
	<table id="bestellingTable" class="table table-striped">
		<tr>
			<td>Naam:</td>
			<td><input type="text" class="naam" name="naam"></td>
		</tr>
		<tr>
			<td>Opleverdatum:</td>
			<td><input class="opleverDatum" name="opleverDatum" ></td>
		</tr>
		<tr>
			<td>Betaald:</td>
			<td><input type="checkbox" class="betaald" name="betaald"></td>
		</tr>
		<tr>
			<td>Klaar:</td>
			<td><input type="checkbox" class="klaar" name="klaar"></td>
		</tr>
		<tr>
			<td>Verzonden:</td>
			<td><input type="checkbox" class="verzonden" name="verzonden"></td>
		</tr>
		<tr>
			<td>Track and Trace:</td>
			<td><input type="text" class="trackAndTrace" name="trackAndTrace"></td>
		</tr>
		<tr>
			<td>Totale Wholesale Prijs:</td>
			<td><input type="text" class="totaleInkoopPrijs" name="totaleInkoopPrijs"></td>
		</tr>
		<tr>
			<td>Totale Retail Prijs:</td>
			<td><input type="text" class="totaleVerkoopPrijs" name="totaleVerkoopPrijs"></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="wijzig"></td>
		</tr>
	</table>
</form>