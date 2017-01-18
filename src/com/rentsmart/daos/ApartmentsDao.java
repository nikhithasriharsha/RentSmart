package com.rentsmart.daos;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.rentsmart.models.Apartment;

public class ApartmentsDao {
	
	private DataSource dataSource;
	
	private Connection connection;
	
	private Statement statement;
	
	private ResultSet resultSet;
	
	public ApartmentsDao(DataSource ds) {
		this.dataSource = ds;
	}
	
	public List<Apartment> getApartments() {
		List<Apartment> apartments = new ArrayList<Apartment>();
		
		try{
			String query = "select * from Apartments";
			connection = dataSource.getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(query);
			
			while(resultSet.next()){
				
				Apartment apt = new Apartment();
				apt.setId(resultSet.getInt("Id"));
				apt.setStreet(resultSet.getString("Street"));
				apt.setCity(resultSet.getString("City"));
				apt.setStatecode(resultSet.getString("State"));
				apt.setZipcode(resultSet.getString("Zipcode"));
				
				apartments.add(apt);
				
				
			}
				
			
			
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		
		return apartments;
	}

}
