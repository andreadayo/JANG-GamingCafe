/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Item;

/**
 *
 * @author Group 6 - 2CSA
 */
import java.util.ArrayList;

public class Logout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        // Clear cart when logout
        ArrayList<Item> arrayList = new ArrayList<Item>();
            if (request.getServletContext().getAttribute("cartItemList") != null) {
               arrayList = (ArrayList<Item>) request.getServletContext().getAttribute("cartItemList");
               
               if(!arrayList.isEmpty()) 
               {
                   arrayList.clear();
               }
            } 
        
        session.removeAttribute("username");
        session.invalidate();
        
        response.sendRedirect("landing.jsp");
    }

}
