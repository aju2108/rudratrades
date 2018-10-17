package com.rtc.dao;

import java.util.List;

import com.rtc.model.Customer;

public interface CustomerDAO {

	public void addCustomer(Customer customer);

	public List<Customer> getAllCustomers();

	public void deleteCustomer(Integer customerId);

	public Customer updateCustomer(Customer customer);

	public Customer getCustomer(int customerId);
	
	public Customer getCustomer(String customerName);
	
}
