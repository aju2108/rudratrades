package com.rtc.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rtc.model.PaymentType;

@Repository
public class PaymentTypeDAOImpl implements PaymentTypeDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@SuppressWarnings("unchecked")
	public List<PaymentType> getAllPaymentTypes() {
		return sessionFactory.getCurrentSession().createQuery("from PaymentType").list();
	}

}
