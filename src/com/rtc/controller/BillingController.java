package com.rtc.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.rtc.beans.Billing;
import com.rtc.model.Users;
import com.rtc.service.BillingService;

@Controller
public class BillingController {
	
	@Autowired
	private BillingService billingService;
	
	@RequestMapping(value="/renderbill",method = RequestMethod.GET)  
	public ModelAndView renderbill() {
		ModelAndView mav = new ModelAndView("adminHome");
		Billing billing = billingService.renderBill();
		mav.addObject("pageRequested", "renderBill");
		mav.addObject("renderbill", billing);
		return mav;
	}
	
	@RequestMapping(value="/submitBill",method = RequestMethod.POST)  
	public ModelAndView submitBill(@ModelAttribute("bill") Billing billing, HttpServletRequest request) {
		HttpSession session = request.getSession();
		ModelAndView mav = new ModelAndView("adminHome");
		Billing viewBill = billingService.submitBill(billing, session);
		mav.addObject("pageRequested", "renderBill");
		mav.addObject("renderbill", viewBill);
		return mav;
	}
	
	@RequestMapping(value="/createBill",method = RequestMethod.GET)  
	public ModelAndView createBill(HttpServletRequest request) {
		HttpSession session = request.getSession();
		ModelAndView mav = new ModelAndView("viewBill");
		if(!StringUtils.isEmpty(session.getAttribute("userSession"))){
			mav.addObject("users", (Users)session.getAttribute("userSession"));
		}
		Billing viewBill = billingService.createBill(session);
		mav.addObject("viewBill", viewBill);
		return mav;
	}
	
	@RequestMapping(value="/renderstock",method = RequestMethod.GET)  
	public ModelAndView renderstock() {
		ModelAndView mav = new ModelAndView("adminHome");
		Billing billing = billingService.renderBill();
		mav.addObject("pageRequested", "renderstock");
		mav.addObject("renderbill", billing);
		return mav;
	}

}
