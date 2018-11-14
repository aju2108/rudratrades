package com.rtc.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rtc.beans.Billing;
import com.rtc.beans.User;
import com.rtc.model.Users;
import com.rtc.service.BillingService;
import com.rtc.service.UserService;

@Controller
public class HomeController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private BillingService billingService;
	
	@RequestMapping(value = "/")
	public String listEmployee() throws IOException {
		//return "index";
		//return new ModelAndView("adminHome","command",new Billing()); 
		return "index";
	}
	
	@RequestMapping(value = "/dashboard")
	public ModelAndView dashBoard() throws IOException {
		ModelAndView mav = new ModelAndView("adminHome");
		mav.addObject("pageRequested", "dashboard");
		return mav;  
	}
	
	@RequestMapping(value = "/viewLogin")
	public ModelAndView render() throws IOException {
		return new ModelAndView("login","command",new User());  
	}
	
	@RequestMapping(value="/login",method = RequestMethod.POST)  
	public ModelAndView newContact(@ModelAttribute("user") User user, Model model, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		Users users = userService.getUserByUsernamePassword(user.getUsername(), user.getPassword());
		if(!StringUtils.isEmpty(users)){
			request.getSession().setAttribute("userSession", users);
			Billing billing = billingService.renderBill();
			mav.addObject("renderbill", billing);
			mav.addObject("pageRequested", "dashboard");
			mav.setViewName("dashboard");
		}else{
			user.setErrorMessage("Please enter valid username and password");	
			mav.addObject("user", user);
			mav.setViewName("redirect:/viewLogin");
		}
		return mav;
	}
	
	@RequestMapping(value = "/logout")
	public String render(HttpServletRequest request) throws IOException {
		if(!StringUtils.isEmpty(request.getSession().getAttribute("userSession"))){
			request.getSession().removeAttribute("userSession");
			request.getSession().removeAttribute("billMap");
		}
		return "index";
	}

}
