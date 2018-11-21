package com.rtc.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import com.rtc.beans.Rates;

public interface RatesService {
	
	public Rates showRates();
	
	public List<Rates> addRates(Rates rates, HttpSession session);
	
	public List<Rates> getAllRates();
	
	public Map<String, String> getRateByBrandProductPacking(int brandId, int productId, int packingId);
	
}
