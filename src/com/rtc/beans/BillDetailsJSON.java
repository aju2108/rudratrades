package com.rtc.beans;

import java.util.HashMap;
import java.util.Map;

import com.rtc.model.Customer;

public class BillDetailsJSON {
	
	private Customer customer;
	Map<Integer, BillDetails> billDetailsMap = new HashMap<Integer, BillDetails>();
	private String vehicleNo;
	private String billPaymentType;
	private double total;
	private double netAmount;
	private double sgst;
	private double cgst;
	private double igst;
	private String netAmountInWords;
	private String date;
	private String time;
	
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

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public double getNetAmount() {
		return netAmount;
	}

	public void setNetAmount(double netAmount) {
		this.netAmount = netAmount;
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

	public String getNetAmountInWords() {
		return netAmountInWords;
	}

	public void setNetAmountInWords(String netAmountInWords) {
		this.netAmountInWords = netAmountInWords;
	}
	
	public String getVehicleNo() {
		return vehicleNo;
	}

	public void setVehicleNo(String vehicleNo) {
		this.vehicleNo = vehicleNo;
	}
	
	public String getBillPaymentType() {
		return billPaymentType;
	}

	public void setBillPaymentType(String billPaymentType) {
		this.billPaymentType = billPaymentType;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "BillDetailsJSON [customer=" + customer + ", billDetailsMap=" + billDetailsMap + ", vehicleNo="
				+ vehicleNo + ", billPaymentType=" + billPaymentType + ", total=" + total + ", netAmount=" + netAmount
				+ ", sgst=" + sgst + ", cgst=" + cgst + ", igst=" + igst + ", netAmountInWords=" + netAmountInWords
				+ ", date=" + date + ", time=" + time + "]";
	}

}
