package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.klef.jfsd.springboot.model.Donation;

public interface DonationRepository extends JpaRepository<Donation, Integer> {

}
