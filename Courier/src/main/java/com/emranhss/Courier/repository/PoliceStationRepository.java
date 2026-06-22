package com.emranhss.Courier.repository;

import com.emranhss.Courier.entity.PoliceStation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PoliceStationRepository extends JpaRepository<PoliceStation,Long> {

}

