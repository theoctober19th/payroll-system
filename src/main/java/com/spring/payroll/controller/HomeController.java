package com.spring.payroll.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "home";
	}
	
	@RequestMapping(value = "/add_branch", method = RequestMethod.GET)
	public String addBranch(Locale locale, Model model) {
		return "settings/add_branch";
	}
	
	@RequestMapping(value = "/fiscal_year_settings", method = RequestMethod.GET)
	public String fiscalYearSettings(Locale locale, Model model) {
		return "settings/fiscal_year_settings";
	}
	
	@RequestMapping(value = "office_settings", method = RequestMethod.GET)
	public String officeSettings(Locale locale, Model model) {
		return "settings/office_settings";
	}
	
	@RequestMapping(value = "/compensation_setting", method = RequestMethod.GET)
	public String compensationSetting(Locale locale, Model model) {
		return "settings/compensation_setting";
	}
	
	@RequestMapping(value = "/division_setting", method = RequestMethod.GET)
	public String divisionSetting(Locale locale, Model model) {
		return "settings/division_setting";
	}
	
	@RequestMapping(value = "/employee_type", method = RequestMethod.GET)
	public String employeeType(Locale locale, Model model) {
		return "settings/employee_type";
	}
	
	@RequestMapping(value = "/insurance_company_list", method = RequestMethod.GET)
	public String insuranceCompanyList(Locale locale, Model model) {
		return "settings/insurance_company_list";
	}
	
	@RequestMapping(value = "/add_employee", method = RequestMethod.GET)
	public String addEmployee(Locale locale, Model model) {
		return "employee_entry/add_employee";
	}
	
	@RequestMapping(value = "/employee_leave_policy", method = RequestMethod.GET)
	public String employeeLeavePolicy(Locale locale, Model model) {
		return "employee_entry/employee_leave_policy";
	}
	
	@RequestMapping(value = "/leave_without_pay", method = RequestMethod.GET)
	public String leaveWithoutPay(Locale locale, Model model) {
		return "employee_entry/leave_without_pay";
	}
	
	@RequestMapping(value = "/staff_insurance", method = RequestMethod.GET)
	public String staffInsurance(Locale locale, Model model) {
		return "employee_entry/staff_insurance";
	}
	
}
