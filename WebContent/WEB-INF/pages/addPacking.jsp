<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Data Table | Adminpro - Admin Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i,800" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/font-awesome.min.css">
    <!-- adminpro icon CSS
		============================================ -->
    <link rel="stylesheet" href="css/adminpro-custon-icon.css">
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/meanmenu.min.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/jquery.mCustomScrollbar.min.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/data-table/bootstrap-table.css">
    <link rel="stylesheet" href="resources/css/data-table/bootstrap-editable.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/normalize.css">
    <!-- charts CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/c3.min.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/adminpro/style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="resources/js/vendor/modernizr-2.8.3.min.js"></script>


</head>

<body class="materialdesign">
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- Header top area start-->
    <div class="wrapper-pro">
    
<!-- ************************************************************************* Left Navigation Menu START******************************************************************************** -->
        <div class="left-sidebar-pro">
            <nav id="sidebar">
                <div class="sidebar-header">
                    <a href="#"><img src="resources/img/message/1.jpg" alt="" />
                    </a>
                    <h3>Sinto Joes</h3>
                    <p>Owner</p>
                    <strong>RTC</strong>
                </div>
                <div class="left-custom-menu-adp-wrap">
                    <ul class="nav navbar-nav left-sidebar-menu-pro">
                        <li class="nav-item">
                            <a href="my.html" role="button" aria-expanded="false">
                            	<i class="fa big-icon fa-home"></i> 
                            		<span class="mini-dn">Home</span> 
                            </a>
                        </li>
                        
                        <li class="nav-item">
	                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
		                        <i class="fa big-icon fa-envelope"></i> 
		                        <span class="mini-dn">Product</span> 
		                        <span class="indicator-right-menu mini-dn">
		                        	<i class="fa indicator-mn fa-angle-left"></i>
		                        </span>
		                        </a>
                            <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
                                <a href="inbox.html" class="dropdown-item">Add Product</a>
                                <a href="view-mail.html" class="dropdown-item">View Product</a>
                                <a href="compose-mail.html" class="dropdown-item">Delete Product</a>
                            </div>
                        </li>
                        
                        <li class="nav-item">
	                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
		                        <i class="fa big-icon fa-envelope"></i> 
		                        <span class="mini-dn">Brand</span> 
		                        <span class="indicator-right-menu mini-dn">
		                        	<i class="fa indicator-mn fa-angle-left"></i>
		                        </span>
		                        </a>
                            <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
                                <a href="inbox.html" class="dropdown-item">Add Brand</a>
                                <a href="view-mail.html" class="dropdown-item">View Brand</a>
                                <a href="compose-mail.html" class="dropdown-item">Delete Brand</a>
                            </div>
                        </li>
                        
                        <li class="nav-item">
	                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
		                        <i class="fa big-icon fa-envelope"></i> 
		                        <span class="mini-dn">Packing</span> 
		                        <span class="indicator-right-menu mini-dn">
		                        	<i class="fa indicator-mn fa-angle-left"></i>
		                        </span>
		                        </a>
                            <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
                                <a href="${pageContext.request.contextPath}/packings" class="dropdown-item">Add Packing</a>
                            </div>
                        </li>
                        
                        <li class="nav-item">
	                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
		                        <i class="fa big-icon fa-envelope"></i> 
		                        <span class="mini-dn">Customer</span> 
		                        <span class="indicator-right-menu mini-dn">
		                        	<i class="fa indicator-mn fa-angle-left"></i>
		                        </span>
		                        </a>
                            <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
                                <a href="inbox.html" class="dropdown-item">Add Customer</a>
                                <a href="view-mail.html" class="dropdown-item">View Customer</a>
                                <a href="compose-mail.html" class="dropdown-item">Delete Customer</a>
                            </div>
                        </li>
                        
                        <li class="nav-item">
	                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
		                        <i class="fa big-icon fa-envelope"></i> 
		                        <span class="mini-dn">Rates</span> 
		                        <span class="indicator-right-menu mini-dn">
		                        	<i class="fa indicator-mn fa-angle-left"></i>
		                        </span>
		                        </a>
                            <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
                                <a href="${pageContext.request.contextPath}/showrates" class="dropdown-item">Add Products Rates</a>
                                <a href="view-mail.html" class="dropdown-item">View Products Rates</a>
                                <a href="compose-mail.html" class="dropdown-item">Update Products Rates</a>
                            </div>
                        </li>
                        
                        <li class="nav-item">
	                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
		                        <i class="fa big-icon fa-envelope"></i> 
		                        <span class="mini-dn">Billing</span> 
		                        <span class="indicator-right-menu mini-dn">
		                        	<i class="fa indicator-mn fa-angle-left"></i>
		                        </span>
		                        </a>
                            <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
                                <a href="${pageContext.request.contextPath}/createbill" class="dropdown-item">Create Bill</a>
                            </div>
                        </li>
                        
                        <li class="nav-item">
	                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
		                        <i class="fa big-icon fa-envelope"></i> 
		                        <span class="mini-dn">Sales</span> 
		                        <span class="indicator-right-menu mini-dn">
		                        	<i class="fa indicator-mn fa-angle-left"></i>
		                        </span>
		                        </a>
                            <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
                                <a href="inbox.html" class="dropdown-item">Sale History</a>
                            </div>
                        </li>
                        
                        <li class="nav-item">
	                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
		                        <i class="fa big-icon fa-envelope"></i> 
		                        <span class="mini-dn">Purchase</span> 
		                        <span class="indicator-right-menu mini-dn">
		                        	<i class="fa indicator-mn fa-angle-left"></i>
		                        </span>
		                        </a>
                            <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
                                <a href="inbox.html" class="dropdown-item">View All Purchases</a>
                            </div>
                        </li>
                        
                    </ul>
                </div>
            </nav>
        </div>
<!-- ************************************************************************* Left Navigation Menu END******************************************************************************** -->
        <!-- Header top area start-->
        <div class="content-inner-all">
            <div class="header-top-area">
                <div class="fixed-header-top">
                    <div class="container-fluid">
                        <div class="row">
<!-- ************************************************************************* Minimize button and Admin Logo START******************************************************************************** -->
                            <div class="col-lg-1 col-md-6 col-sm-6 col-xs-12">
                                <button type="button" id="sidebarCollapse" class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
                                    <i class="fa fa-bars"></i>
                                </button>
                                <div class="admin-logo logo-wrap-pro">
                                    <a href="#"><img src="resources/img/logo/log.png" alt="" />
                                    </a>
                                </div>
                            </div>
 <!-- ************************************************************************* Minimize button and Admin Logo END******************************************************************************** -->
                            
<!-- ************************************************************************* Top Center Navigation Menu START******************************************************************************** -->
                            
                            <div class="col-lg-6 col-md-1 col-sm-1 col-xs-12">
                                <div class="header-top-menu tabl-d-n">
                                    <ul class="nav navbar-nav mai-top-nav">
                                        <li class="nav-item"><a href="#" class="nav-link">Home</a>
                                        </li>
                                        <li class="nav-item"><a href="#" class="nav-link">About</a>
                                        </li>
                                        <li class="nav-item"><a href="#" class="nav-link">Services</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
<!-- ************************************************************************* Top Center Navigation Menu END******************************************************************************** -->
                            
<!-- ************************************************************************* Top Right Navigation Menu START******************************************************************************** -->
                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-12">
                                <div class="header-right-info">
                                    <ul class="nav navbar-nav mai-top-nav header-right-menu">
                                        <li class="nav-item">
                                            <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
                                                <span class="adminpro-icon adminpro-user-rounded header-riht-inf"></span>
                                                <span class="admin-name">Sinto Joes</span>
                                                <span class="author-project-icon adminpro-icon adminpro-down-arrow"></span>
                                            </a>
                                            <ul role="menu" class="dropdown-header-top author-log dropdown-menu animated flipInX">
                                                <li><a href="#"><span class="adminpro-icon adminpro-home-admin author-log-ic"></span>My Account</a>
                                                </li>
                                                <li><a href="#"><span class="adminpro-icon adminpro-user-rounded author-log-ic"></span>My Profile</a>
                                                </li>
                                                <li><a href="#"><span class="adminpro-icon adminpro-money author-log-ic"></span>User Billing</a>
                                                </li>
                                                <li><a href="#"><span class="adminpro-icon adminpro-settings author-log-ic"></span>Settings</a>
                                                </li>
                                                <li><a href="#"><span class="adminpro-icon adminpro-locked author-log-ic"></span>Log Out</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
<!-- ************************************************************************* Top Right Navigation Menu END******************************************************************************** -->
                            
                        </div>
                    </div>
                </div>
            </div>
<!--  ************************************************************************* Header top area END  *************************************************************************-->
<!-- ************************************************************************* Breadcome START  *************************************************************************-->
            
<!--  *************************************************************************  Breadcome END   *************************************************************************-->

<!--  *************************************************************************  Mobile Menu START   *************************************************************************-->            
            <div class="mobile-menu-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="mobile-menu">
                                <nav id="dropdown">
                                    <ul class="mobile-menu-nav">
				                          <li class="nav-item">
				                            <a href="my.html" role="button" aria-expanded="false">
				                            	<i class="fa big-icon fa-home"></i> 
				                            	<span class="mini-dn">Home</span> 
				                            </a>
				                          </li>
				                        
				                        <li class="nav-item">
					                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
						                        <i class="fa big-icon fa-envelope"></i> 
						                        <span class="mini-dn">Product</span> 
						                        <span class="indicator-right-menu mini-dn">
						                        	<i class="fa indicator-mn fa-angle-left"></i>
						                        </span>
						                        </a>
				                            <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
				                                <a href="inbox.html" class="dropdown-item">Add Product</a>
				                                <a href="view-mail.html" class="dropdown-item">View Product</a>
				                                <a href="compose-mail.html" class="dropdown-item">Delete Product</a>
				                            </div>
				                        </li>
				                        
				                        <li class="nav-item">
					                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
						                        <i class="fa big-icon fa-envelope"></i> 
						                        <span class="mini-dn">Brand</span> 
						                        <span class="indicator-right-menu mini-dn">
						                        	<i class="fa indicator-mn fa-angle-left"></i>
						                        </span>
						                        </a>
				                            <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
				                                <a href="inbox.html" class="dropdown-item">Add Brand</a>
				                                <a href="view-mail.html" class="dropdown-item">View Brand</a>
				                                <a href="compose-mail.html" class="dropdown-item">Delete Brand</a>
				                            </div>
				                        </li>

									<li class="nav-item"><a href="#" data-toggle="dropdown"
										role="button" aria-expanded="false"
										class="nav-link dropdown-toggle"> <i
											class="fa big-icon fa-envelope"></i> <span class="mini-dn">Packing</span>
											<span class="indicator-right-menu mini-dn"> <i
												class="fa indicator-mn fa-angle-left"></i>
										</span>
									</a>
										<div role="menu"
											class="dropdown-menu left-menu-dropdown animated flipInX">
											<a href="${pageContext.request.contextPath}/packings" class="dropdown-item">Add Packing</a>
										</div></li>

									<li class="nav-item">
					                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
						                        <i class="fa big-icon fa-envelope"></i> 
						                        <span class="mini-dn">Customer</span> 
						                        <span class="indicator-right-menu mini-dn">
						                        	<i class="fa indicator-mn fa-angle-left"></i>
						                        </span>
						                        </a>
				                            <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
				                                <a href="inbox.html" class="dropdown-item">Add Customer</a>
				                                <a href="view-mail.html" class="dropdown-item">View Customer</a>
				                                <a href="compose-mail.html" class="dropdown-item">Delete Customer</a>
				                            </div>
				                        </li>
				                        
				                        <li class="nav-item">
					                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
						                        <i class="fa big-icon fa-envelope"></i> 
						                        <span class="mini-dn">Rates</span> 
						                        <span class="indicator-right-menu mini-dn">
						                        	<i class="fa indicator-mn fa-angle-left"></i>
						                        </span>
						                        </a>
				                            <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
				                                <a href="inbox.html" class="dropdown-item">Add Products Rates</a>
				                                <a href="view-mail.html" class="dropdown-item">View Products Rates</a>
				                                <a href="compose-mail.html" class="dropdown-item">Update Products Rates</a>
				                            </div>
				                        </li>
				                        
				                        <li class="nav-item">
					                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
						                        <i class="fa big-icon fa-envelope"></i> 
						                        <span class="mini-dn">Billing</span> 
						                        <span class="indicator-right-menu mini-dn">
						                        	<i class="fa indicator-mn fa-angle-left"></i>
						                        </span>
						                        </a>
				                            <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
				                                <a href="inbox.html" class="dropdown-item">Create Bill</a>
				                            </div>
				                        </li>
				                        
				                        <li class="nav-item">
					                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
						                        <i class="fa big-icon fa-envelope"></i> 
						                        <span class="mini-dn">Sales</span> 
						                        <span class="indicator-right-menu mini-dn">
						                        	<i class="fa indicator-mn fa-angle-left"></i>
						                        </span>
						                        </a>
				                            <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
				                                <a href="inbox.html" class="dropdown-item">Sale History</a>
				                            </div>
				                        </li>
				                        
				                        <li class="nav-item">
					                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
						                        <i class="fa big-icon fa-envelope"></i> 
						                        <span class="mini-dn">Purchase</span> 
						                        <span class="indicator-right-menu mini-dn">
						                        	<i class="fa indicator-mn fa-angle-left"></i>
						                        </span>
						                        </a>
				                            <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
				                                <a href="inbox.html" class="dropdown-item">View All Purchases</a>
				                            </div>
				                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
<!--  *************************************************************************  Mobile Menu END   *************************************************************************-->  
            <!-- Basic Form Start -->
            <div class="advanced-form-area mg-b-15">
                <div class="container-fluid">
                    
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="sparkline15-list shadow-reset mg-t-30">
                                <div class="sparkline15-hd">
                                    <div class="main-sparkline15-hd">
                                        <h1>Add Packing</h1>
                                        <div class="sparkline15-outline-icon">
                                            <span class="sparkline15-collapse-link"><i class="fa fa-chevron-up"></i></span>
                                            <span><i class="fa fa-wrench"></i></span>
                                            <span class="sparkline15-collapse-close"><i class="fa fa-times"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="sparkline15-graph">
                                <form:form method="POST" id="addPackingForm" name="addPackingForm" commandName="packing" action="addpackings">
                                    <div class="row">
                                        
                                        <div class="col-lg-4 mg-b-20">
                                            <div class="touchspin-inner">
                                                <label>Brand</label> 
                                                <form:select class="form-control custom-select-value" id="brand" name="brand" path="brandId" placeholder="Select Brand" required="required">
													<%-- <form:option value="" label="Select Brand"/> --%>
													<form:options items="${packing.brandsMap}"/>
												</form:select>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 mg-b-20">
                                            <div class="touchspin-inner">
                                                <label>Product</label> 
                                                <form:select class="form-control custom-select-value" id="product" name="product" path="productId" placeholder="Select Product" required="required">
													<%-- <form:option value="" label="Select Product"/> --%>
													<form:options items="${packing.productsMap}"/>
												</form:select>
											</div>
                                        </div>
                                        <div class="col-lg-4 mg-b-20">
                                            <div class="touchspin-inner">
                                                <label>Packing</label> 
												 <form:input class="form-control" id="packing" path="packing" placeholder="Enter Packing" required="required" />
                                            </div>
                                            </div>
                                    </div>
                                    <input type="submit" value="Submit" class="btn btn-custon-four btn-success">
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Basic Form End-->
            
            <!-- Breadcome End-->
<!-- Result Container  -->
<div id="resultContainer" style="display: none;">
 <hr/>
 <h4 style="color: green;">JSON Response From Server</h4>
  <pre style="color: green;">
    <code></code>
   </pre>
</div>
        </div>
    </div>
    <!-- Footer Start-->
    <div class="footer-copyright-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer-copy-right">
                        <p>Copyright &#169; 2018 Colorlib All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End-->
    <!-- Chat Box Start-->
    <div class="chat-list-wrap">
        <div class="chat-list-adminpro">
            <div class="chat-button">
                <span data-toggle="collapse" data-target="#chat" class="chat-icon-link"><i class="fa fa-comments"></i></span>
            </div>
            <div id="chat" class="collapse chat-box-wrap shadow-reset animated zoomInLeft">
                <div class="chat-main-list">
                    <div class="chat-heading">
                        <h2>Messanger</h2>
                    </div>
                    <div class="chat-content chat-scrollbar">
                        <div class="author-chat">
                            <h3>Monica <span class="chat-date">10:15 am</span></h3>
                            <p>Hi, what you are doing and where are you gay?</p>
                        </div>
                        <div class="client-chat">
                            <h3>Mamun <span class="chat-date">10:10 am</span></h3>
                            <p>Now working in graphic design with coding and you?</p>
                        </div>
                        <div class="author-chat">
                            <h3>Monica <span class="chat-date">10:05 am</span></h3>
                            <p>Practice in programming</p>
                        </div>
                        <div class="client-chat">
                            <h3>Mamun <span class="chat-date">10:02 am</span></h3>
                            <p>That's good man! carry on...</p>
                        </div>
                    </div>
                    <div class="chat-send">
                        <input type="text" placeholder="Type..." />
                        <span><button type="Submit">Send</button></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Chat Box End-->
    <!-- jquery
		============================================ -->
    <script src="resources/js/vendor/jquery-1.11.3.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="resources/js/bootstrap.min.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="resources/js/jquery.meanmenu.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- sticky JS
		============================================ -->
    <script src="resources/js/jquery.sticky.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="resources/js/jquery.scrollUp.min.js"></script>
    <!-- counterup JS
		============================================ -->
    <script src="resources/js/counterup/jquery.counterup.min.js"></script>
    <script src="resources/js/counterup/waypoints.min.js"></script>
    <!-- peity JS
		============================================ -->
    <script src="resources/js/peity/jquery.peity.min.js"></script>
    <script src="resources/js/peity/peity-active.js"></script>
    <!-- sparkline JS
		============================================ -->
    <script src="resources/js/sparkline/jquery.sparkline.min.js"></script>
    <script src="resources/js/sparkline/sparkline-active.js"></script>
    <!-- data table JS
		============================================ -->
    <script src="resources/js/data-table/bootstrap-table.js"></script>
    <script src="resources/js/data-table/tableExport.js"></script>
    <script src="resources/js/data-table/data-table-active.js"></script>
    <script src="resources/js/data-table/bootstrap-table-editable.js"></script>
    <script src="resources/js/data-table/bootstrap-editable.js"></script>
    <script src="resources/js/data-table/bootstrap-table-resizable.js"></script>
    <script src="resources/js/data-table/colResizable-1.5.source.js"></script>
    <script src="resources/js/data-table/bootstrap-table-export.js"></script>
    <!-- main JS
		============================================ -->
    <script src="resources/js/main.js"></script>


 	<!-- <script type="text/javascript">
		$(function() {
			$('button[type=submit]').click(
					function(e) {
						e.preventDefault();
						$('#ratesTable tbody tr').remove();
						var img = "<img src='resources/img/clear.png' />";
						$.ajax({
		                    type: "POST",
		                    url: "addrates",
		                    data : $('form[name=addRatesForm]').serialize(),
		                    success: function(responseJson){
								var $table = $("#ratesTable tbody");
			                    $.each(responseJson, function(key, value) {    // Iterate over the JSON array.
			                        	$("<tr>").appendTo($table)
			                        	.append($("<td>").text(value.id)) // Create HTML <tr> element, set its text content with currently iterated item and append it to the <table>.
				                        .append($("<td>").text(value.brand.name))        // Create HTML <td> element, set its text content with id of currently iterated product and append it to the <tr>.
				                        .append($("<td>").text(value.product.name))      // Create HTML <td> element, set its text content with name of currently iterated product and append it to the <tr>.
				                        .append($("<td>").text(value.packing.name))
				                        .append($("<td>").text(value.rate))        // Create HTML <td> element, set its text content with id of currently iterated product and append it to the <tr>.
				                        .append($("<td>").text(value.GST))      // Create HTML <td> element, set its text content with name of currently iterated product and append it to the <tr>.
				                        .append($("<td>").text(value.SGST))
				                        .append($("<td>").text(value.CGST))
				                        .append($("<td>").text(value.IGST))
				                        .append($("<td>").text(value.createdDate))
				                        .append($("<td>"+img));
			                    });
							}
						})
					});
		});
	</script> --%>
	
	<!-- <script type="text/javascript">
	$includeBrand = $('#includeBrand');
			$includeBrand.change(
					function() {
					        var ischecked = $('#includeBrand').is(":checked");
					        if (ischecked) {
					        	$('#brandTHId').show();
					        }else{
					        	$('#brandTHId').hide();
					        }
		});
	</script>  --%>
	
<!-- <script type="text/javascript">
$product = $('#product');
        $product.change (
        var Con = confirm("are you sure ?");
            if (Con == true) {
            function() {
                $.ajax({
                    type: "GET",
                    url: "getpacking",
                    data: {brand: $('#brand :selected').val(), product: $('#product :selected').val()},
                    success: function(data){
                    	  var $packing = $('#packing');
                    	  $packing.find("option").remove(); 
                    	  $.each(data, function(index, category) {
                              $("<option>").val(category.id).text(category.name).appendTo($packing);
                          }); 
                    }
                });
                $.ajax({
                    type: "GET",
                    url: "gethsncode",
                    data: {product: $('#product :selected').val()},
                    success: function(data){
                    	  var $hsnCode = $('#hsnCode');
                    	  $hsnCode.val(data);
                    }
                });
            }
        });
    </script> --%>

	<!-- <script type="text/javascript">
    $customer = $('#customer');
    $customer.change (
            function() {
            	$.get("check", function(responseJson) {          // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
                    var $table = $("#itemslisttable tbody"); // Create HTML <table> element and append it to HTML DOM element with ID "somediv".
                    $.each(responseJson, function(key, value) {    // Iterate over the JSON array.
                        	$("<tr>").appendTo($table)                     // Create HTML <tr> element, set its text content with currently iterated item and append it to the <table>.
                            .append($("<td>").text(value))        // Create HTML <td> element, set its text content with id of currently iterated product and append it to the <tr>.
                            .append($("<td>").text(value))      // Create HTML <td> element, set its text content with name of currently iterated product and append it to the <tr>.
                            .append($("<td>").text(value))
                            .append($("<td>").text(value))        // Create HTML <td> element, set its text content with id of currently iterated product and append it to the <tr>.
                            .append($("<td>").text(value))      // Create HTML <td> element, set its text content with name of currently iterated product and append it to the <tr>.
                            .append($("<td>").text(value));  // Create HTML <td> element, set its text content with price of currently iterated product and append it to the <tr>.
                    });
                });
            });
</script>-->

</body>

</html>