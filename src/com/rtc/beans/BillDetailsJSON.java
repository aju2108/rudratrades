package com.rtc.beans;

import java.util.HashMap;
import java.util.Map;

import com.rtc.model.Customer;

public class BillDetailsJSON {
	
	private Customer customer;
	Map<Integer, BillDetails> billDetailsMap = new HashMap<Integer, BillDetails>();
	private Double total;
	private Double netAmount;
	private Double sgst;
	private Double cgst;
	private Double igst;
	
	public BillDetailsJSON() {}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Map<Integer, BillDetails> getBillDetailsMap() {
		return billDetailsMap;
	}

	public void setBillDetailsMap(Map<Integer, BillDetails> billDetailsMap) {
		this.billDetailsMap = billDetailsMap;
	}

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

	public Double getNetAmount() {
		return netAmount;
	}

	public void setNetAmount(Double netAmount) {
		this.netAmount = netAmount;
	}

	public Double getSgst() {
		return sgst;
	}

	public void setSgst(Double sgst) {
		this.sgst = sgst;
	}

	public Double getCgst() {
		return cgst;
	}

	public void setCgst(Double cgst) {
		this.cgst = cgst;
	}

	public Double getIgst() {
		return igst;
	}

	public void setIgst(Double igst) {
		this.igst = igst;
	}

	@Override
	public String toString() {
		return "BillDetailsJSON [customer=" + customer + ", BillDetails=" + billDetailsMap + ", total=" + total
				+ ", netAmount=" + netAmount + ", sgst=" + sgst + ", cgst=" + cgst + ", igst=" + igst + "]";
	}

}
