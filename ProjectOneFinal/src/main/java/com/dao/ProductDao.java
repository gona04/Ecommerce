package com.dao;

import com.model.Product;
import java.util.*;

public interface ProductDao 
{
	public List<Product> productList();
	public void addProducts(Product product);
	public void editProduct(Product product);
	public void deleteProduct(int pid);
	public Product getProductById(int pid);
}
