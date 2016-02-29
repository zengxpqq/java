package com.dw.controll;

/**
 * 控制层-查询全体学生业务逻辑
 * @author zengxiangpeng
 */

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dw.dao.impl.StudentDaoImpl;

public class ShowAllServlet extends HttpServlet {
	private static final int DATA_PER_PAGE = 8; 

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		StudentDaoImpl studao = new StudentDaoImpl();
		List list = studao.StSelect();
		String mainPage="displaystudent.jsp";
		request.setAttribute("list", list);
		request.setAttribute("mainPage", mainPage);
		RequestDispatcher dispatcher = request.getRequestDispatcher("main.jsp");
		dispatcher.forward(request, response);
		*/
		
		StudentDaoImpl studao = new StudentDaoImpl();
		List list = studao.StSelect();
		String cur = request.getParameter("cur")==null?"1":request.getParameter("cur").toString();  
		int totalPage=0;

		
		try {
			list = studao.queryByPage(Integer.parseInt(cur), DATA_PER_PAGE);
			totalPage = studao.queryCount(DATA_PER_PAGE); 
			
		} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
	    } catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		} 
		String mainPage="displaystudent.jsp";
		request.setAttribute("list", list);
		request.setAttribute("mainPage", mainPage);
		request.setAttribute("totalPage", totalPage);
		RequestDispatcher rd = request.getRequestDispatcher("main.jsp");  
		rd.forward(request, response);
		
		
	}

}
