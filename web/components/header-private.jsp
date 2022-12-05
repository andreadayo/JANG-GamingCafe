<%-- 
    Access     : component
    Document   : header-private
    Author     : Group 6 - 2CSA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/header-footer-styles.css">
    </head>
    <body>
        <div class="nav">
        <div class="content-margin">
          <input type="checkbox" id="nav-check">

          <div class="nav-header">
            <div class="nav-title">
              <span id="jang">JANG</span> <span id="cafe">Gaming Cafe</span>
            </div>
          </div>

          <div class="nav-btn">
            <label for="nav-check">
              <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
              </div>
            </label>
          </div>

          <div class="nav-links">  
            <form action="Logout">
                <input type="submit" value="Logout" id="logout">
            </form>
            <a href="checkout.jsp">Cart</a>
            <a href="product-priv.jsp">Products</a>
          </div>
        </div>
        </div>
    </body>
</html>
