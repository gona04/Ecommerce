/*
package com.model;
import java.io.Serializable;
import java.util.List;

import javax.persistence.*;
import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
public class Cart
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cartId;
	
	@OneToOne(mappedBy="Cart", cascade=CascadeType.ALL , fetch= FetchType.EAGER)
	private List<Cart_Items> cartItems;
	
	@OneToOne
	@JoinColumn(name="customerId")
	//@JsonIgnore
	private Customer customer;
	
}
*/
