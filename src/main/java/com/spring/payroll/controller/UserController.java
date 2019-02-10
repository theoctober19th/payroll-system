package com.spring.payroll.controller;

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

import com.spring.payroll.entities.District;
import com.spring.payroll.entities.Province;
import com.spring.payroll.entities.User;
import com.spring.payroll.service.AddressService;
import com.spring.payroll.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	 @Autowired 
	 UserService userService;
	 
	 @Autowired 
	 AddressService addressService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	
	@RequestMapping(value = "/add_user", method = RequestMethod.GET)
	public String addUser(Locale locale, Model model) {
		List<District> districtList = addressService.getAllDistricts();
		List<Province> provinceList = addressService.getAllProvinces();
		model.addAttribute("districtList", districtList);
		model.addAttribute("provinceList", provinceList);
		return "user_settings/add_user";
	}
	
	@RequestMapping(value = "/createUser", method = RequestMethod.POST)
	public String createUser(@ModelAttribute User user, Model model) {
		userService.createUser(user);
		model.addAttribute("message", "New user added Successfully.");
		model.addAttribute("messageColor", "green");
		return "user_settings/add_user";
	}
	
	@RequestMapping(value = "/allUsers", method = RequestMethod.GET)
	public String listUsers(Model model, HttpSession session) {
		User currentUser = (User) session.getAttribute("userSession");
		
		if(currentUser != null) {
			int roleID = currentUser.getAccountInfo().getRoleID();
			if(roleID == 1) {
				List<User> userList = userService.getAllUsers();
				model.addAttribute("userList", userList);
				
				
				
				//userService.createUser(user);
				return "user_settings/list_users";
			}else {
				return "page_401";
			} 
		}else {
			return "redirect:/";
		}
		
	}
	
	@RequestMapping(value = "/editUser/{id}", method = RequestMethod.GET)
	public String editUser(@PathVariable int id, Model model, HttpSession session) {
				
		User currentUser = (User) session.getAttribute("userSession");
		
		if(currentUser != null) {
			int roleID = currentUser.getAccountInfo().getRoleID();
			if(roleID == 1) {
				User user = userService.getUserByID(id);
				model.addAttribute(user);
				List<District> districtList = addressService.getAllDistricts();
				List<Province> provinceList = addressService.getAllProvinces();
				model.addAttribute("districtList", districtList);
				model.addAttribute("provinceList", provinceList);
				return "user_settings/edit_user";
				
			}else {
				return "page_401";
			} 
		}else {
			return "redirect:/";
		}
	}
	
	@RequestMapping(value = "/updateUser/{id}", method = RequestMethod.POST)
	public String updateUser(@PathVariable int id, @ModelAttribute User user, Model model, HttpSession session) {
		
		User currentUser = (User) session.getAttribute("userSession");
		
		if(currentUser != null) {
			int roleID = currentUser.getAccountInfo().getRoleID();
			if(roleID == 1) {
				userService.updateUser(id, user);
				
				return "redirect:/user/allUsers";

			}else {
				return "page_401";
			} 
		}else {
			return "redirect:/";
		}
		
		
	}
	
	@RequestMapping(value="/deleteUser/{id}", method=RequestMethod.GET)
	public String deleteUser(@PathVariable int id, HttpSession session) {
		
		User currentUser = (User) session.getAttribute("userSession");
		
		if(currentUser != null) {
			int roleID = currentUser.getAccountInfo().getRoleID();
			if(roleID == 1) {
				userService.deleteUser(id);
				return "redirect:/user/allUsers";
			}else {
				return "page_401";
			} 
		}else {
			return "redirect:/";
		}
		

	}
	
}
