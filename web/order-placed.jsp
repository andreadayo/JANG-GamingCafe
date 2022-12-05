<%-- 
    Access     : Private
    Document   : order-placed
    Author     : Group 6 - 2CSA
--%>

    <%@page import="model.Item"%>
    <%@page import="java.util.ArrayList"%>
    <%@page import="java.util.Iterator"%>
    <%@page import="java.util.List"%>
    <%@page import="javax.servlet.http.HttpSession"%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      
       <!-- TITLE -->
      <title>Order Successful</title>
      <link rel="icon" type="image/x-icon" href="images/jang-icon.png">

      <!-- CSS -->
      <link rel="stylesheet" href="css/header-footer-styles.css">
      <link rel="stylesheet" href="css/landing-styles.css">

      <!-- FONTS -->
      <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&family=VT323&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Oxygen+Mono&family=Press+Start+2P&family=VT323&display=swap"
        rel="stylesheet">
    </head>
    
        <%
            response.setHeader("Cache-control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
            response.setHeader("Pragma", "no-cache"); // HTTP 1.0
            response.setHeader("Expires", "0"); // Proxies
            
            if(session.getAttribute("username") == null)
            {
                response.sendRedirect("landing.jsp");
            }
         %>

    <body>

    <div id="page-container">
      <div id="content-wrap">
        <!-- NAVBAR -->
        <% if (session.getAttribute("username") == null) { %>
              <jsp:include page="components/header-public.jsp" flush="true"/>
        <% } else { %>
              <jsp:include page="components/header-private.jsp" flush="true"/>
        <% } %>

      <!-- CONTENT -->
      <div class="content">   
        <div class="center-page">
          <h1 id="title">Order Successful</h1>
          <p id="subtitle">The amount of your order has been added to your bill.<br>
               Your drink will be served shortly. </p> 
          <a  href="product-priv.jsp"><button id="order-button">View more products</button></a>
        </div>
      </div>

      <!-- FOOTER -->
        <jsp:include page="components/footer.jsp" flush="true"/>

      </div>
    </body>

    </html>  