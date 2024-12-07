package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Supplier;

public interface SupplierService {
	public String SupplierRegistration(Supplier s);
	public Supplier checksuplogin(String email, String pwd); 
	public String updateSupplierProfile(Supplier supplier);
	public List<Supplier> ViewAllSuppliers();
	public Supplier displaySupplierByID(int sid);
	public List<Supplier> displaySupplierByCity(String city);
	public String deleteSupplier(int sid);
}
