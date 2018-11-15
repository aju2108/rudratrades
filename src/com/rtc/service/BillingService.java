package com.rtc.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import com.rtc.beans.BillDetailsJSON;
import com.rtc.beans.Billing;

public interface BillingService {
	
	public Billing renderBill();
	
	public BillDetailsJSON createBill(HttpSession session);
	
	public Map<Integer, Billing> submitBill(Billing billing, HttpSession session);

}
