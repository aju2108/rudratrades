package com.rtc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rtc.dao.PaymentTypeDAO;
import com.rtc.model.PaymentType;

@Service
@Transactional
public class PaymentTypeServiceImpl implements PaymentTypeService{
	
	@Autowired
	PaymentTypeDAO paymentTypeDAO;

	@Override
	@Transactional
	public List<PaymentType> getAllPaymentTypes() {
		return paymentTypeDAO.getAllPaymentTypes();
	}
}
