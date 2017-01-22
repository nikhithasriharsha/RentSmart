package com.rentsmart.daos;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
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
				
				Apartment apt = getApartmentFromResultSet(resultSet);
				
				apartments.add(apt);	
			}
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		
		return apartments;
	}
	
	public Apartment getbyId(int id) {
    	  
		try{
  			String query = "select * from Rent_Smart.Apartments, Rent_Smart.Apt_Images where Rent_Smart.Apartments.Id = Rent_Smart.Apt_Images.Apt_Id" ;
  			connection = dataSource.getConnection();
  			statement = connection.createStatement();
  			resultSet = statement.executeQuery(query);
  			
  			if(resultSet.next()) {
  				return getApartmentFromResultSet( resultSet );
  				
  			}
  		}
        catch(Exception ex){
			ex.printStackTrace();
		}
		
		return null;
  	}
		
	private Apartment getApartmentFromResultSet(ResultSet resultSet) throws SQLException{
		
		Apartment apt = new Apartment();
		apt.setId(resultSet.getInt("Id"));
		apt.setStreet(resultSet.getString("Street"));
		apt.setCity(resultSet.getString("City"));
		apt.setStatecode(resultSet.getString("State"));
			
		return apt;	
	}
}


