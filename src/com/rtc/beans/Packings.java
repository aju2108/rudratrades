package com.rtc.beans;

import java.util.HashMap;
import java.util.Map;

public class Packings {
	
	private String product;
	private String brand;
	private String packing;
	private int productId;
	private int brandId;
	private String date;
	
	Map<Integer, String> productsMap = new HashMap<Integer, String>();
	Map<Integer, String> brandsMap = new HashMap<Integer, String>();
	
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getPacking() {
		return packing;
	}
	public void setPacking(String packing) {
		this.packing = packing;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getBrandId() {
		return brandId;
	}
	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Map<Integer, String> getProductsMap() {
		return productsMap;
	}
	public void setProductsMap(Map<Integer, String> productsMap) {
		this.productsMap = productsMap;
	}
	public Map<Integer, String> getBrandsMap() {
		return brandsMap;
	}
	public void setBrandsMap(Map<Integer, String> brandsMap) {
		this.brandsMap = brandsMap;
	}
}
