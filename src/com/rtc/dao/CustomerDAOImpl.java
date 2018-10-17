package com.rtc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rtc.model.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO{

	@Autowired
	private SessionFactory sessionFactory;

	public void addCustomer(Customer customer) {
		sessionFactory.getCurrentSession().saveOrUpdate(customer);
	}

	@SuppressWarnings("unchecked")
	public List<Customer> getAllCustomers() {
		return sessionFactory.getCurrentSession().createQuery("from Customer").list();
	}

	@Override
	public void deleteCustomer(Integer customerId) {
		Customer Customer = (Customer) sessionFactory.getCurrentSession().load(
				Customer.class, customerId);
		if (null != Customer) {
			this.sessionFactory.getCurrentSession().delete(Customer);
		}

	}
	
	@Override
	public Customer getCustomer(int customerId) {
		return (Customer) sessionFactory.getCurrentSession().get(
				Customer.class, customerId);
	}
	
	@Override
	public Customer getCustomer(String customerName) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Customer.class);
		criteria.add(Restrictions.eq("name", customerName));
		Customer customer = (Customer)criteria.uniqueResult();
		return customer;
	}

	@Override
	public Customer updateCustomer(Customer customer) {
		sessionFactory.getCurrentSession().update(customer);
		return customer;
	}

}
