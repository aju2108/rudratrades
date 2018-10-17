package com.rtc.dao;

import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.rtc.model.Quantity;

@Repository
public class QuantityDAOImpl implements QuantityDAO{
	
	@Autowired
	private SessionFactory sessionFactory;


	@Override
	public void addQuantity(Quantity Quantity) {
		sessionFactory.getCurrentSession().saveOrUpdate(Quantity);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Quantity> getAllQuantitys() {
		return sessionFactory.getCurrentSession().createQuery("from Quantity").list();
	}

	@Override
	public void deleteQuantity(Integer quantityId) {
		Quantity Quantity = (Quantity) sessionFactory.getCurrentSession().load(Quantity.class, quantityId);
		if (null != Quantity) {
			this.sessionFactory.getCurrentSession().delete(Quantity);
		}
	}

	@Override
	public Quantity getQuantity(int quantityId) {
		return (Quantity) sessionFactory.getCurrentSession().get(Quantity.class, quantityId);
	}

	@Override
	public Quantity updateQuantity(Quantity Quantity) {
		sessionFactory.getCurrentSession().update(Quantity);
		return Quantity;
	}

}
