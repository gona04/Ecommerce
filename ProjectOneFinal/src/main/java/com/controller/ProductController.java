package com.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.dao.ProductDao;
import com.model.Product;

@Controller
public class ProductController {

	private Path path;
	@Autowired
	private ProductDao pdao;

	@RequestMapping(value = "/admin/productList")
	public String listOfProducts(Model model) {
		List<Product> pro = pdao.productList();
		model.addAttribute("product", pro);
		for (Product p : pro) {
			System.out.println("name is: " + p.getProductName());
		}
		return "productList";
		
	}

	@RequestMapping(value = "/admin/addProducts", method = RequestMethod.GET)
	public String setProducts(Model model) {
		System.out.println("in GetMethod");
		Product product = new Product();
		model.addAttribute("product", product);
		return "addProducts";
	}

	@RequestMapping(value = "/admin/addProductsP", method = RequestMethod.POST)
	public String saveProducts(@ModelAttribute("product") Product product, HttpServletRequest request) {
		System.out.println("in postMethod");
		pdao.addProducts(product);

		// For adding an image!!!
		MultipartFile productImage = product.getProductImage();
		path = Paths
				.get("//Users//goonja//SpringFramScratch2//ProjectFinal//WebContent//WEB-INF//resources//productImages//"
						+ "Image " + product.getProductId() + ".jpg");
		if (productImage != null && !productImage.isEmpty()) {
			System.out.println("In image stroing process");
			try {
				productImage.transferTo(new File(path.toString()));
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("Product image saving failed!", e);
			}
		}
		return "redirect:/addProducts";
	}

	@RequestMapping("/admin/deleteProduct/{pid}")
	public String deleteProduct(@PathVariable int pid, Model model, HttpServletRequest request) {
		System.out.println("in delete!" + " " + pid);
		pdao.deleteProduct(pid);

		// For deleting an image!!!
		path = Paths
				.get("//Users//goonja//SpringFramScratch2//ProjectFinal//WebContent//WEB-INF//resources//productImages//"
						+ "Image " + pid + ".jpg");
		if (Files.exists(path)) {
			try {
				Files.delete(path);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "redirect:/productList";
	}

	// had the edit get here put it there again !!!
	@RequestMapping("/admin/editProduct/{pid}")
	public String editProductGet(@PathVariable int pid, Model model, HttpServletRequest request,
			@ModelAttribute("products") Product product) {
		System.out.println("in EDIT GET!" + " id is..." + product.getProductId() + " pid " + pid);

		Product p = new Product();
		p = pdao.getProductById(pid);
		model.addAttribute("product", p);
		System.out.println("after the process still in  edit! Get" + "id " + pid);
		return "editProducts";
	}

	@RequestMapping(value = "/new/edit", method = RequestMethod.POST)
	public String editProdcut3(@ModelAttribute("product") Product product, HttpServletRequest request) {
		System.out.println(product.getProductName() + " in POst of edit " + "Id is " + product.getProductId());
		pdao.editProduct(product);

		// For editing an image!!!
		MultipartFile productImage = product.getProductImage();
		System.out.println("image strored in multipart file in edit!");
		path = Paths
				.get("//Users//goonja//SpringFramScratch2//ProjectFinal//WebContent//WEB-INF//resources//productImages//"
						+ "Image " + product.getProductId() + ".jpg");
		if (productImage != null && !productImage.isEmpty()) {
			System.out.println("in edit photo");
			try {
				productImage.transferTo(new File(path.toString()));
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("Product image saving failed!", e);
			}
		}
		return "redirect:/productList";
	}
	
	@RequestMapping(value="/user/viewProducts")
	public String viewProducts(Model model)
	{
		List<Product> pl = new <Product> ArrayList();
		pl = pdao.productList();
		model.addAttribute("product",pl);
		return "viewProducts";
	}
	
	@RequestMapping(value="user/productDetails/{pid}")
	public String ProductDetails(@PathVariable int pid,Model model,HttpServletRequest request )
	{
		Product p = new Product();
		List <Product> pl = new ArrayList <>();
		pl = pdao.productList();
		
		int size = pl.size();
		System.out.println("number is "+ pid + " limit is "+size);
//		if(pid == size)
//		{
//			pid=1;
//		}
		 if (pid == 0)
		{
			pid = size;
		}
		
		if (pid > size)
		{
			System.out.println("in greater than loop");
			pid = 1;
		}
		p = pdao.getProductById(pid);
		System.out.println(p.getProductCategory()+"\n"+p.getProductId());
		model.addAttribute("product", p);
		return "productDetails";
	}
	
	@RequestMapping("/productDetails")
	public String productUser()
	{
		return "productDetails";
	}
}
