package com.rtc.controller;

import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.rtc.beans.BillDetailsJSON;
import com.rtc.beans.Billing;
import com.rtc.model.Users;
import com.rtc.service.BillingService;

@Controller
public class BillingController {

	@Autowired
	private BillingService billingService;

	@RequestMapping(value = "/createbill", method = RequestMethod.GET)
	public ModelAndView renderbill(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("createBill");
		Billing billing = billingService.renderBill();
		request.getSession().removeAttribute("billMap");
		mav.addObject("createbill", billing);
		return mav;
	}

	@RequestMapping(value = "/submitBill", method = RequestMethod.POST)
	public ModelAndView submitBill(@ModelAttribute("bill") Billing billing, HttpServletRequest request) {
		HttpSession session = request.getSession();
		ModelAndView mav = new ModelAndView("createBill");
		Billing viewBill = billingService.submitBill(billing, session);
		mav.addObject("pageRequested", "renderBill");
		mav.addObject("renderbill", viewBill);
		return mav;
	}

	@RequestMapping(value = "/check", method = RequestMethod.GET)
	public void check(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Map<String, String> options = new LinkedHashMap<>();
		options.put("value1", "label1");
		options.put("value2", "label2");
		options.put("value3", "label3");
		String json = new Gson().toJson(options);

		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(json);
	}

	@RequestMapping(value = "/localBill", method = RequestMethod.GET)
	public ModelAndView localBill(HttpServletRequest request) {
		HttpSession session = request.getSession();
		ModelAndView mav = new ModelAndView("invoiceLocal");
		if (!StringUtils.isEmpty(session.getAttribute("userSession"))) {
			mav.addObject("users", (Users) session.getAttribute("userSession"));
		}
		BillDetailsJSON localBill = billingService.createBill(session);
		mav.addObject("viewBill", localBill);
		return mav;
	}

	@RequestMapping(value = "/otherStateBill", method = RequestMethod.GET)
	public ModelAndView otherStateBill(HttpServletRequest request) {
		HttpSession session = request.getSession();
		ModelAndView mav = new ModelAndView("invoiceOtherState");
		if (!StringUtils.isEmpty(session.getAttribute("userSession"))) {
			mav.addObject("users", (Users) session.getAttribute("userSession"));
		}
		BillDetailsJSON otherStateBill = billingService.createBill(session);
		mav.addObject("viewBill", otherStateBill);
		return mav;
	}

	@RequestMapping(value = "/renderstock", method = RequestMethod.GET)
	public ModelAndView renderstock() {
		ModelAndView mav = new ModelAndView("adminHome");
		Billing billing = billingService.renderBill();
		mav.addObject("pageRequested", "renderstock");
		mav.addObject("renderbill", billing);
		return mav;
	}

}
