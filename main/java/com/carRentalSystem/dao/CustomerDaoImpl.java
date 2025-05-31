package com.infosys.carRentalSystem.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.infosys.carRentalSystem.bean.Customer;
@Service

public class CustomerDaoImpl implements CustomerDao{
	@Autowired
	private CustomerRepository repository;
	
	@Override
	public void save(Customer customer) {
		repository.save(customer);
	}
	
	@Override
	public Customer findById(String id) {
		 Optional<Customer> customer = repository.findById(id);
	        return customer.orElse(null);
	}
	
	@Override
	public List<Customer> findAll() {
		return repository.findAll();
	}
	
	@Override
	public void deleteCustomerById(String id) {
		repository.deleteById(id);
	}
	
	@Override
	public Boolean getCustomerStatusByUsername(String username) {
		 Boolean status =  repository.getCustomerStatusByUsername(username);
	       return status == null || status;
	}
	@Override
	public String getLicenceExpiryDate(String username) {
		return repository.getLicenceExpiryDate(username);
	}
}