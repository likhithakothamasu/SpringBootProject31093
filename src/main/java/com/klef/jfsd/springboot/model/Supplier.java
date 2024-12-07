package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "supplier_table")
public class Supplier 
{
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "supplier_id")
  private int id;

  @Column(name = "supplier_name", nullable = false, length = 100)
  private String name;

  @Column(name = "gender", nullable = false, length = 10)
  private String gender;

  @Column(name = "email", nullable = false, length = 100, unique = true)
  private String email;

  @Column(name = "contact_num", nullable = false, length = 15)
  private String contactNumber;

  @Column(name = "city", nullable = false, length = 50)
  private String city;

  @Column(name = "rating", nullable = false)
  private double rating;
  
  @Column(name = "password", nullable = false)
  private String password;

  // Getters and Setters
  public int getId() {
    return id;
  }
  public void setId(int id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  public String getGender() {
    return gender;
  }
  public void setGender(String gender) {
    this.gender = gender;
  }

  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }

  public String getContactNumber() {
    return contactNumber;
  }
  public void setContactNumber(String contactNumber) {
    this.contactNumber = contactNumber;
  }

  public String getCity() {
    return city;
  }
  public void setCity(String city) {
    this.city = city;
  }

   
  public double getRating() {
    return rating;
  }
  public void setRating(double rating) {
    this.rating = rating;
  }
  
  public String getPassword() {
	    return password;
	  }
	  public void setPassword(String password) {
	    this.password = password;
	  }
}
