package com.model;

import javax.persistence.*;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int productId;

	private String productName;
	private String productCategory;
	@Lob
	private String productDescription;

	private double productPrice;
	private String productCondition;
	private String productStatus;
	
	private int unitInStock;
    private String productManufacturer;
    
	@Transient
	private MultipartFile productImage;

	public int getProductId() 
	{
		return productId;
	}

	public void setProductId(int productId) 
	{
		this.productId = productId;
	}

	public String getProductName() 
	{
		return productName;
	}

	public void setProductName(String productName) 
	{
		System.out.println("in model");
		this.productName = productName;
	}

	public String getproductCategory() 
	{
		return productCategory;
	}

	public void setproductCategory(String productCategory) 
	{
		this.productCategory = productCategory;
	}

	public String getproductDescription() 
	{
		return productDescription;
	}

	public void setproductDescription(String productDescription) 
	{
		this.productDescription = productDescription;
	}
	
	public String getProductCategory() 
	{
		return productCategory;
	}

	public void setProductCategory(String productCategory) 
	{
		this.productCategory = productCategory;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public double getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductCondition() {
		return productCondition;
	}

	public void setProductCondition(String productCondition) 
	{
		this.productCondition = productCondition;
	}

	public String getProductStatus() 
	{
		return productStatus;
	}

	public void setProductStatus(String productStatus) 
	{
		this.productStatus = productStatus;
	}

	public int getUnitInStock() 
	{
		return unitInStock;
	}

	public void setUnitInStock(int unitInStock) 
	{
		this.unitInStock = unitInStock;
	}

	public String getProductManufacturer() 
	{
		return productManufacturer;
	}

	public void setProductManufacturer(String productManufacturer) 
	{
		this.productManufacturer = productManufacturer;
	}

	public MultipartFile getProductImage() 
	{
		return productImage;
	}

	public void setProductImage(MultipartFile productImage) 
	{
		this.productImage = productImage;
	}
}