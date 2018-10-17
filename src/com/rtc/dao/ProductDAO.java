package com.rtc.dao;

import java.util.List;

import com.rtc.model.Product;

public abstract interface ProductDAO
{
  public abstract void addProduct(Product paramProduct);
  
  public abstract List<Product> getAllProducts();
  
  public abstract void deleteProduct(Integer paramInteger);
  
  public abstract Product getProduct(int paramInt);
  
  public Product getProductByName(String productName);
  
  public abstract Product updateProduct(Product paramProduct);
}