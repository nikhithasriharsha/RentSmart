package com.rentsmart.controllers;

import java.io.IOException;
import java.util.List;

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
 * Servlet implementation class HomeServlet
 */
@WebServlet("/search")
public class SearchServlet extends HttpServlet {
	
	
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
		String address = request.getParameter("address");
		
		List<Apartment> apartmentList = apartmentsDao.getApartments(address);
		
		
        request.setAttribute("apartments", apartmentList);
		
		String nextJSP = "/views/apartmentsList.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
		dispatcher.forward(request,response);
	}

}
