package com.emranhss.GarmentsManagement.repository;

import com.emranhss.GarmentsManagement.entity.PoliceStation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PoliceStationRepository extends JpaRepository<PoliceStation,Long> {

}

