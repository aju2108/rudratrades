package com.rtc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.rtc.model.Packing;

@Controller
public class PackingController {
	
	@RequestMapping(value = "/getpacking")
	public void getPacking(HttpServletRequest request, HttpServletResponse response) throws IOException {
			//Integer brandId = Integer.parseInt(request.getParameter("brand"));
			//Integer productId = Integer.parseInt(request.getParameter("product"));
			List<Packing> listCatagory = new ArrayList<Packing>();
			Packing p1 = new Packing();
            p1.setId(1);
            
            Packing p2 = new Packing();
            p2.setId(2);
            
            Packing p3 = new Packing();
            p3.setId(3);
            
            Packing p4 = new Packing();
            p4.setId(4);
            
			
			String brandId = request.getParameter("brand");
			String productId = request.getParameter("product");
			if(productId.equalsIgnoreCase("Ghee")){
				p1.setName("1Kg");
				p2.setName("2Kg");
				p3.setName("4Kg");
				p4.setName("15Kg*1tin");
			}else if(productId.equalsIgnoreCase("Butter")){
				p1.setName("50gm");
				p2.setName("100gm");
				p3.setName("200gm");
				p4.setName("250gm");
			}
			listCatagory.add(p1);
            listCatagory.add(p2);
            listCatagory.add(p3);
            listCatagory.add(p4);
            String json = new Gson().toJson(listCatagory);
 
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(json);
        
	}
	
	@RequestMapping(value = "/gethsncode")
	public void getHsnCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
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