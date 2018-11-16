package com.rtc.beans;

import java.util.HashMap;
import java.util.Map;

public class Rates {
	
	private String product;
	private String brand;
	private String packing;
	private Integer productId;
	private Integer brandId;
	private Integer packingId;
	private double rate;
	private double gst;
	private double sgst;
	private double cgst;
	private double igst;
	
	Map<Integer, String> productsMap = new HashMap<Integer, String>();
	Map<Integer, String> brandsMap = new HashMap<Integer, String>();
	Map<Integer, String> packgingMap = new HashMap<Integer, String>();
	
	/**
	 * @return the product
	 */
	public String getProduct() {
		return product;
	}
	/**
	 * @param product the product to set
	 */
	public void setProduct(String product) {
		this.product = product;
	}
	/**
	 * @return the brand
	 */
	public String getBrand() {
		return brand;
	}
	/**
	 * @param brand the brand to set
	 */
	public void setBrand(String brand) {
		this.brand = brand;
	}
	/**
	 * @return the packing
	 */
	public String getPacking() {
		return packing;
	}
	/**
	 * @param packing the packing to set
	 */
	public void setPacking(String packing) {
		this.packing = packing;
	}
	/**
	 * @return the productId
	 */
	public Integer getProductId() {
		return productId;
	}
	/**
	 * @param productId the productId to set
	 */
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	/**
	 * @return the brandId
	 */
	public Integer getBrandId() {
		return brandId;
	}
	/**
	 * @param brandId the brandId to set
	 */
	public void setBrandId(Integer brandId) {
		this.brandId = brandId;
	}
	/**
	 * @return the packingId
	 */
	public Integer getPackingId() {
		return packingId;
	}
	/**
	 * @param packingId the packingId to set
	 */
	public void setPackingId(Integer packingId) {
		this.packingId = packingId;
	}
	/**
	 * @return the rate
	 */
	public double getRate() {
		return rate;
	}
	/**
	 * @param rate the rate to set
	 */
	public void setRate(double rate) {
		this.rate = rate;
	}
	/**
	 * @return the gst
	 */
	public double getGst() {
		return gst;
	}
	/**
	 * @param gst the gst to set
	 */
	public void setGst(double gst) {
		this.gst = gst;
	}
	/**
	 * @return the sgst
	 */
	public double getSgst() {
		return sgst;
	}
	/**
	 * @param sgst the sgst to set
	 */
	public void setSgst(double sgst) {
		this.sgst = sgst;
	}
	/**
	 * @return the cgst
	 */
	public double getCgst() {
		return cgst;
	}
	/**
	 * @param cgst the cgst to set
	 */
	public void setCgst(double cgst) {
		this.cgst = cgst;
	}
	/**
	 * @return the igst
	 */
	public double getIgst() {
		return igst;
	}
	/**
	 * @param igst the igst to set
	 */
	public void setIgst(double igst) {
		this.igst = igst;
	}
	/**
	 * @return the productsMap
	 */
	public Map<Integer, String> getProductsMap() {
		return productsMap;
	}
	/**
	 * @param productsMap the productsMap to set
	 */
	public void setProductsMap(Map<Integer, String> productsMap) {
		this.productsMap = productsMap;
	}
	/**
	 * @return the brandsMap
	 */
	public Map<Integer, String> getBrandsMap() {
		return brandsMap;
	}
	/**
	 * @param brandsMap the brandsMap to set
	 */
	public void setBrandsMap(Map<Integer, String> brandsMap) {
		this.brandsMap = brandsMap;
	}
	/**
	 * @return the packgingMap
	 */
	public Map<Integer, String> getPackgingMap() {
		return packgingMap;
	}
	/**
	 * @param packgingMap the packgingMap to set
	 */
	public void setPackgingMap(Map<Integer, String> packgingMap) {
		this.packgingMap = packgingMap;
	}

}
