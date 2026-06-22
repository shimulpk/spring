package com.emranhss.Courier.repository;

import com.emranhss.Courier.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer,Long> {
}
