package com.rtc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rtc.dao.CustomerDAO;
import com.rtc.model.Customer;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	private CustomerDAO CustomerDAO;

	@Override
	@Transactional
	public void addCustomer(Customer customer) {
		CustomerDAO.addCustomer(customer);
	}

	@Override
	@Transactional
	public List<Customer> getAllCustomers() {
		return CustomerDAO.getAllCustomers();
	}

	@Override
	@Transactional
	public void deleteCustomer(Integer customerId) {
		CustomerDAO.deleteCustomer(customerId);
	}

	@Override
	public Customer getCustomer(int customerId) {
		return CustomerDAO.getCustomer(customerId);
	}
	
	@Override
	public Customer getCustomer(String customerName) {
		return CustomerDAO.getCustomer(customerName);
	}

	@Override
	public Customer updateCustomer(Customer customer) {
		// TODO Auto-generated method stub
		return CustomerDAO.updateCustomer(customer);
	}

	@Override
	public void setCustomerDAO(CustomerDAO CustomerDAO) {
		this.CustomerDAO = CustomerDAO;
	}

}
