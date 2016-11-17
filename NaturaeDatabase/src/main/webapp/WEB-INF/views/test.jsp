
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Simple Sidebar - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/simple-sidebar.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                        Start Bootstrap
                    </a>
                </li>
                <li>
                    <a href="#">Dashboard</a>
                </li>
                <li>
                    <a href="/invoerKlant">Invoeren Klant</a>
                </li>
                <li>
                    <a href="#">Invoeren Bestelling</a>
                </li>
                <li>
                    <a href="/invoerProduct">Invoeren Product</a>
                </li>
                <li>
                    <a href="#">About</a>
                </li>
                <li>
                    <a href="#">Services</a>
                </li>
                <li>
                    <a href="#">Contact</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1>Simple Sidebar</h1>
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
                        <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Toggle Menu</a>
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
