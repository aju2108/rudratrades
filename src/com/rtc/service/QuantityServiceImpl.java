package com.rtc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rtc.dao.QuantityDAO;
import com.rtc.model.Quantity;

@Service
@Transactional
public class QuantityServiceImpl implements QuantityService{
	
	@Autowired
	private QuantityDAO QuantityDAO;

	@Override
	@Transactional
	public void addQuantity(Quantity quantity) {
		QuantityDAO.addQuantity(quantity);
		
	}

	@Override
	@Transactional
	public List<Quantity> getAllQuantities() {
		return QuantityDAO.getAllQuantitys();
	}

	@Override
	@Transactional
	public void deleteQuantity(Integer quantityId) {
		QuantityDAO.deleteQuantity(quantityId);
		
	}

	@Override
	@Transactional
	public Quantity getQuantity(int quantityId) {
		return QuantityDAO.getQuantity(quantityId);
	}

	@Override
	@Transactional
	public Quantity updateQuantity(Quantity quantity) {
		return QuantityDAO.updateQuantity(quantity);
	}

}
