package com.daoImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.dao.ProductDao;
import com.model.Product;

import java.util.List;

import org.hibernate.*;

@Repository
@Transactional
public  class ProductDaoImpl implements ProductDao
{
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public void addProducts(Product product) 
	{
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
		session.flush();
	}

	@Override
	public List<Product> productList() 
	{
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Product");
		List<Product> pro =  (List<Product>) query.list();
		session.flush();
		return pro;
	}

	@Override
	public void deleteProduct(int pid) 
	{
		System.out.println("In DAO");
		Session session = sessionFactory.getCurrentSession();
		Query qry = session.createQuery("delete from Product p where p.productId=:java4s");
		qry.setParameter("java4s", pid);
		int res = qry.executeUpdate();
		System.out.println("deleted!!");
		session.flush();
	}

	@Override
	public Product getProductById(int pid) 
	{
		Product p = new Product();
		System.out.println("in DAO ID IS "+ pid);
		Session session = sessionFactory.getCurrentSession();
		p = (Product) session.get(Product.class, pid);
		return p;
	}

	@Override
	public void editProduct(Product product) 
	{
		System.out.println("In DAO EDIT");
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
//		Query qry = session.createQuery("Update Product p where p.productId=:java4s");
//		qry.setParameter("java4s", pid);
//		int res = qry.executeUpdate();
		System.out.println("edited!!");
		session.flush();
	}


}
