package com.model;

import javax.persistence.*;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int customerId;
	
	
	@Column(name = "Name")
	@NotEmpty(message="Name id cannot be null!")
	private String customerName;
	
	@Column(name = "Email")
	@NotEmpty(message="Email id cannot be null!")
	@Pattern(regexp=".+@.+\\..+", message="Wrong email!")
	private String customerEmail;
	
	@Column(name = "PhoneNo")
	@NotEmpty(message="Phone number cannot be null!")
	private String customerPhoneNo;
	
	@NotEmpty(message="password cannot be null!")
	private String password;

//	private boolean enabled;
	
	
	
	@OneToOne
	@JoinColumn(name="BillingAddress_Id")
	BillingAddress billingAddress = new BillingAddress();
	
	@OneToOne
	@JoinColumn(name="ShippingAddress_Id")
	ShippingAddress shippingAddress = new ShippingAddress();

	public int getCustomerId() 
	{
		return customerId;
	}

	public void setCustomerId(int customerId) 
	{
		this.customerId = customerId;
	}

	public String getCustomerName() 
	{
		return customerName;
	}

	public void setCustomerName(String customerName) 
	{
		this.customerName = customerName;
	}

	public String getCustomerEmail() 
	{
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) 
	{
		this.customerEmail = customerEmail;
	}

	public String getCustomerPhoneNo() 
	{
		return customerPhoneNo;
	}

	public void setCustomerPhoneNo(String customerPhoneNo) 
	{
		this.customerPhoneNo = customerPhoneNo;
	}
	
	public String getPassword() 
	{
		return password;
	}

	public void setPassword(String password) 
	{
		this.password = password;
	}

	/*
	public boolean isEnabled() 
	{
		return enabled;
	}

	public void setEnabled(boolean enabled)
	{
		this.enabled = enabled;
	}
	*/
	public BillingAddress getBillingAddress() 
	{
		return billingAddress;
	}

	public void setBillingAddress(BillingAddress billingAddress) 
	{
		this.billingAddress = billingAddress;
	}

	public ShippingAddress getShippingAddress()
	{
		return shippingAddress;
	}

	public void setShippingAddress(ShippingAddress shippingAddress) 
	{
		this.shippingAddress = shippingAddress;
	}

	
	
}
