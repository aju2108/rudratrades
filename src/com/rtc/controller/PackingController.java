package com.rtc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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
import com.rtc.beans.Packings;
import com.rtc.model.BrandProductPackingMapping;
import com.rtc.model.Packing;
import com.rtc.service.PackingService;

@Controller
public class PackingController {

	@Autowired
	private PackingService packingService;

	@RequestMapping(value = "/packings", method = RequestMethod.GET)
	public ModelAndView packings(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("addPacking");
		Packings packings = packingService.getPackings();
		mav.addObject("packing", packings);
		return mav;
	}
	
	@RequestMapping(value = "/addpackings", method = RequestMethod.POST)
	public ModelAndView addRates(@ModelAttribute("rates") Packings packings, HttpServletRequest request, HttpServletResponse response) throws IOException {
		ModelAndView mav = new ModelAndView("addPacking");
		HttpSession session = request.getSession();
		packingService.addPackings(packings, session);
		Packings packingsss = packingService.getPackings();
		mav.addObject("packing", packingsss);
		return mav;
	}

	@RequestMapping(value = "/getpacking")
	public void getPacking(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String brand = request.getParameter("brand");
		String product = request.getParameter("product");
		if(!StringUtils.isEmpty(brand) && !StringUtils.isEmpty(product)){
			int brandId = Integer.parseInt(brand);
			int productId = Integer.parseInt(product);
			List<BrandProductPackingMapping> packingList = packingService.gePackingByBrandProduct(brandId, productId);
			String json = new Gson().toJson(packingList);
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(json);
		}
	}

	@RequestMapping(value = "/gethsncode")
	public void getHsnCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String hsnCode = "";
		String productId = request.getParameter("product");
		if(!StringUtils.isEmpty(productId)){
			hsnCode = packingService.getHSNCode(Integer.parseInt(productId));
		}
		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(hsnCode);

	}

}