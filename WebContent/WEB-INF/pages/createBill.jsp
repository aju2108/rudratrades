<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Advance Form Element | Adminpro - Admin Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="resources/img/favicon.ico">
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
    <link rel="stylesheet" href="resources/css/adminpro-custon-icon.css">
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/meanmenu.min.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/jquery.mCustomScrollbar.min.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/animate.css">
    <!-- modals CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/modals.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/normalize.css">
    <!-- touchspin CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/touchspin/jquery.bootstrap-touchspin.min.css">
    <!-- datapicker CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/datapicker/datepicker3.css">
    <!-- forms CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/form/themesaller-forms.css">
    <!-- colorpicker CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/colorpicker/colorpicker.css">
    <!-- select2 CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/select2/select2.min.css">
    <!-- chosen CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/chosen/bootstrap-chosen.css">
    <!-- ionRangeSlider CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/ionRangeSlider/ion.rangeSlider.css">
    <link rel="stylesheet" href="resources/css/ionRangeSlider/ion.rangeSlider.skinFlat.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/adminpro/style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="resources/js/vendor/modernizr-2.8.3.min.js"></script>

	<!-- clockpicker CSS
		============================================ -->
	<link rel="stylesheet" type="text/css" href="resources/css/timepicker/jquery-clockpicker.min.css">
	<link rel="stylesheet" type="text/css" href="resources/css/timepicker/github.min.css">
	
	<!-- clockpicker JS
		============================================ -->
	<script type="text/javascript" src="resources/js/timepicker/highlight.min.js"></script>
	<script type="text/javascript" src="resources/js/timepicker/jquery.min.js"></script>
	<script type="text/javascript" src="resources/js/timepicker/jquery-clockpicker.min.js"></script>

    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">


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
                            <a href="${pageContext.request.contextPath}/dashboard" role="button" aria-expanded="false">
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
                                        <li class="nav-item"><a href="${pageContext.request.contextPath}/dashboard" class="nav-link">Home</a>
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
                                        <h1>Create Bill</h1>
                                        <div class="sparkline15-outline-icon">
                                            <span class="sparkline15-collapse-link"><i class="fa fa-chevron-up"></i></span>
                                            <span><i class="fa fa-wrench"></i></span>
                                            <span class="sparkline15-collapse-close"><i class="fa fa-times"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="sparkline15-graph">
                                <form:form method="POST" id="createbillForm" name="createbillForm" commandName="createbill" action="submitBill">
                                    <div class="row">
                                    	<div class="col-lg-4 mg-b-20">
                                            <div class="touchspin-inner">
                                                <label>Bill Payment Type</label> 
                                                <form:select class="form-control custom-select-value" name="billPaymentType" path="billPaymentTypeId" placeholder="Select Bill Payment Type" required="required">
													<form:option value="" label="Select Payment Type"/>
													<form:options items="${createbill.paymentTypeMap}"/>
												</form:select>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 mg-b-20">
                                            <div class="touchspin-inner">
                                                <label>Customer</label> 
												<form:select class="form-control custom-select-value" id="customer" name="customer" path="customerId" placeholder="Select Customer" required="required">
													<form:option value="" label="Select Customer"/>
													<form:options items="${createbill.customersMap}"/>
												</form:select>
											</div>
                                        </div>
                                        <div class="col-lg-4 mg-b-20">
                                            <div class="touchspin-inner">
                                                <label>Brand</label> 
                                                <form:select class="form-control custom-select-value" id="brand" name="brand" path="brandId" placeholder="Select Brand" required="required">
													<form:option value="" label="Select Brand"/>
													<form:options items="${createbill.brandsMap}"/>
												</form:select>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 mg-b-20">
                                            <div class="touchspin-inner">
                                                <label>Product</label> 
                                                <form:select class="form-control custom-select-value" id="product" name="product" path="productId" placeholder="Select Product" required="required">
													<form:option value="" label="Select Product"/>
													<form:options items="${createbill.productsMap}"/>
												</form:select>
											</div>
                                        </div>
                                        <div class="col-lg-4 mg-b-20">
                                            <div class="touchspin-inner">
                                                <label>Quantity</label> 
												 <form:input class="form-control" id="quantity" path="quantity" placeholder="Select Quantity" required="required" />
                                            </div>
                                        </div>
                                        <div class="col-lg-4 mg-b-20">
                                            <div class="touchspin-inner">
                                                <label>Packing</label> 
												<form:select class="form-control custom-select-value" id="packing" name="packing" path="packingId" placeholder="Select Packing" required="required">
													<form:option value="" label="Select Packing"/>
												</form:select>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 mg-b-20">
                                            <div class="touchspin-inner">
                                                <label>HSN Code</label> 
                                                <form:input class="form-control" id="hsnCode" path="hsnCode" placeholder="HSN Code" required="required" />
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 mg-b-20">
                                            <div class="touchspin-inner">
                                                <label>Vehicle No</label> 
                                                <form:input class="form-control" path="vehicleNo" placeholder="Vehicle No" required="required"/>
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 mg-b-20 form-group data-custon-pick" id="data_1">
                                            <div class="touchspin-inner">
                                            	<label>Date</label>
                                                <div class="input-group date">
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                        <form:input class="form-control" path="date" placeholder="Date" required="required" />
                                                    </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 mg-b-20">
                                            <div class="touchspin-inner">
                                                <label>Time</label> 
                                                <div class="input-group clockpicker pull-center" data-placement="left" data-align="top" data-autoclose="true">
													<form:input class="form-control" path="time" placeholder="Time" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-time"></span>
													</span>
												</div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-8 mg-b-20 form-group data-custon-pick">
                                                <div class="col-lg-4">
                                                    <label>Create Other State Bill</label><br />
                                                    <form:checkbox path="otherStateBill" id="otherStateBill"/>
                                                </div>
                                                <div class="col-lg-4">
                                                    <label>Include Brand In Bill</label><br />
                                                    <form:checkbox path="includeBrand" id="includeBrand"/>
                                                </div>
                                                <div class="col-lg-4">
                                                    <label>Create Full Page Bill</label><br />
                                                    <form:checkbox path="fullPageBill" id="fullPageBill"/>
                                                </div>
                                        </div>

                                    </div>
                                    <!-- <button type="submit" class="btn btn-custon-four btn-success">Submit</button>  -->
                                    <input type="submit" value="Submit" class="btn btn-custon-four btn-success">
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row" id="itemsListContainer" style="display: none;">
                        <div class="col-lg-12">
                            <div class="sparkline10-list shadow-reset mg-t-30">
                                <div class="sparkline10-hd">
                                    <div class="main-sparkline10-hd">
                                        <h1>Items List</h1>
                                        <div class="sparkline10-outline-icon">
                                            <span class="sparkline10-collapse-link"><i class="fa fa-chevron-up"></i></span>
                                            <span><i class="fa fa-wrench"></i></span>
                                            <span class="sparkline10-collapse-close"><i class="fa fa-times"></i></span>
                                        </div>
                                    </div>
                                </div>


                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                      <table class="table" id="itemslisttable">
                                        <thead>
                                          <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">HSN Code</th>
                                            <th scope="col">Product</th>
                                            <th scope="col" id="brandTHId">Brand</th>
                                            <th scope="col">Packing</th>
                                            <th scope="col">Quantity</th>
                                            <th scope="col">Actions</th>
                                          </tr>
                                        </thead>
                                        <tbody></tbody>
                                      </table>
                                    </div>
                                </div>
                                <div class="sparkline15-graph">
                                    <br />
                                    <button name="createBill" value="Create Bill" type="button" class="btn btn-custon-four btn-success"><a href="localBill">Local Bill</a></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Basic Form End-->
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
   <!-- <script src="resources/js/vendor/jquery-1.11.3.min.js"></script> -->
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
    <!-- modal JS
		============================================ -->
    <script src="resources/js/modal-active.js"></script>
    <!-- touchspin JS
		============================================ -->
    <script src="resources/js/touchspin/jquery.bootstrap-touchspin.min.js"></script>
    <script src="resources/js/touchspin/touchspin-active.js"></script>
    <!-- colorpicker JS
		============================================ -->
    <script src="resources/js/colorpicker/jquery.spectrum.min.js"></script>
    <script src="resources/js/colorpicker/color-picker-active.js"></script>
    <!-- datapicker JS
		============================================ -->
    <script src="resources/js/datapicker/bootstrap-datepicker.js"></script>
    <script src="resources/js/datapicker/datepicker-active.js"></script>
    <!-- input-mask JS
		============================================ -->
    <script src="resources/js/input-mask/jasny-bootstrap.min.js"></script>
    <!-- chosen JS
		============================================ -->
    <script src="resources/js/chosen/chosen.jquery.js"></script>
    <script src="resources/js/chosen/chosen-active.js"></script>
    <!-- select2 JS
		============================================ -->
    <script src="resources/js/select2/select2.full.min.js"></script>
    <script src="resources/js/select2/select2-active.js"></script>
    <!-- ionRangeSlider JS
		============================================ -->
    <script src="resources/js/ionRangeSlider/ion.rangeSlider.min.js"></script>
    <script src="resources/js/ionRangeSlider/ion.rangeSlider.active.js"></script>
    <!-- rangle-slider JS
		============================================ -->
    <script src="resources/js/rangle-slider/jquery-ui-1.10.4.custom.min.js"></script>
    <script src="resources/js/rangle-slider/jquery-ui-touch-punch.min.js"></script>
    <script src="resources/js/rangle-slider/rangle-active.js"></script>
    <!-- knob JS
		============================================ -->
    <script src="resources/js/knob/jquery.knob.js"></script>
    <script src="resources/js/knob/knob-active.js"></script>
    <!-- main JS
		============================================ -->
    <script src="resources/js/main.js"></script>

<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
    <script>
  $(function() {
    $('#otherStateBill, #includeBrand, #fullPageBill').bootstrapToggle();
  })
</script>

<script type="text/javascript">
$('.clockpicker').clockpicker()
	.find('input').change(function(){
		console.log(this.value);
	});
$('#single-input').clockpicker({
	placement: 'bottom',
	align: 'right',
	autoclose: true,
	'default': '20:48'
});
$('.clockpicker-with-callbacks').clockpicker({
		donetext: 'Done',
		init: function() { 
			console.log("colorpicker initiated");
		},
		beforeShow: function() {
			console.log("before show");
		},
		afterShow: function() {
			console.log("after show");
		},
		beforeHide: function() {
			console.log("before hide");
		},
		afterHide: function() {
			console.log("after hide");
		},
		beforeHourSelect: function() {
			console.log("before hour selected");
		},
		afterHourSelect: function() {
			console.log("after hour selected");
		},
		beforeDone: function() {
			console.log("before done");
		},
		afterDone: function() {
			console.log("after done");
		}
	})
	.find('input').change(function(){
		console.log(this.value);
	});
if (/Mobile/.test(navigator.userAgent)) {
	$('input').prop('readOnly', true);
}
</script>

 	<script type="text/javascript">
 	$("#createbillForm").submit(
					function(e) {
						e.preventDefault();
						$('#itemslisttable tbody tr').remove();
						var ischecked = $('#includeBrand').is(":checked");
				        if (ischecked) {
				        	$('#brandTHId').show();
				        }else{
				        	$('#brandTHId').hide();
				        }
						var str = $("#createbillForm").serialize();
						var img = "<img src='resources/img/clear.png' />";
						$.ajax({
		                    type: "POST",
		                    url: "submitBill",
		                    data : $('form[name=createbillForm]').serialize(),
		                    success: function(responseJson){
								var $table = $("#itemslisttable tbody");
								$('#itemsListContainer').show();
			                    $.each(responseJson, function(key, value) {    // Iterate over the JSON array.
			                        if (value.brand != undefined) {
			                        	$("<tr>").appendTo($table)
			                        	.append($("<td>").text(key)) // Create HTML <tr> element, set its text content with currently iterated item and append it to the <table>.
				                        .append($("<td>").text(value.hsnCode))        // Create HTML <td> element, set its text content with id of currently iterated product and append it to the <tr>.
				                        .append($("<td>").text(value.product))      // Create HTML <td> element, set its text content with name of currently iterated product and append it to the <tr>.
				                        .append($("<td>").text(value.brand))
				                        .append($("<td>").text(value.packing))        // Create HTML <td> element, set its text content with id of currently iterated product and append it to the <tr>.
				                        .append($("<td>").text(value.quantity))      // Create HTML <td> element, set its text content with name of currently iterated product and append it to the <tr>.
				                        .append($("<td>").text(value.unit))
				                        .append($("<td>"+img));
		                            }else{
		                            	$("<tr>").appendTo($table)   
				                        .append($("<td>").text(key)) // Create HTML <tr> element, set its text content with currently iterated item and append it to the <table>.
				                        .append($("<td>").text(value.hsnCode))        // Create HTML <td> element, set its text content with id of currently iterated product and append it to the <tr>.
				                        .append($("<td>").text(value.product))      // Create HTML <td> element, set its text content with name of currently iterated product and append it to the <tr>.
				                        .append($("<td>").text(value.packing))        // Create HTML <td> element, set its text content with id of currently iterated product and append it to the <tr>.
				                        .append($("<td>").text(value.quantity))      // Create HTML <td> element, set its text content with name of currently iterated product and append it to the <tr>.
				                        .append($("<td>").text(value.unit))
				                        .append($("<td>"+img));
		                            }
			                    });
							}
						})
					});
	</script>

	<script type="text/javascript">
	$('#brand, #product').change(function() {
                $.ajax({
                    type: "GET",
                    async: false,
                    url: "getpacking",
                    data: {brand: $('#brand :selected').val(), product: $('#product :selected').val()},
                    success: function(data){
                    	  var $packing = $('#packing');
                    	  $packing.find("option").remove(); 
                    	  $.each(data, function(index, packingList) {
      						$("<option>").val(packingList.packing.id).text(
      								packingList.packing.name).appendTo($packing);
      					});
                    }
                });
                $.ajax({
                    type: "GET",
                    async: false,
                    url: "gethsncode",
                    data: {product: $('#product :selected').val()},
                    success: function(data){
                    	  var $hsnCode = $('#hsnCode');
                    	  $hsnCode.val(data);
                    }
                });
        });
    </script>

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