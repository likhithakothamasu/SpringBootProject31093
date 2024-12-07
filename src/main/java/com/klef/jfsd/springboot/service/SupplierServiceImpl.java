package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Supplier;
import com.klef.jfsd.springboot.repository.SupplierRepository;

@Service
public class SupplierServiceImpl implements SupplierService {
    
    @Autowired
    private SupplierRepository supplierRepository;
    
    @Override
    public String SupplierRegistration(Supplier s) {
        supplierRepository.save(s);
        return "Supplier Registered Successfully";
    }

    @Override
    public Supplier checksuplogin(String email, String pwd) {
        return supplierRepository.checksuplogin(email, pwd);
    }
    
    

    @Override
    public String updateSupplierProfile(Supplier supplier) {
        Supplier s = supplierRepository.findById(supplier.getId()).orElse(null);
        if (s != null) {
            s.setName(supplier.getName());
            s.setEmail(supplier.getEmail());
            s.setContactNumber(supplier.getContactNumber());
            s.setRating(supplier.getRating());
            supplierRepository.save(s);
            return "Supplier Updated Successfully";
        } else {
            return "Supplier Not Found";
        }
    }

    @Override
    public Supplier displaySupplierByID(int sid) {
        return supplierRepository.findById(sid).orElse(null);
    }

    @Override
    public List<Supplier> displaySupplierByCity(String city) {
        return supplierRepository.viewallsuppliersbycity(city);
    }

    @Override
    public String deleteSupplier(int sid) {
        supplierRepository.deleteById(sid);
        return "Supplier Deleted Successfully";
    }

	@Override
	public List<Supplier> ViewAllSuppliers() {
		
		return supplierRepository.findAll();
	}
}
