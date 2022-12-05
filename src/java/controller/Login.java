/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.*;
import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Group 6 - 2CSA
 */
public class Login extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String uname  = request.getParameter("uname");
        String pass = request.getParameter("pass");
        
        String jspPath = getServletContext().getRealPath("/");
        String txtFilePath = jspPath + "/userList.txt";
        
        // Create a Scanner class
        Scanner scan = new Scanner(System.in);  

        // Read the contents of the file
        FileReader in = new FileReader(txtFilePath);
        BufferedReader br = new BufferedReader(in);

        // Create a Map Object
        Map<String, String> userList = new HashMap<>();

        // Initialize variables
        String str = "", userLine = "", passLine = "";
        int lineNo = 1;
		
        // Assign user (key) and password (value)
        while ((str = br.readLine())!= null)
        {
                if (lineNo % 2 != 0) 	// user = odd lines
                {
                        userLine = str;		
                }
                else                    // pass = even lines
                {
                        passLine = str;		
                }

                userList.put(userLine, passLine);
                lineNo++;
        }
        
        // Determine if user and pass match
        if (userList.containsKey(uname) && userList.get(uname).equals(pass))
        {
            HttpSession session = request.getSession();
            session.setAttribute("username", uname);
            response.sendRedirect("product-priv.jsp");
        }
        else 
        {
            response.sendRedirect("error-unsuccessful.jsp");
        }

        // close() methods
        in.close();
        br.close();
    }
}
