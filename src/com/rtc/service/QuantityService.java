package com.rtc.service;

import java.util.List;

import com.rtc.model.Quantity;

public interface QuantityService {
	
	public void addQuantity(Quantity quantity);

	public List<Quantity> getAllQuantities();

	public void deleteQuantity(Integer quantityId);

	public Quantity getQuantity(int quantityId);
	
	public Quantity updateQuantity(Quantity quantity);

}
