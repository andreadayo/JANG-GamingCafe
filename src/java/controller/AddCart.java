/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Item;
import model.ProductInfo;

/**
 *
 * @author Group 6 - 2CSA
 */
public class AddCart extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            PrintWriter out = response.getWriter();
    processRequest(request, response);
    
    HttpSession session = request.getSession();
    
    String itemName = request.getParameter("name");
    String itemPrice = request.getParameter("price");
    String itemQty = request.getParameter("quantity");

    Item item = new Item();
    item.setItemName(itemName);
    item.setItemPrice(Integer.parseInt(itemPrice) * Integer.parseInt(itemQty));
    item.setItemQuantity(Integer.parseInt(itemQty));

    ArrayList<Item> arrayList = new ArrayList<>();
    if (request.getServletContext().getAttribute("cartItemList") != null) {
        arrayList = (ArrayList<Item>) request.getServletContext().getAttribute("cartItemList");
        
        // attempt to UPDATE Quantity if the same item was previously added
        if (arrayList.contains(item)) {
            Item existingItem = arrayList.get(arrayList.indexOf(item));
            existingItem.setItemQuantity(existingItem.getItemQuantity() + item.getItemQuantity());
            existingItem.setItemPrice(existingItem.getItemPrice() + item.getItemPrice());
            
        // pass updated value to jsp page
            session.setAttribute("cartItemList", arrayList);
            request.getRequestDispatcher("product-priv.jsp").forward(request, response);
        
        } else {
            arrayList.add(item);
            request.getServletContext().setAttribute("cartItemList", arrayList);
        }
    } else {
        arrayList.add(item);
        request.getServletContext().setAttribute("cartItemList", arrayList);
    }
    response.sendRedirect("product-priv.jsp");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
