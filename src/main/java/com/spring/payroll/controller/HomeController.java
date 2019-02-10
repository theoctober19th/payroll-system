package com.spring.payroll.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;

import com.spring.payroll.entities.User;
import com.spring.payroll.service.OfficeService;
import com.spring.payroll.service.StaffService;
import com.spring.payroll.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
@SessionAttributes("userSession")
public class HomeController {
	
	@Autowired
	StaffService staffService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	OfficeService officeService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String loginPage(Model model) {
		return "index";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String doLogin(Model model, HttpServletRequest request) {
		try {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			if(userService.verifyUser(username, password)) {
				
				User currentUser = userService.getUserByUsername(username);
				
				model.addAttribute("userSession", currentUser);
				return "redirect:/home";
			}else {
				return "redirect:/";
			}
		}catch(Exception e) {
			e.printStackTrace();
			return "redirect:/";
		}
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String homePage(Locale locale, Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("staffCount", staffService.getStaffCount());
		model.addAttribute("userCount", userService.getUsersCount());
		return "home";
		
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(WebRequest request, SessionStatus status) {
		
		status.setComplete();
	    request.removeAttribute("userSession", WebRequest.SCOPE_SESSION);
		
		return "redirect:/";
	}
	
	
	
	
}
