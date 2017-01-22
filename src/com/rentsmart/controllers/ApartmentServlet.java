package com.rentsmart.controllers;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.rentsmart.daos.ApartmentsDao;
import com.rentsmart.models.Apartment;

/**
 * Servlet implementation class ApartmentServlet
 */
@WebServlet("/apartment")
public class ApartmentServlet extends HttpServlet {
	
	
	private ApartmentsDao apartmentDao;
	
	@Resource(name="jdbc/rent_smart")
	private DataSource dataSource;
     
	public void init(){
		apartmentDao = new ApartmentsDao(dataSource);
		
	}
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		Apartment apt = apartmentDao.getbyId(id);
		
		request.setAttribute("apartmentDetails",apt);
		
		
		// Step 1: get request dispatcher
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/apartmentDetails.jsp");
			
		// Step 2: forward the request to JSP
		dispatcher.forward(request, response);
	}

}
