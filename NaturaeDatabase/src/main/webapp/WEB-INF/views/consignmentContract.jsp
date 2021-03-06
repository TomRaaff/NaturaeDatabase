<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="css/LayoutContract.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CONSIGNMENT AGREEMENT</title>
</head>
<body class="page">


 <h3>CONSIGNMENT AGREEMENT</h3>
 
 <p>
This Consignment Agreement is made effective as of <fmt:formatDate pattern="dd-MM-YYYY" value="${sampleBestelling.startDatumContract}"/>, by and between <fmt:formatDate pattern="dd-MM-YYYY" value="${sampleBestelling.eindDatumContract}"/>
${sampleBestelling.klant.klantNaam}, of ${sampleBestelling.klant.straat} ${sampleBestelling.klant.huisnummer}, ${sampleBestelling.klant.postcode}, ${sampleBestelling.klant.stad}, ${sampleBestelling.klant.land}, and Naturae Design, of van Lennepstraat 6, 3532TN Utrecht, The Netherlands.

In the agreement, the party who is granting the right to sell its merchandise will be referred to as Naturae Design and the other party who is receiving the right to sell the merchandise will be referred to as ${sampleBestelling.klant.klantNaam}<p>
${sampleBestelling.klant.klantNaam} will showcase Naturae Design's line on a consignment basis and will re­evaluate contract at the 6 month mark to determine to upgrade the contract to wholesale.<p>
1.RIGHT TO SELL<br>
In accordance with this Agreement, Naturae Design grants ${sampleBestelling.klant.klantNaam} the right to sell the merchandise under the terms of this Agreement for 6 months. All sales prices and terms of sale shall be determined by mutual consent of the parties.
<p>
2.PROCEEDS OF SALES<br>
${sampleBestelling.klant.klantNaam} will pay to Naturae Design a portion of the sales proceeds which shall be calculated as follows: 50% of the proceeds from the retail price of the merchandise.The amount determined in the previous sentence shall be paid to Naturae Design in accordance with the following schedule. On the 1st of every month ${sampleBestelling.klant.klantNaam} will pay Naturae Design 50% of all sales of the previous month. The payment will be done by transferring the money to Naturae Design Paypal account.
<br>
With each proceeds payment, ${sampleBestelling.klant.klantNaam} will submit to Naturae Design a written report that sets forth the calculation of the amount of the net proceeds payment and the extent of current inventory.

<p>
3.RECORDS<br>
${sampleBestelling.klant.klantNaam} shall keep accurate records regarding the quantities of the merchandise that are sold. Naturae Design shall have the right to inspect such records from time to time after providing reasonable notice of such intent to ${sampleBestelling.klant.klantNaam}.
<p>
4.TITLE OF MERCHANDISE<br>
Consigned merchandise shall remain the property of Naturae Design until sold, except that ${sampleBestelling.klant.klantNaam} shall be responsible for all shortages,loss or damage, while the merchandise is under the control of ${sampleBestelling.klant.klantNaam}

<p>6.DEFAULTS<br>
If ${sampleBestelling.klant.klantNaam} fails to abide by the obligations of this Agreement, including the obligation to remit consignment payment to Naturae Design when due. Naturae Design shall have the option to cancel this Agreement within 30 days written notice to ${sampleBestelling.klant.klantNaam}.
 It is agreed that if ${sampleBestelling.klant.klantNaam} violates the terms of this Agreement irreparable harm will occur, and money damages will be insufficient to compensate Naturae Design. Therefore, Naturae Design will be entitled to seek injunctive relief (i.e., a court order that requires ${sampleBestelling.klant.klantNaam} to comply with this Agreement) to enforce the terms of this Agreement. The prevailing party shall have the right to collect from the other party its reasonable costs and necessary disbursements and attorneys' fees incurred in enforcing this Agreement.
<br><br><br><br><br>
<p>
7. APPLICABLE LAW. <br>
This Agreement shall be governed by the laws of the Netherlands.

<p>8. CONFLICT RESOLUTION.<br>
In the event of a dispute between the parties, the parties hereby also agree that the prevailing party shall be entitled to reasonable attorney fees and costs incurred as a result of the dispute.

<p>9. SIGNATORIES.<br>
This Agreement shall be signed by Daniella van den Huijssen, Owner, on behalf of Naturae Design and by ${sampleBestelling.klant.contactPersoon} on behalf of ${sampleBestelling.klant.klantNaam}.
<br><br>
<p>This Agreement is effective as of <fmt:formatDate pattern="dd-MM-YYYY" value="${sampleBestelling.startDatumContract}"/>.

<p>Signature:
<br><br><br><br><br>
Naturae Design <br> Daniella van den Huijssen
<br><br><br><br><br>
${sampleBestelling.klant.klantNaam} <br>
${sampleBestelling.klant.contactPersoon}




</body>
</html>