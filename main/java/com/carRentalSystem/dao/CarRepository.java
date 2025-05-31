package com.infosys.carRentalSystem.dao;

import com.infosys.carRentalSystem.bean.Car;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CarRepository extends JpaRepository<Car, String> {
    
	@Query("select a from Car a where available=true")
	   public List<Car> getAvailableCars();
    
}