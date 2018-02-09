package com.dao;

import java.util.List;

import com.model.Customer;

public interface CustomerDao 
{
	void addCustomer(Customer customer);
	Customer getCustomerById(int customerId);
	List<Customer> getAllCustomers();
	Customer getCustomerByEmail(String email);
}
