package com.rtc.service;

import com.rtc.model.Product;
import java.util.List;

public abstract interface ProductService{
	
  public abstract void addProduct(Product paramProduct);
  
  public abstract List<Product> getAllProducts();
  
  public abstract void deleteProduct(Integer paramInteger);
  
  public abstract Product getProduct(int paramInt);
  
  public Product getProductByName(String productName);
  
  public abstract Product updateProduct(Product paramProduct);
  
}