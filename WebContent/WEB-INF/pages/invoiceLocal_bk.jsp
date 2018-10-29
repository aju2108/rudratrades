<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <title>A simple, clean, and responsive HTML invoice template</title>
    
    <style>
    @page { size: auto;  margin: 0mm; }
    
    .invoice-box {
        max-width: 800px;
        margin: auto;
        padding: 30px;
        border: 1px solid #eee;
        box-shadow: 0 0 10px rgba(0, 0, 0, .15);
        font-size: 16px;
        line-height: 24px;
        font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        color: #555;
    }
    
    .invoice-box table {
        width: 100%;
        line-height: inherit;
        text-align: left;
    }
    
    .invoice-box table td {
        padding: 5px;
        vertical-align: top;
    }
    
    .invoice-box table tr td:nth-child(2) {
        text-align: right;
    }
    
    .invoice-box table tr.top table td {
        padding-bottom: 20px;
    }
    
    .invoice-box table tr.top table td.title {
        font-size: 45px;
        line-height: 45px;
        color: #333;
    }
    
    .invoice-box table tr.information table td {
        padding-bottom: 40px;
    }
    
    .invoice-box table tr.heading td {
        background: #eee;
        border-bottom: 1px solid #ddd;
        font-weight: bold;
    }
    
    .invoice-box table tr.details td {
        padding-bottom: 20px;
    }
    
    .invoice-box table tr.item td{
        border-bottom: 1px solid #eee;
    }
    
    .invoice-box table tr.item.last td {
        border-bottom: none;
    }
    
    .invoice-box table tr.total td:nth-child(2) {
        border-top: 2px solid #eee;
        font-weight: bold;
    }
    
    @media only screen and (max-width: 600px) {
        .invoice-box table tr.top table td {
            width: 100%;
            display: block;
            text-align: center;
        }
        
        .invoice-box table tr.information table td {
            width: 100%;
            display: block;
            text-align: center;
        }
    }
    
    /** RTL **/
    .rtl {
        direction: rtl;
        font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
    }
    
    .rtl table {
        text-align: right;
    }
    
    .rtl table tr td:nth-child(2) {
        text-align: left;
    }
    </style>
</head>
<body>
    <div class="invoice-box">
        <table cellpadding="0" cellspacing="0">
            <tr class="top">
                <td colspan="7">
                    <table>
                        <tr>
                            <td class="title">
                                <img src="https://www.sparksuite.com/images/logo.png" style="width:100%; max-width:300px;">
                            </td>
                            
                            <td>
                                Invoice #: 123<br>
                                Date: 12 Dec 2018<br>
                                Vehical No : ${users.vehicleno}
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            
            <tr class="information">
                <td colspan="7">
                    <table>
                        <tr>
                            <td>
                                ${viewBill.customer.name}<br>
                                ${viewBill.customer.address}<br>
                                ${viewBill.customer.distt} ${viewBill.customer.state}<br>
                                ${viewBill.customer.phone}<br>
                                ${viewBill.customer.gstin}<br>
                                ${viewBill.customer.emailaddress}
                            </td>
                            
                            <td>
                                ${users.company}<br>
                                ${users.address}<br>
                                GSTIN : ${users.gstin}<br>
                                State Code : ${users.statecode}<br>
                                ${users.phone1}<br>
                                ${users.phone2}<br>
                                <a href="mailto:sanjay.yadavmkt@gmail.com">${users.emailaddress}</a><br>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            
            <tr class="heading">
            	<td>
                    #
                </td>
                
                <td>
                    HSN Code
                </td>
                
                <td>
                    Product Name
                </td>
                
                <td>
                    Packing
                </td>
                
                <td>
                    Quantity
                </td>
                
                <td>
                    Rate
                </td>
                
                <td>
                    GST
                </td>
                
                <td>
                    Amount
                </td>
            </tr>
            
            <c:forEach items="${viewBill.billDetailsMap}" var="items">
	            <tr class="item">
	                <td>
	                    ${items.key}
	                </td>
	                
	                <td>
	                    ${items.value.hsnCode}
	                </td>
	                
	                <td>
	                    ${items.value.product}
	                </td>
	                
	                <td>
	                    ${items.value.packing}
	                </td>
	                
	                <td>
	                    ${items.value.quantity}
	                </td>
	                
	                <td>
	                    ${items.value.rate}
	                </td>
	                
	                <td>
	                    ${items.value.gst} %
	                </td>
	                
	                <td>
	                    ${items.value.amount}
	                </td>
	            </tr>
	         </c:forEach>
            
            
            
            <tr class="total">
                <td>Bank Detail : </td>
                <td>${users.bankname}</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>Total : ${viewBill.total}</td>
            </tr>
            <tr class="total">
                <td>A/c No : ${users.bankaccountnumber}</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>SGST : ${viewBill.sgst}</td>
            </tr>
            <tr class="total">
                <td>IFSC :-${users.bankifsccode}</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>CGST : ${viewBill.cgst}</td>
            </tr>
            <tr class="total">
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>IGST : ${viewBill.igst}</td>
            </tr>
            <tr class="total">
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>Net Amt. : ${viewBill.netAmount}</td>
            </tr>
            <tr class="total">
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>Net Amt. : ${viewBill.netAmountInWords}</td>
            </tr>
        </table>
    </div>
    <button id="printButton" onclick="printpage()">Print</button>
    <button id="closeButton" onclick="window.location.href='${pageContext.request.contextPath}/dashboard'">Close</button>
    <script>
    function printpage() {
        //Get the print button and put it into a variable
        var printButton = document.getElementById("printButton");
        var closeButton = document.getElementById("closeButton");
        //Set the print button visibility to 'hidden' 
        printButton.style.visibility = 'hidden';
        closeButton.style.visibility = 'hidden';
        //Print the page content
        window.print()
        printButton.style.visibility = 'visible';
        closeButton.style.visibility = 'visible';
    }
</script>
</body>
</html>