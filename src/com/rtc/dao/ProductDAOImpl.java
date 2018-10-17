package com.rtc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.rtc.model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO{
	
  @org.springframework.beans.factory.annotation.Autowired
  private SessionFactory sessionFactory;
  
  public ProductDAOImpl() {}
  
  public void addProduct(Product product)
  {
    sessionFactory.getCurrentSession().saveOrUpdate(product);
  }
  

  public List<Product> getAllProducts()
  {
    return sessionFactory.getCurrentSession().createQuery("from Product").list();
  }
  
  @Override
  public Product getProductByName(String productName) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Product.class);
		criteria.add(Restrictions.eq("name", productName));
		Product product = (Product) criteria.uniqueResult();
		return product;
  }
  
  public void deleteProduct(Integer productId)
  {
    Product product = (Product)sessionFactory.getCurrentSession().load(Product.class, productId);
    if (product != null) {
      sessionFactory.getCurrentSession().delete(product);
    }
  }
  
  public Product getProduct(int productid)
  {
    return (Product)sessionFactory.getCurrentSession().get(Product.class, Integer.valueOf(productid));
  }
  
  public Product updateProduct(Product product)
  {
    sessionFactory.getCurrentSession().update(product);
    return product;
  }
}