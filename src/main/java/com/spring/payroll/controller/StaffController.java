package com.spring.payroll.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.payroll.entities.Staff;

/**
 * Handles requests for the application home page.
 */
@Controller
public class StaffController {
	
	private static final Logger logger = LoggerFactory.getLogger(StaffController.class);
	
	
	@RequestMapping(value = "/employee_type", method = RequestMethod.GET)
	public String employeeType(Locale locale, Model model) {
		return "settings/employee_type";
	}
	
	
	@RequestMapping(value = "/add_employee", method = RequestMethod.GET)
	public String addEmployee(Locale locale, Model model) {
		return "employee_entry/add_employee";
	}
	
	@RequestMapping(value = "/createEmployee", method = RequestMethod.POST)
	public String addEmployee(@ModelAttribute Staff staff, Locale locale, Model model) {
		return "employee_entry/add_employee";
	}
	
}
