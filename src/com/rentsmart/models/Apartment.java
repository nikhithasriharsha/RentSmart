package com.rentsmart.models;

import java.util.Date;
import java.util.List;

public class Apartment {
	private int id;
	
	private String street;
	private String city;
	private String statecode;
	private String zipcode;
	
	private int numBeds;
	private float numBaths;
	private int sqft;
	
	
	
	private Image img;
	
	
	public Image getImg() {
		return img;
	}
	public void setImg(Image img) {
		this.img = img;
	}
	private Date availableDate;
	private int expectedRent;
	private String description;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getStatecode() {
		return statecode;
	}
	public void setStatecode(String statecode) {
		this.statecode = statecode;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public int getNumBeds() {
		return numBeds;
	}
	public void setNumBeds(int numBeds) {
		this.numBeds = numBeds;
	}
	public float getNumBaths() {
		return numBaths;
	}
	public void setNumBaths(float numBaths) {
		this.numBaths = numBaths;
	}
	public int getSqft() {
		return sqft;
	}
	public void setSqft(int sqft) {
		this.sqft = sqft;
	}
	public Date getAvailableDate() {
		return availableDate;
	}
	public void setAvailableDate(Date availableDate) {
		this.availableDate = availableDate;
	}
	public int getExpectedRent() {
		return expectedRent;
	}
	public void setExpectedRent(int expectedRent) {
		this.expectedRent = expectedRent;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	

}
