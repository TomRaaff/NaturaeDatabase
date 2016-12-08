<h1>Info van bestelling</h1>

<form method="post" action="wijzigProduct">
    <input type="hidden" class="idForm" name="id">
	<table class="table table-striped">
		
		<tr>
			<td>Naam:</td>
			<td><input type="text" class="naam" name="naam"></td>
		</tr>
		<tr>
			<td>Materiaalkosten:</td>
			<td><input type="number" step="0.01"
			 class="materiaalKosten" name="materiaalKosten" ></td>
		</tr>
		<tr>
			<td>Product prijs:</td>
			<td><input type="number" step="0.01" class="productPrijs" name="productPrijs"></td>
		</tr>
		<tr>
			<td>Wholesale prijs:</td>
			<td><input type="number" step="0.01" class="inkoopPrijs" name="inkoopPrijs"></td>
		</tr>
		<tr>
			<td>Retail prijs:</td>
			<td><input type="number" step="0.01" class="verkoopPrijs" name="verkoopPrijs"></td>
		</tr>
		<tr>
			<td>Werk uren:</td>
			<td><input type="number" step="0.01" class="werkUren" name="werkUren"></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="wijzig"></td>
		</tr>
	</table>
</form>