package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CartController 
{
	@RequestMapping(value="/cart")
	public String startCart()
	{
		return "cart";
	}
}
