<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@include file="header.jsp" %>
<script>

$(document).ready(function(){
	$(':button').click(bekijkProduct);
	
	p.setMateriaalKosten(materiaalKosten);
	p.setProductPrijs(productPrijs);
	p.setInkoopPrijs(inkoopPrijs);
	p.setVerkoopPrijs(verkoopPrijs);
	p.setWerkUren(werkUren);
	
	
	function bekijkProduct(){
		var id = $(this).attr("id");
 		$.get("getProduct", { id }, 
				function(product){
 					$(".idForm").val(product.productId);
					$(".naam").val(product.productNaam);
					$(".materiaalKosten").val(product.materiaalKosten);  // <-- ander argument
					$(".productPrijs").val(product.productPrijs);
					$(".inkoopPrijs").val(product.inkoopPrijs);
					$(".verkoopPrijs").val(product.verkoopPrijs);
					$(".werkUren").val(product.werkUren);
		}); 
	}

});
</script>


<title>Overzicht Producten</title>

</head>

<body>

	<div id="wrapper">

<%@include file="sidebar.jsp" %>


		<!-- Page Content --------------------------------------------------------------------- -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-6">

						<h1>Overzicht van producten</h1>

						<c:forEach items="${alleProducten}" var="p">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">${p.productNaam}</h3>
								</div>
								<div class="panel-body"> 	
									<input type="button" class="btn btn-xs btn-default" id="${p.productId }" value="bekijk"> 
								</div>
							</div>

						</c:forEach>

					</div>
					<div class="col-lg-6">
						<%@include file="formProduct.jsp" %>
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
