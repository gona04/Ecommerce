package com.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.CustomerDao;
import com.dao.UserDao;
import com.model.BillingAddress;
import com.model.Customer;
import com.model.ShippingAddress;
import com.model.Users;

@Controller
public class RegistrationController 
{
	@Autowired
	CustomerDao cdao;

	
	@RequestMapping("/signUp")
	public String register(Model model)
	{
		BillingAddress billingAddress = new BillingAddress();
		ShippingAddress shippingAddress =new ShippingAddress();
		Customer customer = new Customer();
		customer.setBillingAddress(billingAddress);
		customer.setShippingAddress(shippingAddress);
		model.addAttribute("customer",customer);
		return "signUp";
	}
	
	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
    public String registerCustomerPost(@Valid @ModelAttribute("customer") Customer customer, BindingResult result,
                                       Model model) 
	{

        if (result.hasErrors()) {
            return "signUp";
        }

        List<Customer> customerList = cdao.getAllCustomers();

        for (int i=0; i< customerList.size(); i++) {
            if(customer.getCustomerEmail().equals(customerList.get(i).getCustomerEmail())) {
                model.addAttribute("emailMsg", "Email already exists");

                return "signUp";
            }

            /*
            if(user.getEmail().equals(customerList.get(i).getCustomerEmail())) {
                model.addAttribute("email", "Username already exists");

                return "signUp";
            }
            */
        }

        cdao.addCustomer(customer);

        return "Signup_Successful";
	}
	
	
}
