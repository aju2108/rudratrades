package com.rtc.beans;

import java.util.HashMap;
import java.util.Map;

public class Rates {
	
	private int id;
	private String product;
	private String brand;
	private String packing;
	private int productId;
	private int brandId;
	private int packingId;
	private double rate;
	private double gst;
	private double sgst;
	private double cgst;
	private double igst;
	private String date;
	
	Map<Integer, String> productsMap = new HashMap<Integer, String>();
	Map<Integer, String> brandsMap = new HashMap<Integer, String>();
	Map<Integer, String> packgingMap = new HashMap<Integer, String>();
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
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
	public int getPackingId() {
		return packingId;
	}
	public void setPackingId(int packingId) {
		this.packingId = packingId;
	}
	public double getRate() {
		return rate;
	}
	public void setRate(double rate) {
		this.rate = rate;
	}
	public double getGst() {
		return gst;
	}
	public void setGst(double gst) {
		this.gst = gst;
	}
	public double getSgst() {
		return sgst;
	}
	public void setSgst(double sgst) {
		this.sgst = sgst;
	}
	public double getCgst() {
		return cgst;
	}
	public void setCgst(double cgst) {
		this.cgst = cgst;
	}
	public double getIgst() {
		return igst;
	}
	public void setIgst(double igst) {
		this.igst = igst;
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
	public Map<Integer, String> getPackgingMap() {
		return packgingMap;
	}
	public void setPackgingMap(Map<Integer, String> packgingMap) {
		this.packgingMap = packgingMap;
	}
}
