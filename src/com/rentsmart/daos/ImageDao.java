package com.rentsmart.daos;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.rentsmart.models.Apartment;
import com.rentsmart.models.Image;

public class ImageDao {
	
private DataSource dataSource;
	
	private Connection connection;
	
	private Statement statement;
	
	private ResultSet resultSet;
	
	public ImageDao(DataSource ds) {
		this.dataSource = ds;
		
	}
	public List<Image> getImagesByAptId(int id){
		List<Image> images = new ArrayList<Image>();
		
		try{
			String query = "select * from Apt_Images  where Apt_Id = "+id;
			connection = dataSource.getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(query);
			
			while(resultSet.next()){
				
				Image img = new Image();
				img.setId(resultSet.getInt("Img_Id"));	
				img.setUrl(resultSet.getString("Img_Url"));
				
			   images.add(img);
			   
			}
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		
		return images;
		
	}

}
