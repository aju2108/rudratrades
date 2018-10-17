package com.rtc.service;

import java.util.List;

import com.rtc.dao.CustomerDAO;
import com.rtc.model.Customer;

public interface CustomerService {
	
	public void addCustomer(Customer customer);

	public List<Customer> getAllCustomers();

	public void deleteCustomer(Integer customerId);

	public Customer getCustomer(int customerId);
	
	public Customer getCustomer(String customerName);

	public Customer updateCustomer(Customer customer);
	
	public void setCustomerDAO(CustomerDAO CustomerDAO);

}
