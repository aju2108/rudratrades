<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
    <title>A simple, clean, and responsive HTML invoice template</title>
<link href="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style type="text/css">
@page { size: auto;  margin: 0mm; }
.invoice-title h2, .invoice-title h3 {
display: inline-block; 
}
.invoice-title span {display: inline-block; width: 70%; font-size: 1.5em;}
.owner-title {display: inline-block; width: 70%;font-style: italic;font-weight: bold; font-size: 1.5em;}
.table {margin-bottom: 5px !important;}
.table > tbody > tr > .no-line {
border-top: none;
}

.table > thead > tr > .no-line {
border-bottom: none;
}

.table > tbody > tr > .thick-line {
border-top: 2px solid;
}
.mainDiv {width: 880px !important;}
.margin0 {margin:0 !important}
.padding0 {padding:0 !important}
.borderNone {border:none !important;}

.hrDiv {margin:0px 0px 10px 0px;border: 0;border-top: 1px solid #eee;}
.extraDiv10 {padding: 0 !important; margin: 0 0 10px !important;}
.bottomborder {border:solid 2px #000000;}
.leftborder {border-left:solid 2px #000000 !important;}
</style>
</head>

<body>

<div class="container mainDiv">
    <div class="row">
        <div class="col-xs-12">
            <div class="invoice-title">
                
                <h2>Invoice</h2><span class="text-center">Cash</span><!-- <h3 class="pull-right">Order # 12345</h3>-->
            </div>
            <hr class="hrDiv">
            <div class="row">
                <div class="col-xs-6">
                    <address class="extraDiv10">
                    <span class="owner-title">${users.company}</span><br>
                        ${users.address}<br>
                        <strong> GSTIN : </strong>${users.gstin}<br>
                        <strong> Email : </strong>${users.emailaddress}<br>
                        <strong> M.No : </strong>${users.phone1}, ${users.phone2}<br>
                        <strong> State Code : </strong>${users.statecode}
                    </address>
                </div>
                <div class="col-xs-6 text-right">
                    <address>
                    <span class="owner-title">${viewBill.customer.name}</span><br>
                    <c:if test="${not empty viewBill.customer.address}">
    					${viewBill.customer.address}<br>
					</c:if>
                    <c:if test="${not empty viewBill.customer.phone}">
                    	${viewBill.customer.phone}<br>
                    </c:if>
                    <c:if test="${not empty viewBill.customer.gstin}">
                    	${viewBill.customer.gstin}<br>
                    </c:if>
                    <c:if test="${not empty viewBill.customer.emailaddress}">
                    	${viewBill.customer.emailaddress}<br>
                    </c:if>   
                    ${viewBill.customer.distt} ${viewBill.customer.state}<br><br>  
                        <strong>Date : </strong>12 Dec 2018<br>
                        <strong>Vehical No : </strong>${users.vehicleno}<br>
                    </address>
                </div>
            </div>
            <!--<div class="row">
                <div class="col-xs-6">
                    <address>
                        <strong>Payment Method:</strong><br>
                        Visa ending **** 4242<br>
                        jsmith@email.com
                    </address>
                </div>
                <div class="col-xs-6 text-right">
                    <address>
                        <strong>Order Date:</strong><br>
                        March 7, 2014<br><br>
                    </address>
                </div>
            </div>-->
        </div>
    </div>
    
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default extraDiv10">
                <!-- <div class="panel-heading">
                    <h3 class="panel-title"><strong>Order summary</strong></h3>
                </div> -->


                <div class="panel-body padding0 bottomborder">
                    <div class="table-responsive">
                        <table class="table table-condensed margin0">
                            <thead class="panel panel-default borderNone">
                                <tr class="panel panel-heading borderNone">
                                    <td class="text-center"><strong>#</strong></td>
                                    <td class="text-center leftborder"><strong>HSN Code</strong></td>
                                    <td class="text-center leftborder"><strong>Product Name</strong></td>
                                    <td class="text-center leftborder"><strong>Packing</strong></td>
                                    <td class="text-center leftborder"><strong>Quantity</strong></td>
                                    <td class="text-center leftborder"><strong>Rate</strong></td>
                                    <td class="text-center leftborder"><strong>GST</strong></td>
                                    <td class="text-center leftborder"><strong>Amount</strong></td>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${viewBill.billDetailsMap}" var="items">
	                                <tr>
	                                    <td class="text-center">${items.key}</td>
	                                    <td class="text-center leftborder"> ${items.value.hsnCode}</td>
	                                    <td class="text-center leftborder">${items.value.product}</td>
	                                    <td class="text-center leftborder">${items.value.packing}</td>
	                                    <td class="text-center leftborder">${items.value.quantity}</td>
	                                    <td class="text-center leftborder">${items.value.rate}</td>
	                                    <td class="text-center leftborder">${items.value.gst} %</td>
	                                    <td class="text-center leftborder">${items.value.amount}</td>
	                                </tr>
                                </c:forEach>
                                <tr>
                                    <td class="text-center"></td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text-center"></td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text-center"></td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text-center"></td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                    <td class="text-center leftborder">&nbsp;</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
                <div class="col-xs-6">
                    <address>
                        <strong>${viewBill.netAmountInWords}</strong><br><br>
                        <strong>Bank Name : </strong>${users.bankname}<br>
                        <strong>A/c No : </strong>${users.bankaccountnumber}<br>
                        <strong>IFSC : </strong>${users.bankifsccode}<br>
                    </address>
                </div>

                <div class="col-xs-3 text-center">
                    <address>
                        <br><br><strong>For Rudra Trading Company</strong><br><br><br><strong>Signature</strong>
                    </address>

                </div>


                <div class="col-xs-3 text-right">

                    <div class="panel-body padding0 bottomborder">
                    <div class="table-responsive">
                        <table class="table table-condensed margin0">                            
                            <tbody>
                                <!-- foreach ($order->lineItems as $line) or some such thing here -->
                                <tr>
                                    <td class="text-center borderNone"><strong>Total</strong></td>
                                    <td class="text-center borderNone leftborder">${viewBill.total}</td>
                                </tr>
                                <tr>
                                    <td class="text-center"><strong>SGST</strong></td>
                                    <td class="text-center leftborder">${viewBill.sgst}</td>
                                </tr>
                                <tr>
                                    <td class="text-center"><strong>CGST</strong></td>
                                    <td class="text-center leftborder">${viewBill.cgst}</td>
                                </tr>
                                <tr>
                                    <td class="text-center"><strong>Net Amt</strong></td>
                                    <td class="text-center leftborder">${viewBill.netAmount}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
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
                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>