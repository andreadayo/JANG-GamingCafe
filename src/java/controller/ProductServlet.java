/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSession;
import model.ProductInfo;

/**
 *
 * @author Group 6 - 2CSA
 */

public class ProductServlet extends HttpServlet implements ServletContextListener {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Response Headers
        response.setHeader("content-type", "text/html");
        response.addHeader("server", "GlassFish");
        response.addHeader("cache-control", "no-store");
        
         HttpSession session = request.getSession();
        
        try (PrintWriter out = response.getWriter()) {
            String item = request.getParameter("type");
            ProductInfo si = new ProductInfo();
            String desc = si.getDesc(item);
            int price = si.getPrice(item);
            int stock = si.getStock(item);
            String fullpath = "images" + File.separator + si.getImage(item);
            
            if (desc == null) 
            {
                response.sendRedirect("error-page-not-found.jsp"); // Error page - item does not exist
            }
            else if (stock == 0)
            {
                response.sendRedirect("error-out-of-stock.jsp"); // Error Page - out of stock
            }
            else
            {
                request.setAttribute("itemDesc", desc);
                request.setAttribute("itemPrice", price);
                request.setAttribute("itemStock", stock);
                request.setAttribute("fullpath", fullpath);
                
                if (session.getAttribute("username") == null)
                {
                    RequestDispatcher view = 
                        request.getRequestDispatcher("item.jsp");
                    view.forward(request, response);
                }
                else 
                {
                     RequestDispatcher view = 
                        request.getRequestDispatcher("item-priv.jsp");
                    view.forward(request, response);
                }
                
            }
            
            

        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    public String getServletInfo() {
        return "ProductServlet";
    }
    
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("ServletContextListener destroyed");
    }

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("ServletContextListener started");
        
        ServletContext context = sce.getServletContext();
        context.setAttribute("date", new Date());
    }
}

