package com.rtc.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "brand_product_packing_rate_tax_mapping")
public class BrandProductPackingRateTaxMapping {

	private static final long serialVersionUID = -3465813074586302847L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column
	private int brandId;

	@Column
	private int productId;

	@Column
	private int packingId;

	@Column
	private double rate;

	@Column
	private double GST;

	@Column
	private double CGST;

	@Column
	private double IGST;

	@Column
	private Date createdDate;

	@Column
	private Date modifiedDate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getBrandId() {
		return brandId;
	}

	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
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

	public double getGST() {
		return GST;
	}

	public void setGST(double gST) {
		GST = gST;
	}

	public double getCGST() {
		return CGST;
	}

	public void setCGST(double cGST) {
		CGST = cGST;
	}

	public double getIGST() {
		return IGST;
	}

	public void setIGST(double iGST) {
		IGST = iGST;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public Date getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
}
