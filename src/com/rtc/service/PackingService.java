package com.rtc.service;

import com.rtc.beans.Packings;
import com.rtc.model.BrandProductPackingMapping;
import com.rtc.model.Packing;
import java.util.List;

import javax.servlet.http.HttpSession;

public abstract interface PackingService {

	public Packings getPackings();
	
	public void addPackings(Packings packings, HttpSession session);
	
	public List<BrandProductPackingMapping> gePackingByBrandProduct(int brandId, int productId);

	public abstract void addPacking(Packing paramPacking);

	public abstract List<Packing> getAllPackings();

	public Packing getPackingByName(String packingName);

	public abstract void deletePacking(Integer paramInteger);

	public abstract Packing getPacking(int paramInt);

	public abstract Packing updatePacking(Packing paramPacking);
	
	public String getHSNCode(int productId);

}