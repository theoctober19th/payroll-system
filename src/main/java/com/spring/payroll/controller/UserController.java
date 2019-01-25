package com.spring.payroll.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.payroll.entities.User;
import com.spring.payroll.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	 @Autowired 
	 UserService userService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	
	@RequestMapping(value = "/add_user", method = RequestMethod.GET)
	public String addUser(Locale locale, Model model) {
		return "user_settings/add_user";
	}
	
	@RequestMapping(value = "/createUser", method = RequestMethod.POST)
	public String createUser(@ModelAttribute User user) {
		System.out.println("reached");
		userService.createUser(user);
		return "user_settings/add_user";
	}
	
}
