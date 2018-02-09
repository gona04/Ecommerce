package com.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.CustomerDao;
import com.model.Customer;
import com.model.Users;

@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao
{

	@Autowired
	SessionFactory sessionFactory;
	
	
	@Override
	public void addCustomer(Customer customer) 
	{
		System.out.println("in customerDAO adding user"+ "\n" +customer.getBillingAddress());
		Session session = sessionFactory.getCurrentSession();
		
		customer.getBillingAddress().setCustomer(customer);
		customer.getShippingAddress().setCustomer(customer);
		
		session.save(customer);
		session.save(customer.getBillingAddress());
		session.save(customer.getShippingAddress());
		
		
		Users user = new Users();
		
		 user.setContactNumber(customer.getCustomerPhoneNo());
	        user.setEmail(customer.getCustomerEmail());
	        user.setName(customer.getCustomerName());
	        user.setPassword(customer.getPassword());
	        user.setRole("ROLE_USER");
	        user.setEnabled(true);
	        
	        session.save(user);
		session.flush();
	}

	@Override
	public Customer getCustomerById(int customerId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Customer> getAllCustomers() 
	{ 
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Customer");
		List<Customer> customerList = (List<Customer>) query.list();
		session.flush();
		return customerList;
	}

	@Override
	public Customer getCustomerByEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
