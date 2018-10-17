package com.rtc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rtc.dao.ProductDAO;
import com.rtc.model.Product;

@Service
@Transactional
public class ProductServiceImpl implements ProductService{
	
  @Autowired
  private ProductDAO productDAO;
  
  public ProductServiceImpl() {}
  
  @Transactional
  public void addProduct(Product product)
  {
    productDAO.addProduct(product);
  }
  

  @Transactional
  public List<Product> getAllProducts()
  {
    return productDAO.getAllProducts();
  }
  
  @Transactional
  public void deleteProduct(Integer productId)
  {
    productDAO.deleteProduct(productId);
  }
  

  @Transactional
  public Product getProduct(int productid)
  {
    return productDAO.getProduct(productid);
  }
  
  @Transactional
  public Product getProductByName(String productName) {
	  return productDAO.getProductByName(productName);
  }
  
  @Transactional
  public Product updateProduct(Product product)
  {
    return productDAO.updateProduct(product);
  }
}