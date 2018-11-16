package com.rtc.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
		mav.addObject("showRates", rates);
		return mav;
	}
	
	@RequestMapping(value = "/addrates", method = RequestMethod.POST)
	public void addRates(@ModelAttribute("bill") Rates rates, HttpServletRequest request, HttpServletResponse response) throws IOException  {
		
		String text = "";
		String productId = request.getParameter("product");
		if(productId.equalsIgnoreCase("Ghee")){
			text="HSN0402";
		}else if(productId.equalsIgnoreCase("Butter")){
			text="HSN0503";
		}
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(text);
        
	}

}