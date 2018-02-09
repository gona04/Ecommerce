package com.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class HomeController 
{

	@RequestMapping("/")
	public String home() 
	{
		//return "viewProducts";
		return "home";
	}

	@RequestMapping(value = "/aboutUs")
	public String aboutUs() 
	{
		return "aboutus";
	}
	
	@RequestMapping(value = "/login")
	public String login() 
	{
		return "login";
	}
	
	 @RequestMapping(value="/login", method=RequestMethod.POST)
	    public String checklogin(@RequestParam(value="error", required = false) String error, @RequestParam(value="logout",
	            required = false) String logout, Model model) 
	    {
		 System.out.println("in login controller");
	        if (error!=null) 
	        {
	        	System.out.println("in error controller " + error.length() + " " + error);
	            model.addAttribute(error, "Invalid username and password");
	            System.out.println("in error controller " + " " + error+ " "+ error.length() );
	        }

	        if(logout!=null) 
	        {
	            model.addAttribute("msg", "You have been logged out successfully.");
	        }

	        return "login";
	    }
	
	 
	 
}
