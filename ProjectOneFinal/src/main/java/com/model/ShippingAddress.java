package com.model;

import javax.persistence.*;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class ShippingAddress 
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int ShippingAddressId;
	@NotEmpty (message = "The apartmentNumber must not be null.")
	private String apartmentNumber;
	@NotEmpty (message = "The street name must not be null.")
	private String streetName;
	@NotEmpty (message = "The city must not be null.")
	private String city;
	@NotEmpty (message = "The state must not be null.")
	private String state;
	@NotEmpty (message = "The country must not be null.")
	private String country;
	
	@NotEmpty (message = "The zipCode must not be null.")
	private String zipcode;
	
	@OneToOne
	private Customer customer;
	
	
	
	public int getShippingAddressId() 
	{
		return ShippingAddressId;
	}

	public void setShippingAddressId(int shippingAddressId) 
	{
		ShippingAddressId = shippingAddressId;
	}

	public String getApartmentNumber() 
	{
		return apartmentNumber;
	}
	
	public void setApartmentNumber(String apartmentNumber) 
	{
		this.apartmentNumber = apartmentNumber;
	}
	
	public String getStreetName() 
	{
		return streetName;
	}
	
	public void setStreetName(String streetName) 
	{
		this.streetName = streetName;
	}
	
	public String getCity() 
	{
		return city;
	}
	
	public void setCity(String city) 
	{
		this.city = city;
	}
	
	public String getState() 
	{
		return state;
	}
	
	public void setState(String state) 
	{
		this.state = state;
	}
	
	public String getCountry() 
	{
		return country;
	}
	
	public void setCountry(String country) 
	{
		this.country = country;
	}
	
	public String getZipcode() 
	{
		return zipcode;
	}
	
	public void setZipcode(String zipcode) 
	{
		this.zipcode = zipcode;
	}

	public Customer getCustomer() 
	{
		return customer;
	}

	public void setCustomer(Customer customer) 
	{
		this.customer = customer;
	}
	
	
}
