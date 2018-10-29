package com.rtc.beans;

import java.util.HashMap;
import java.util.Map;

import com.rtc.model.Customer;

public class BillDetailsJSON {
	
	private Customer customer;
	Map<Integer, BillDetails> billDetailsMap = new HashMap<Integer, BillDetails>();
	private double total;
	private double netAmount;
	private double sgst;
	private double cgst;
	private double igst;
	private String netAmountInWords;
	
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

	public String getNetAmountInWords() {
		return netAmountInWords;
	}

	public void setNetAmountInWords(String netAmountInWords) {
		this.netAmountInWords = netAmountInWords;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "BillDetailsJSON [customer=" + customer + ", billDetailsMap=" + billDetailsMap + ", total=" + total
				+ ", netAmount=" + netAmount + ", sgst=" + sgst + ", cgst=" + cgst + ", igst=" + igst
				+ ", netAmountInWords=" + netAmountInWords + "]";
	}

}
