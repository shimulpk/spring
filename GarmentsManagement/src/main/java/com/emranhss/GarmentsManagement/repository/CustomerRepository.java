package com.emranhss.GarmentsManagement.repository;

import com.emranhss.GarmentsManagement.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer,Long> {
}
