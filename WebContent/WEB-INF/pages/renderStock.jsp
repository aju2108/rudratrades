<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <title>jQuery DataTables – Column width issues with Bootstrap tabs (Responsive extension - Incorrect breakpoints)</title>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex, nofollow">
  <meta name="googlebot" content="noindex, nofollow">
  <meta name="viewport" content="width=device-width, initial-scale=1">

	<script type="text/javascript" src="https://cdn.datatables.net/t/bs-3.3.6/dt-1.10.11,r-2.0.2/datatables.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/t/bs-3.3.6/dt-1.10.11,r-2.0.2/datatables.min.css">
      
  <style type="text/css">
    .tab-content {
	  	padding:10px;
	  	border-left:1px solid #DDD;
	  	border-bottom:1px solid #DDD;
	  	border-right:1px solid #DDD;
	}
  </style>
  <!-- TODO: Missing CoffeeScript 2 -->

  <script type="text/javascript">
		$(document).ready(function(){
		   $('#example2-tab1-dt').DataTable({
		      responsive: true
		   });
		
		   $('#example2-tab2-dt').DataTable({
		      responsive: true
		   });
		   
		   $('a[data-toggle="tab"]').on('shown.bs.tab', function(e){
		      $($.fn.dataTable.tables(true)).DataTable()
		         .columns.adjust()
		         .responsive.recalc();
		   });   
		   
		});
   </script>
</head>
<body>
  <div class="container">
    <h3>
    <a href="http://www.gyrocode.com/articles/jquery-datatables-column-width-issues-with-bootstrap-tabs/">jQuery DataTables – Column width issues with Bootstrap tabs</a> 
    <small>Responsive extension - Incorrect breakpoints</small>
    </h3>
    <a href="http://www.gyrocode.com/articles/jquery-datatables-column-width-issues-with-bootstrap-tabs/">See full article on Gyrocode.com</a>
    <hr><br>

    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#example2-tab1" aria-controls="example2-tab1" role="tab" data-toggle="tab">Ghee</a></li>
        <li role="presentation"><a href="#example2-tab2" aria-controls="example2-tab2" role="tab" data-toggle="tab">Tab 2</a></li>
        <li role="presentation"><a href="#example2-tab2" aria-controls="example2-tab2" role="tab" data-toggle="tab">Tab 3</a></li>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane fade in active" id="example2-tab1">
            <table id="example2-tab1-dt" class="table table-striped table-bordered table-condensed" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th width="1000px">Brand</th>
                        <th width="1000px">Total Stocks</th>
                        <th>Office</th>
                        <th>Age</th>
                        <th>Start date</th>
                        <th>Salary</th>
                        <th>Phone</th>
                        <th>Extension</th>
                        <th>Department</th>
                        <th>Supervisor</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Tiger Nixon</td>
                        <td>System Architect</td>
                        <td>Edinburgh</td>
                        <td>61</td>
                        <td>2011/04/25</td>
                        <td>$320,800</td>
                        <td>123-456-7890</td>
                        <td>1230</td>
                        <td>IT</td>
                        <td>Dai Rios</td>
                    </tr>
                    <tr>
                        <td>Garrett Winters</td>
                        <td>Accountant</td>
                        <td>Tokyo</td>
                        <td>63</td>
                        <td>2011/07/25</td>
                        <td>$170,750</td>
                        <td>123-456-7890</td>
                        <td>1231</td>
                        <td>Accounting</td>
                        <td>Angelica Ramos</td>
                    </tr>
                    <tr>
                        <td>Ashton Cox</td>
                        <td>Junior Technical Author</td>
                        <td>San Francisco</td>
                        <td>66</td>
                        <td>2009/01/12</td>
                        <td>$86,000</td>
                        <td>123-456-7890</td>
                        <td>1232</td>
                        <td>Marketing</td>
                        <td>Angelica Ramos</td>
                    </tr>
                    <tr>
                        <td>Ashton Cox</td>
                        <td>Junior Technical Author</td>
                        <td>San Francisco</td>
                        <td>66</td>
                        <td>2009/01/12</td>
                        <td>$86,000</td>
                        <td>123-456-7890</td>
                        <td>1232</td>
                        <td>Marketing</td>
                        <td>Angelica Ramos</td>
                    </tr>
                    <tr>
                        <td>Ashton Cox</td>
                        <td>Junior Technical Author</td>
                        <td>San Francisco</td>
                        <td>66</td>
                        <td>2009/01/12</td>
                        <td>$86,000</td>
                        <td>123-456-7890</td>
                        <td>1232</td>
                        <td>Marketing</td>
                        <td>Angelica Ramos</td>
                    </tr>
                    <tr>
                        <td>Ashton Cox</td>
                        <td>Junior Technical Author</td>
                        <td>San Francisco</td>
                        <td>66</td>
                        <td>2009/01/12</td>
                        <td>$86,000</td>
                        <td>123-456-7890</td>
                        <td>1232</td>
                        <td>Marketing</td>
                        <td>Angelica Ramos</td>
                    </tr>
                    <tr>
                        <td>Ashton Cox</td>
                        <td>Junior Technical Author</td>
                        <td>San Francisco</td>
                        <td>66</td>
                        <td>2009/01/12</td>
                        <td>$86,000</td>
                        <td>123-456-7890</td>
                        <td>1232</td>
                        <td>Marketing</td>
                        <td>Angelica Ramos</td>
                    </tr>
                    <tr>
                        <td>Ashton Cox</td>
                        <td>Junior Technical Author</td>
                        <td>San Francisco</td>
                        <td>66</td>
                        <td>2009/01/12</td>
                        <td>$86,000</td>
                        <td>123-456-7890</td>
                        <td>1232</td>
                        <td>Marketing</td>
                        <td>Angelica Ramos</td>
                    </tr>
                    <tr>
                        <td>Ashton Cox</td>
                        <td>Junior Technical Author</td>
                        <td>San Francisco</td>
                        <td>66</td>
                        <td>2009/01/12</td>
                        <td>$86,000</td>
                        <td>123-456-7890</td>
                        <td>1232</td>
                        <td>Marketing</td>
                        <td>Angelica Ramos</td>
                    </tr>
                    <tr>
                        <td>Ashton Cox</td>
                        <td>Junior Technical Author</td>
                        <td>San Francisco</td>
                        <td>66</td>
                        <td>2009/01/12</td>
                        <td>$86,000</td>
                        <td>123-456-7890</td>
                        <td>1232</td>
                        <td>Marketing</td>
                        <td>Angelica Ramos</td>
                    </tr>
                    <tr>
                        <td>Ashton Cox</td>
                        <td>Junior Technical Author</td>
                        <td>San Francisco</td>
                        <td>66</td>
                        <td>2009/01/12</td>
                        <td>$86,000</td>
                        <td>123-456-7890</td>
                        <td>1232</td>
                        <td>Marketing</td>
                        <td>Angelica Ramos</td>
                    </tr>
                    <tr>
                        <td>Ashton Cox</td>
                        <td>Junior Technical Author</td>
                        <td>San Francisco</td>
                        <td>66</td>
                        <td>2009/01/12</td>
                        <td>$86,000</td>
                        <td>123-456-7890</td>
                        <td>1232</td>
                        <td>Marketing</td>
                        <td>Angelica Ramos</td>
                    </tr>
                    <tr>
                        <td>Ashton Cox</td>
                        <td>Junior Technical Author</td>
                        <td>San Francisco</td>
                        <td>66</td>
                        <td>2009/01/12</td>
                        <td>$86,000</td>
                        <td>123-456-7890</td>
                        <td>1232</td>
                        <td>Marketing</td>
                        <td>Angelica Ramos</td>
                    </tr>
                    <tr>
                        <td>Ashton Cox</td>
                        <td>Junior Technical Author</td>
                        <td>San Francisco</td>
                        <td>66</td>
                        <td>2009/01/12</td>
                        <td>$86,000</td>
                        <td>123-456-7890</td>
                        <td>1232</td>
                        <td>Marketing</td>
                        <td>Angelica Ramos</td>
                    </tr>
                    <tr>
                        <td>Ashton Cox</td>
                        <td>Junior Technical Author</td>
                        <td>San Francisco</td>
                        <td>66</td>
                        <td>2009/01/12</td>
                        <td>$86,000</td>
                        <td>123-456-7890</td>
                        <td>1232</td>
                        <td>Marketing</td>
                        <td>Angelica Ramos</td>
                    </tr>
                    <tr>
                        <td>Ashton Cox</td>
                        <td>Junior Technical Author</td>
                        <td>San Francisco</td>
                        <td>66</td>
                        <td>2009/01/12</td>
                        <td>$86,000</td>
                        <td>123-456-7890</td>
                        <td>1232</td>
                        <td>Marketing</td>
                        <td>Angelica Ramos</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div role="tabpanel" class="tab-pane fade" id="example2-tab2">
            <table id="example2-tab2-dt" class="table table-striped table-bordered table-condensed" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Position</th>
                        <th>Office</th>
                        <th>Age</th>
                        <th>Start date</th>
                        <th>Salary</th>
                        <th>Phone</th>
                        <th>Extension</th>
                        <th>Department</th>
                        <th>Supervisor</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Tiger Nixon</td>
                        <td>System Architect</td>
                        <td>Edinburgh</td>
                        <td>61</td>
                        <td>2011/04/25</td>
                        <td>$320,800</td>
                        <td>123-456-7890</td>
                        <td>1230</td>
                        <td>IT</td>
                        <td>Dai Rios</td>
                    </tr>
                    <tr>
                        <td>Garrett Winters</td>
                        <td>Accountant</td>
                        <td>Tokyo</td>
                        <td>63</td>
                        <td>2011/07/25</td>
                        <td>$170,750</td>
                        <td>123-456-7890</td>
                        <td>1231</td>
                        <td>Accounting</td>
                        <td>Angelica Ramos</td>
                    </tr>
                    <tr>
                        <td>Ashton Cox</td>
                        <td>Junior Technical Author</td>
                        <td>San Francisco</td>
                        <td>66</td>
                        <td>2009/01/12</td>
                        <td>$86,000</td>
                        <td>123-456-7890</td>
                        <td>1232</td>
                        <td>Marketing</td>
                        <td>Angelica Ramos</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

  
  <script>
    // tell the embed parent frame the height of the content
    if (window.parent && window.parent.parent){
      window.parent.parent.postMessage(["resultsFrame", {
        height: document.body.getBoundingClientRect().height,
        slug: "Ltga3n4u"
      }], "*")
    }
  </script>
</body>
</html>