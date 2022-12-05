<%-- 
    Access     : Private
    Document   : item-priv
    Author     : Group 6 - 2CSA
--%>

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
      <title><%= request.getParameter("type")%></title>
      <link rel="icon" type="image/x-icon" href="images/jang-icon.png">

      <!-- CSS -->
      <link rel="stylesheet" href="css/header-footer-styles.css">
      <link rel="stylesheet" href="css/item-styles.css">

      <!-- FONTS -->
      <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&family=VT323&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Oxygen+Mono&family=Press+Start+2P&family=VT323&display=swap"
        rel="stylesheet">
    </head>

    <body>
    <%
        response.setHeader("Cache-control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
        response.setHeader("Pragma", "no-cache"); // HTTP 1.0
        response.setHeader("Expires", "0"); // Proxies
     %>

    <div id="page-container">
      <div id="content-wrap">
        <!-- NAVBAR -->
        <% if (session.getAttribute("username") == null) { %>
              <jsp:include page="components/header-public.jsp" flush="true"/>
        <% } else { %>
              <jsp:include page="components/header-private.jsp" flush="true"/>
        <% } %>
         
       <!-- CONTENT -->
        <div class="row">
            <div class="column1">
              <img src="images/gamer-pixel.jpg" id="product-image">
            </div> 

            <div class="column2">
              <div class="vertical-center">

                <h1 id="flavor"><%= request.getParameter("type")%></h1>
                <p id="description"><%= request.getAttribute("itemDesc")%></p>
                <h3 id="price">PHP <%= request.getAttribute("itemPrice")%>.00</h3>
                <p id="stock">Stock: <%= request.getAttribute("itemStock")%> items left</p>

                <hr id="divider">
                <br>

                <div class="quantity-container">
                  <div class="quantity-content">                         
                    <form action="AddCart" method="POST">
                        <input type="hidden" name="name" value="<%= request.getParameter("type") %>" required/>
                        <input type="hidden" name="price" value="<%=request.getAttribute("itemPrice")%>" required/>

                        <label for="quantity" id="label">Quantity </label>
                        <input type="number" id="quantity" value="number" name="quantity" min="1" max="<%= request.getAttribute("itemStock")%>" required><br>

                        <!-- ADD TO CART -->
                        <% if (session.getAttribute("username") == null) { %>
                              <!-- Disabled Add Button -->
                              <button id="addcartbutton" formaction="login.jsp">Add to cart</button>
                        <% } else { %>
                              <!-- Add Button -->
                              <input type="submit" id="addcartbutton" value="Add to cart" />
                        <% } %>
                    </form>
                  </div> 
                </div> 
              </div> 
            </div> 
        </div>  
                    
      </div>

      <!-- FOOTER -->
        <jsp:include page="components/footer.jsp" flush="true"/>

      </div>
    </body>

    </html>  
