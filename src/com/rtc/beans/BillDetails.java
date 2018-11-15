package com.rtc.beans;

public class BillDetails {
	
	private String product;
	private String hsnCode;
	private String brand;
	private String packing;
	private Integer quantity;
	private String unit;
	private double rate;
	private double gst;
	private double amount;
	
	public BillDetails() {
	}
	
	public BillDetails(String product, String hsnCode, String brand, String packing, Integer quantity, String unit, double rate,
			double gst, double amount) {
		super();
		this.product = product;
		this.hsnCode = hsnCode;
		this.brand = brand;
		this.packing = packing;
		this.quantity = quantity;
		this.unit = unit;
		this.rate = rate;
		this.gst = gst;
		this.amount = amount;
	}
	
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public String getHsnCode() {
		return hsnCode;
	}
	public void setHsnCode(String hsnCode) {
		this.hsnCode = hsnCode;
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
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
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
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}

	@Override
	public String toString() {
		return "BillDetails [product=" + product + ",hsnCode=" + hsnCode + ", brand=" + brand + ", packing=" + packing + ", quantity="
				+ quantity + ", unit=" + unit + ", rate=" + rate + ", gst=" + gst + ", amount=" + amount + "]";
	}
}
