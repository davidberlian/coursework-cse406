package com.cse406.coursework.controller;

import java.sql.SQLException;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.cse406.coursework.model.User;
import com.cse406.coursework.validator.UserValidator;

@Controller
public class SavingController {


//	@Autowired
//	private UserValidator userValidator;

	@RequestMapping(value = "/saving.htm", method = RequestMethod.POST)
	public String saving(@ModelAttribute("user") User user,
			BindingResult result) {
		
		System.out.println("Saving of "+ user.getUsername());
		return "saving";
	}

	
	
	
}

