package com.rtc.service;

import javax.servlet.http.HttpSession;

import com.rtc.beans.Billing;

public interface BillingService {
	
	public Billing renderBill();
	
	public Billing createBill(HttpSession session);
	
	public Billing submitBill(Billing billing, HttpSession session);

}
