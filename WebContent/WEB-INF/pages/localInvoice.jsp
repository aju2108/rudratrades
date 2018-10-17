<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <title>A simple, clean, and responsive HTML invoice template</title>
    
    <style>
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
                                Date: January 1, 2015
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
                                Chandar Dairy.<br>
                                Kansapur Road<br>
                                Yamuna Nagar Haryana
                            </td>
                            
                            <td>
                                Rudra Trading Corp.<br>
                                Khalsa College Road<br>
                                Yamuna Nagar Haryana
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            
            <tr class="heading">
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
            
            <tr class="item">
                <td>
                    0402
                </td>
                
                <td>
                    SKIMMED MILK POWDER
                </td>
                
                <td>
                    25 KG
                </td>
                
                <td>
                    50
                </td>
                
                <td>
                    171.4
                </td>
                
                <td>
                    5
                </td>
                
                <td>
                    42850.00
                </td>
            </tr>
            
            <tr class="item">
                <td>
                    0405
                </td>
                
                <td>
                    Ghee
                </td>
                
                <td>
                    25 KG
                </td>
                
                <td>
                    10
                </td>
                
                <td>
                    171.4
                </td>
                
                <td>
                    5
                </td>
                
                <td>
                    42850.00
                </td>
            </tr>
            
            <tr class="total">
                <td>Bank Detail : </td>
                <td>Central Bank of India</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>Total : 42850.00</td>
            </tr>
            <tr class="total">
                <td>A/c No : 3316808362</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>SGST : 1071.25</td>
            </tr>
            <tr class="total">
                <td>IFSC :-CBIN0283473</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>CGST : 1071.25</td>
            </tr>
            <tr class="total">
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>IGST : 0.00</td>
            </tr>
            <tr class="total">
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>Net Amt. : 44992.50</td>
            </tr>
        </table>
    </div>
</body>
</html>