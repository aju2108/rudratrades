<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
	<title>Rudra Trading Co | Invoice</title>
	<link rel="stylesheet" href="resources/css/style-view-bill.css" media="all" />
</head>
<body>
<header class="clearfix">
      <div id="logo">
        <img src="resources/images/logo.png">
      </div>
      <div id="company">
        <h2 class="name">${users.company}</h2>
        <div>${users.address}</div>
        <div>GSTIN : ${users.gstin}</div>
        <div>State Code : ${users.statecode}</div>
        <div>${users.phone1}</div>
        <div>${users.phone2}</div>
        <div><a href="mailto:sanjay.yadavmkt@gmail.com">${users.emailaddress}</a></div>
      </div>
      </div>
    </header>
    <main>
      <div id="details" class="clearfix">
        <div id="client">
          <div class="to">INVOICE TO:</div>
          <h2 class="name">${viewBill.customerObj.name}</h2>
          <div class="address">${viewBill.customerObj.address}</div>
          <div class="address">${viewBill.customerObj.distt} ${viewBill.customerObj.state}</div>
          <div class="address">${viewBill.customerObj.phone}</div>
          <div class="address">${viewBill.customerObj.gstin}</div>
          <div class="email"><a href="mailto:john@example.com">${viewBill.customerObj.emailaddress}</a></div>
        </div>
        <div id="invoice">
          <h1>INVOICE RCT-1001</h1>
          <div class="date">Date of Invoice: ${viewBill.dateTime}</div>
          <div class="date">Vehical No : ${users.vehicleno}</div>
        </div>
      </div>
      <table border="0" cellspacing="0" cellpadding="0">
        <thead>
          <tr>
            <th class="no">#</th>
            <th class="product">PRODUCT</th>
            <th class="hsn">HSN</th>
            <th class="packing">PACKING</th>
            <th class="qty">QUANTITY</th>
            <th class="unit">UNIT</th>
             <th class="unit">RATE</th>
              <th class="unit">GST@</th>
            <th class="total">AMOUNT</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach items="${viewBill.billMap}" var="items">
	        <tr>
	            <td class="no">${items.key}</td>
	            <td class="product"><h3>${items.value.product}</h3></td>
	            <td class="hsn">${items.value.hsnCode}</td>
	            <td class="packing">${items.value.packing}</td>
	            <td class="qty">${items.value.quantity}</td>
	            <td class="unit">${items.value.unit}</td>
	            <td class="unit">178</td>
	            <td class="unit">5</td>
	            <td class="total">₹1,200.00</td>
	          </tr>
		</c:forEach>
		
        </tbody>
        <tfoot>
          <tr>
            <td colspan="2" class="bank1">Bank Detail : ${users.bankname}</td>
            <td colspan="2"></td>
            <td colspan="2">SUBTOTAL</td>
            <td>₹5,200.00</td>
          </tr>
          <tr>
            <td colspan="2" class="bank2">A/c No : ${users.bankaccountnumber}<br>IFSC : ${users.bankifsccode}</td>
            <td colspan="2"></td>
            <td colspan="2">TAX 25%</td>
            <td>₹1,300.00</td>
          </tr>
          <tr>
            <td colspan="2"></td>
            <td colspan="2"></td>
            <td colspan="2">GRAND TOTAL</td>
            <td>₹6,500.00</td>
          </tr>
        </tfoot>
      </table>
      <div id="thanks">Signature</div>
      <div id="notices">
        <div class="notice">This Invoice is generate by ${users.company} and ${users.trademark}</div>
      </div>
    </main>
    </footer>
</body>
</html>