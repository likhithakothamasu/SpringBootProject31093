package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Supplier;

import jakarta.transaction.Transactional;

@Repository
public interface SupplierRepository extends JpaRepository<Supplier, Integer> {
    
    @Query("select s from Supplier s where s.email=?1 and s.password=?2")
    Supplier checksuplogin(String email, String pwd); 
    
    @Query("select s from Supplier s where s.city=?1")
    List<Supplier> viewallsuppliersbycity(String city);
    
    @Modifying
    @Transactional
    @Query("delete from Supplier where email=?1")
    int deleteSupByEmail(String email);
}
