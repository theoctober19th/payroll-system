package com.spring.payroll.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.payroll.entities.Branch;
import com.spring.payroll.entities.Division;
import com.spring.payroll.entities.Office;
import com.spring.payroll.service.OfficeService;

@Controller
public class OfficeController {

	@Autowired
	private OfficeService officeService;
	
	public OfficeController() {
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping(value = "/office_settings", method = RequestMethod.GET)
	public String officeSettings(Locale locale, Model model) {
		return "settings/office_settings";
	}
	
	@RequestMapping(value = "/updateOfficeSettings", method = RequestMethod.POST)
	public String updateOffice(@ModelAttribute Office office, Locale locale, Model model) {
		officeService.addOrUpdateOffice(office);
		model.addAttribute("message", "Office Updated Successfully");
		model.addAttribute("messageColor", "green");
		return "settings/office_settings";
	}
	
	@RequestMapping(value = "/add_branch", method = RequestMethod.GET)
	public String showAddBranchForm(Locale locale, Model model) {
		return "settings/add_branch";
	}
	
	@RequestMapping(value = "/updateBranch", method = RequestMethod.POST)
	public String updateBranch(@ModelAttribute Branch branch, Locale locale, Model model) {
		officeService.addOrUpdateBranch(branch);
		model.addAttribute("message", "Branch Updated Successfully");
		model.addAttribute("messageColor", "green");
		return "settings/add_branch";
	}
	
	@RequestMapping(value = "/updateDivisionSettings", method = RequestMethod.POST)
	public String updateDivision(@ModelAttribute Division division, Locale locale, Model model) {
		officeService.addOrUpdateDivision(division);
		model.addAttribute("message", "Division Updated Successfully");
		model.addAttribute("messageColor", "green");
		return "settings/division_setting";
	}

}
