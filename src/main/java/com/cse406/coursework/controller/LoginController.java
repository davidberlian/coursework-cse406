package com.cse406.coursework.controller;

import java.sql.SQLException;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.cse406.coursework.model.User;
import com.cse406.coursework.validator.UserValidator;

@Controller
public class LoginController {


//	@Autowired
//	private UserValidator userValidator;

	@RequestMapping(value = "/doLogin.htm", method = RequestMethod.POST)
	public ModelAndView doLogin(@ModelAttribute("user") User user,
			BindingResult result) {
		ModelAndView model = null;
		String viewResult = "login";
		System.out.println("doLogin Called");
		//userValidator.validate(user, result);
		if (result.hasErrors()) {
			System.out.println("Error Count= " + result.getErrorCount());
			model = new ModelAndView(viewResult, "user", user);
			return model;
		}
		
		String un = user.getUsername();
		String pw = user.getPassword();
		String saving = null;

		// Note:
		// If user name and password are same the assumption for login done 
		// You can implement DAO and use in your project
		if (user.getToken() == null) {
			if( user.check_password(un, pw)) {	
				pw = "";
				System.out.println("49 Login :"+user.getToken());
				viewResult = "home";
			}
		}else {
			viewResult = "home";
		}
		
		// Creating a ModelAndView Object and adding jsp page and model data
		model = new ModelAndView(viewResult, "user", user);
		return model;
	}

	@RequestMapping("/login.htm")
	public String showLogin(Map model) throws SQLException {
		User user = new User();
		user.setUsername("");
		model.put("user", user);
		return "login";
	}
	@RequestMapping(value = "/logout.htm", method = RequestMethod.POST)
	public void logout(@ModelAttribute("user") User user,
			BindingResult result, HttpServletResponse response) throws Exception {
		user.removeToken();
		response.sendRedirect("http://localhost:8080/coursework");
	}



	
	
	
}

