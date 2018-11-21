package com.rtc.controller;

import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.rtc.beans.Billing;
import com.rtc.beans.Rates;
import com.rtc.service.RatesService;

@Controller
public class RatesController {
	
	@Autowired
	private RatesService ratesService;
	
	@RequestMapping(value = "/showrates", method = RequestMethod.GET)
	public ModelAndView showRates(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("showRates");
		Rates rates = ratesService.showRates();
		List<Rates> ratesList = ratesService.getAllRates();
		Collections.reverse(ratesList);
		mav.addObject("showRates", rates);
		mav.addObject("ratesList", ratesList);
		return mav;
	}
	
	@RequestMapping(value = "/addrates", method = RequestMethod.POST)
	public ModelAndView addRates(@ModelAttribute("rates") Rates rates, HttpServletRequest request, HttpServletResponse response) throws IOException {
		ModelAndView mav = new ModelAndView("showRates");
		HttpSession session = request.getSession();
		Rates rate = ratesService.showRates();
		List<Rates> ratesList = ratesService.addRates(rates, session);
		Collections.reverse(ratesList);
		mav.addObject("showRates", rate);
		mav.addObject("ratesList", ratesList);
		return mav;
	}
	
	@RequestMapping(value = "/ratebybrandproductpacking", method = RequestMethod.GET)
	public void rateByBrandProductPacking(HttpServletRequest request, HttpServletResponse response) {
		String brand = request.getParameter("brand");
		String product = request.getParameter("product");
		String packing = request.getParameter("packing");
		if (!StringUtils.isEmpty(brand) && !StringUtils.isEmpty(product) && !StringUtils.isEmpty(packing)) {
			int brandId = Integer.parseInt(brand);
			int productId = Integer.parseInt(product);
			int packingId = Integer.parseInt(packing);
			try {
				Map<String, String> rateMap = ratesService.getRateByBrandProductPacking(brandId, productId, packingId);
				String itemsMapJson = new Gson().toJson(rateMap);
				response.setContentType("application/json");
				response.setCharacterEncoding("UTF-8");
				response.getWriter().write(itemsMapJson);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

}