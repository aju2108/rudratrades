package com.rtc.dao;

import java.util.List;

import com.rtc.model.Quantity;

public interface QuantityDAO {
	
	public void addQuantity(Quantity quantity);

	public List<Quantity> getAllQuantitys();

	public void deleteQuantity(Integer quantityId);

	public Quantity getQuantity(int quantityId);

	public Quantity updateQuantity(Quantity quantity);

}
