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

/**
 * Servlet implementation class ListingServlet
 */
@WebServlet("/listing")
public class ListingServlet extends HttpServlet {
	
	
	@Resource(name = "jdbc/rent_smart")
	private DataSource dataSource;
	
	private ApartmentsDao apartmentsDao;
	
	public void init() {
		apartmentsDao = new ApartmentsDao(dataSource);
	}
    
   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		// Step 1: get request dispatcher
				RequestDispatcher dispatcher = request.getRequestDispatcher("/views/listingApartment.jsp");
					
				// Step 2: forward the request to JSP
				dispatcher.forward(request, response);
	}

}