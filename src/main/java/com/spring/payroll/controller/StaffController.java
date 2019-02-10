package com.spring.payroll.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.payroll.entities.Staff;
import com.spring.payroll.service.StaffService;
import com.spring.payroll.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/employee")
public class StaffController {
	
	@Autowired 
	StaffService staffService;
	
	
	private static final Logger logger = LoggerFactory.getLogger(StaffController.class);
	
	@RequestMapping(value = "/all", method= RequestMethod.GET)
	public String viewEmployees(Model model, HttpSession session) {
		if (session.getAttribute("userSession")==null) {
			return "redirect:/";
		}else {
		  List<Staff> staffList = staffService.getAllStaffs();
		  model.addAttribute("staffList", staffList);
		 
		  return "employee/list_employees";
		}
	}
	
	@RequestMapping(value = "/employee_type", method = RequestMethod.GET)
	public String employeeType(Locale locale, Model model) {
		return "employee/employee_type";
	}
	
	
	@RequestMapping(value = "/add_employee", method = RequestMethod.GET)
	public String addEmployee(Locale locale, Model model) {
		return "employee/add_employee";
	}
	
	@RequestMapping(value = "/createEmployee", method = RequestMethod.POST)
	public String addEmployee(@ModelAttribute Staff staff, Locale locale, Model model) {
		staffService.createStaff(staff);
		return "employee/add_employee";
	}
	
	
	@RequestMapping(value = "/employee_leave_policy", method = RequestMethod.GET)
	public String employeeLeavePolicy(Locale locale, Model model) {
		return "employee/employee_leave_policy";
	}
	
	@RequestMapping(value = "/leave_without_pay", method = RequestMethod.GET)
	public String leaveWithoutPay(Locale locale, Model model) {
		return "employee/leave_without_pay";
	}
	
	@RequestMapping(value = "/staff_insurance", method = RequestMethod.GET)
	public String staffInsurance(Locale locale, Model model) {
		return "employee/staff_insurance";
	}
	
	@RequestMapping(value = "/editEmployee/{code}", method = RequestMethod.GET)
	public String editEmployee(@PathVariable String code, Locale locale, Model model) {
		Staff staff = staffService.getStaffByCode(code);
		model.addAttribute("staff", staff);
		return "employee/edit_employee";
	}
	
	@RequestMapping(value = "/updateEmployee/{code}", method = RequestMethod.POST)
	public String updateEmployee(@PathVariable String code, @ModelAttribute Staff staff, Locale locale, Model model) {
		staffService.updateStaff(code, staff);
		return "redirect:/employee/all";
	}
	
	
}
