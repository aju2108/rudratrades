<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Photography Form Responsive Widget Template :: w3layouts</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Photography Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Meta tag Keywords -->
	<!-- css files -->
	<link rel="stylesheet" href="resources/css/style-create-bill.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<!-- //web-fonts -->
</head>
<body>
<!-- header -->
	<div class="footer">
		<h2>Create Bill</h2>
	</div>
	<!-- //header -->
	<!-- content -->
	<div class="main-content-agile">
		<div class="sub-main-w3">
			<form:form method="POST" commandName="renderbill" action="submitBill">
			<div class="w3layouts-grids">
				<div class="form-style-agile form-grids-w3l">
					<label>Customer</label>
					<form:select class="category" path="customer" placeholder="Select Customer" required="required">
							<%-- <form:option value="" label="Select Customer"/> --%>
							<form:options items="${renderbill.customersMap}"/>
						</form:select>
				</div>
				<div class="form-style-agile form-grids-w3l">
					<label>Product</label>
					<form:select class="category" path="product" placeholder="Select Product" required="required">
						<%-- <form:option value="" label="Select Product"/> --%>
						<form:options items="${renderbill.productsMap}"/>
					</form:select>
				</div>
			</div>
				<div class="w3layouts-grids">
					<div class="form-style-agile form-grids-w3l">
						<label>HSN Code</label>
						<form:input path = "hsnCode" placeholder="HSN Code" required="required" />
					</div>
					<div class="form-style-agile form-grids-w3l">
						<label>Brand</label>
						<form:select class="category" path="brand" placeholder="Select Brand" required="required">
							<%-- <form:option value="" label="Select Packing"/> --%>
							<form:options items="${renderbill.brandsMap}"/>
						</form:select>
					</div>
				</div>
				<div class="w3layouts-grids">
					<div class="form-style-agile form-grids-w3l">
						<label>Packing</label>
						<form:select class="category" path="packing" placeholder="Select Packing" required="required">
							<%-- <form:option value="" label="Select Packing"/> --%>
							<form:options items="${renderbill.packgingMap}"/>
						</form:select>
					</div>
					<div class="form-style-agile form-grids-w3l">
						<label>Quantity</label>
						<form:select class="category" path="quantity" placeholder="Select Quantity" required="required">
							<%-- <form:option value="" label="Select Quantity"/> --%>
							<form:options items="${renderbill.quantityMap}"/>
						</form:select>
					</div>
				</div>
				<div class="w3layouts-grids">
					<div class="form-style-agile form-grids-w3l">
						<label>Unit</label>
						<form:select class="category" path="unit" placeholder="Select Unit" required="required">
							<%-- <form:option value="" label="Select Unit"/> --%>
							<form:options items="${renderbill.unitMap}"/>
						</form:select>
					</div>
					<div class="form-style-agile form-grids-w3l">
						<label>Select Date</label>
						<form:input path="date" id="date" placeholder="Select Date" name="date" required="" />
					</div>
				</div>
				
				<div class="w3layouts-grids">
					<div class="form-style-agile form-grids-w3l">
						<label>Select Time</label>
						<input type="text" id="timepicker" name="time" class="timepicker form-control" placeholder="Select Time" value=""  required="">
					</div>
				</div>	
				<input type="submit" value="${renderbill.buttonName}">
			</form:form>
		</div>
	</div>
	<!-- content -->
	<!-- footer -->
	<div class="footer">
	</div>
	<!-- //footer -->


	<!-- js -->
	<script src="../resources/js/datepicker-jquery-2.1.4.min.js"></script>

	<!-- date-->
	<script src="../resources/js/datepicker-jquery-ui.js"></script>
	<script>
		$(function () {
			$("#date").datepicker();
		});
	</script>
	<!-- //date --> 

	<!-- time -->
	<script src="../resources/js/timepicker-wickedpicker.js"></script>
	<script>
		$('.timepicker').wickedpicker({
			twentyFour: false
		});
	</script>
	<link href="../resources/css/timepicker-wickedpicker.css" rel="stylesheet" type='text/css' media="all" />
	<!-- //time -->
</body>
</html>