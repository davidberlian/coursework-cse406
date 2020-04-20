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

	@RequestMapping(value = "/saving.htm")
	public ModelAndView saving(@ModelAttribute("user") User user,
			BindingResult result) {
		ModelAndView model = null;
		if(user.checkToken()) {
			System.out.println("Saving of "+ user.getUsername()+" : "+ user.getSavings());
			
			model = new ModelAndView("saving", "user", user);
		}else {
			user = new User();
			 model = new ModelAndView("redirect:/login.htm");
		}
		return model;
	}

	
	
	
}

