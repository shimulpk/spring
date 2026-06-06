package com.emranhss.GarmentsManagement.repository;

import com.emranhss.GarmentsManagement.entity.Rider;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RiderRepository extends JpaRepository<Rider,Long> {

}
