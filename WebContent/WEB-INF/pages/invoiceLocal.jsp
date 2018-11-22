<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>A simple, clean, and responsive HTML invoice template</title>
<link href="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style type="text/css">
@page {
	size: auto;
	margin: 0mm;
}
* {
	margin: 0;
	padding: 0;
}

body {
	font-size: 12px;
}

.owner-title {
	display: inline-block;
	width: 70%;
	font-style: italic;
	font-weight: bold;
	font-size: 1.6em;
	text-align: center;
	margin-top: 10px;
	margin-left: -50px;
}

.customer-title {
	display: inline-block;
	width: 70%;
	font-style: italic;
	font-weight: bold;
	font-size: 1.3em;
}

.table {
	margin-bottom: 0px !important;
	overflow: none;
}

.table>tbody>tr>.no-line {
	border-top: 2px solid;
}

.table>thead>tr>.no-line {
	border-bottom: none;
}

.table>tbody>tr>.thick-line {
	border-top: 2px solid;
}

.invoice-title {
	width: 100%;
	float: left;
	border-bottom: solid 2px #000000;
	margin-bottom: 6px;
	padding-bottom: 6px;
}

/*.invoice-title span {display: inline-block; width: 70%; font-size: 1.5em;}*/
.invoice-title h2 {
	width: 35%;
	float: left;
}

.invoice-title h3 {
	width: 65%;
	float: left;
	font-size: 1.65em;
}

.invoiceOrder {
	font-size: 1em;
	text-align: center;
	float: left;
}

/*.invoice-title h2, .invoice-title h3 {display: inline-block;}*/
.mainDiv {
	width: 720px !important;
	border-style: solid;
	margin-top: 20px;
}

.margin0 {
	margin: 0 !important
}

.bottom1 {
	margin: 7px 0 0 0;
	float: left;
}

.signature {
	margin: 7px 0 0 0;
	float: right;
	margin-right: 85px;
}

.padding0 {
	padding: 0 !important
}

.borderNone {
	border: none !important;
}

.marginTop40 {
	margin-top: 40px;
}

.hrDiv {
	margin: 0px 0px 10px 0px;
	border: 0;
	border-top: 1px solid #eee;
}

.extraDiv10 {
	padding: 0 !important;
	margin: -25px 0 -8px !important;
}

.bottomborder {
	border: solid 2px #000000;
	padding: 3px 5px !important;
}

.leftborder {
	border-left: solid 2px #000000 !important;
}

.ownerDiv {
	font-size: 1em;
	text-align: center;
	margin-right: 0%;
	line-height: 1.2em;
	margin-top: 0px;
}

.topLeftDiv {
	font-size: 1em;
	text-align: left;
	float: left;
	margin-left: -15%;
	line-height: 1.2em;
	margin-top: 88px;
}

.topLeftDiv1 {
	font-size: 1em;
	text-align: left;
	float: left;
	margin-left: 0%;
	line-height: 1.2em;
	margin-top: 88px;
}

.topCenterDiv {
	font-size: 1em;
	text-align: left;
	float: left;
	margin-left: 18%;
	line-height: 1.2em;
	margin-top: -8px;
}

.topRightDiv {
	font-size: 0.6em;
	text-align: right;
	float: right;
	line-height: 2.6em;
	margin-top: 8px;
	margin-right: 0%;
}

.logoDiv {
	font-size: 1em;
	text-align: left;
	float: left;
	margin-left: 2%;
	line-height: 1.2em;
	margin-top: 15px;
}

.fotter {
	margin-left: -15px;
	margin-right: -15px;
	margin-top: -8px;
}

address {
	margin-bottom: 10px;
}

row {
	margin-bottom: 0px;
}
</style>
</head>

<body>
	<div class="container mainDiv">
		<div class="row">
			<div class="col-xs-12">
				<div class="invoice-title">
					<div class="row">
						<div class="col-xs-4">
							<div class="logoDiv">
								<img src="resources/images/logo1.jpeg" alt="Rudra Trading Corp"
									style="width: 130px; height: 55px;">
							</div>
							<span style="float: left; margin-top: 27px;"> <strong>
									State Code : </strong>${users.statecode}<br> <strong>
									GSTIN : </strong>${users.gstin}
							</span>
						</div>

						<div class="col-xs-8">
							<span style="margin-bottom: 20px;">
								<div class="topCenterDiv">
									<h3>
										<span>${viewBill.billPaymentType}</span>
									</h3>
								</div>
								<div class="topRightDiv">
									<h5>
										<span>Order # 12345</span>
									</h5>
								</div>
							</span> <span class="owner-title">${users.company}</span><br> <span
								style="text-align: center; float: left; margin-left: -40px;">
								<strong>M.No : </strong>${users.phone1}, ${users.phone2}<br>
								<strong> Email : </strong>${users.emailaddress}<br>
								${users.address}
							</span>
						</div>
					</div>
				</div>

				<hr class="hrDiv">
				<div class="row">
					<div class="col-xs-6">
						<address>
							<span class="customer-title">${viewBill.customer.name}</span><br>
							<c:if test="${not empty viewBill.customer.address}">
	    					${viewBill.customer.address}
							</c:if>
							<c:if test="${not empty viewBill.customer.phone}">
	                    	,${viewBill.customer.phone}
							</c:if>
							<c:if test="${not empty viewBill.customer.gstin}">
	                    	,${viewBill.customer.gstin}
							</c:if>
							<c:if test="${not empty viewBill.customer.emailaddress}">
	                    	,${viewBill.customer.emailaddress}
							</c:if>
							<br>${viewBill.customer.distt}, ${viewBill.customer.state}<br>
							<br>
						</address>
					</div>

					<div class="col-xs-6 text-right">
						<strong>Date : </strong>${viewBill.date}, ${viewBill.time}<br> <strong>
						Vehical No : </strong>${viewBill.vehicleNo}<br>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default extraDiv10">
					<div class="panel-body padding0 ">
						<div class="table-responsive padding0 margin0 ">
							<table class="table table-condensed margin0 bottomborder">
								<thead class="panel panel-default borderNone">
									<tr class="panel panel-heading borderNone">
										<td class="text-center bottomborder"><strong>#</strong></td>
										<td class="text-center  bottomborder"><strong>HSN
												Code</strong></td>
										<td class="text-center  bottomborder"><strong>Product
												Name</strong></td>
										<td class="text-center  bottomborder"><strong>Packing</strong></td>
										<td class="text-center  bottomborder"><strong>Quantity</strong></td>
										<td class="text-center  bottomborder"><strong>Rate</strong></td>
										<td class="text-center  bottomborder"><strong>GST</strong></td>
										<td class="text-center  bottomborder"><strong>Amount</strong></td>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${viewBill.billDetailsMap}" var="items">
										<tr>
											<td class="text-center bottomborder">${items.key}</td>
											<td class="text-center  bottomborder">
												${items.value.hsnCode}</td>
											<td class="text-center  bottomborder">${items.value.product}</td>
											<td class="text-center  bottomborder">${items.value.packing}</td>
											<td class="text-center  bottomborder">${items.value.quantity}</td>
											<td class="text-center  bottomborder">${items.value.rate}</td>
											<td class="text-center  bottomborder">${items.value.gst}
												%</td>
											<td class="text-center bottomborder">${items.value.amount}</td>
										</tr>
									</c:forEach>
									<!-- 
									<tr>
										<td class="text-center bottomborder"></td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
									</tr>

									<tr>
										<td class="text-center bottomborder"></td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
									</tr>

									<tr>
										<td class="text-center bottomborder"></td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
									</tr>

									<tr>
										<td class="text-center bottomborder"></td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
										<td class="text-center  bottomborder">&nbsp;</td>
									</tr>
									 -->
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br />

		<div class="fotter">
			<div class="col-xs-5">
				<address>
					<strong>${viewBill.netAmountInWords}</strong><br>
					<br>
				</address>

				<address class="bottom1">
					<strong>Bank Name : </strong>${users.bankname}<br> <strong>A/c
						No : </strong>${users.bankaccountnumber}<br> <strong>IFSC : </strong>${users.bankifsccode}<br>
				</address>
			</div>

			<div class="col-xs-4 text-center">
				<address>
					<br>
					<br>
					<strong>For Rudra Trading Company</strong><br>
					<br>
					<br>
					<samp class="signature">
						<strong>Signature</strong>
					</samp>
				</address>
			</div>

			<div class="col-xs-3 text-right">
				<div class="panel-body padding0 ">
					<div class="table-responsive padding0 margin0">
						<table class="table table-condensed margin0 bottomborder">
							<tbody>
								<tr>
									<td class="text-left bottomborder"><strong>Total</strong></td>
									<td class="text-right bottomborder">${viewBill.total}</td>
								</tr>

								<tr>
									<td class="text-left bottomborder"><strong>SGST</strong></td>
									<td class="text-right bottomborder">${viewBill.sgst}</td>
								</tr>

								<tr>
									<td class="text-left bottomborder"><strong>CGST</strong></td>
									<td class="text-right bottomborder">${viewBill.cgst}</td>
								</tr>

								<tr>
									<td class="text-left bottomborder"><strong>Net
											Amt</strong></td>
									<td class="text-right bottomborder">${viewBill.netAmount}</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<br />
	</div>
	<br />

	<div class="container">
		<div class="row">
			<div class="col-xs-12 text-center">
				<button id="printButton" onclick="printpage()" type="button"
					class="btn btn-primary">&nbsp;&nbsp;Print&nbsp;&nbsp;</button>
				<button id="closeButton"
					onclick="window.location.href='${pageContext.request.contextPath}/dashboard'"
					type="button" class="btn btn-success">&nbsp;&nbsp;Close&nbsp;&nbsp;</button>
			</div>
		</div>
	</div>
	<br />
	<script>
		function printpage() {
			var printButton = document.getElementById("printButton");
			var closeButton = document.getElementById("closeButton");
			printButton.style.visibility = 'hidden';
			closeButton.style.visibility = 'hidden';
			window.print()
			printButton.style.visibility = 'visible';
			closeButton.style.visibility = 'visible';
		}
	</script>
</body>
</html>