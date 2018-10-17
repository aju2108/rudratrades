<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Table V04</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/css/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/css/main-bill-list.css">
<!--===============================================================================================-->
</head>
<body>
				<div class="table100 ver1 m-b-110">
					<div class="table100-head">
						<table id="billListTable">
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">Product</th>
									<th class="cell100 column2">HSN Code</th>
									<th class="cell100 column2">Brand</th>
									<th class="cell100 column3">Packing</th>
									<th class="cell100 column4">Quantity</th>
									<th class="cell100 column5">Unit</th>
									<th class="cell100 column5">Actions</th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
							<c:forEach var="bill" items="${renderbill.billMap}">
								<tr class="row100 body">
									<td class="cell100 column1">${bill.value.product}</td>
									<td class="cell100 column2">${bill.value.hsnCode}</td>
									<td class="cell100 column2">${bill.value.brand}</td>
									<td class="cell100 column3">${bill.value.packing}</td>
									<td class="cell100 column4">${bill.value.quantity}</td>
									<td class="cell100 column5">${bill.value.unit}</td>
									<td class="cell100 column6"><button onclick="deleteRow(2)">Delete</button></td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div class="footer">
						<button name="createBill" value="Create Bill" type="button"><a href="createBill">Create Bill</a></button>
				</div>

	<script>
		function deleteRow(row) {
			//var i = row.parentNode.parentNode.rowIndex;
			var i = row;
			document.getElementById('billListTable').deleteRow(i);
		}
	</script>
</body>
</html>