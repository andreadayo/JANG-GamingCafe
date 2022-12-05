<%-- 
    Access     : component
    Document   : footer
    Author     : Group 6 - 2CSA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />

      <!-- CSS -->
      <link rel="stylesheet" href="css/header-footer-styles.css">

      <!-- FONTS -->
      <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&family=VT323&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Oxygen+Mono&family=Press+Start+2P&family=VT323&display=swap"
        rel="stylesheet">
    </head>

    <body>
    <!-- FOOTER -->
      <div class="footer">
        <div class="content">
          <div class="content-margin">
            <div class="footer-left">
              <p>(c) 2022 | <span id="jang">JANG</span> Gaming Cafe</p>
            </div>
            <div class="footer-right">
                <% if (session.getAttribute("username") == null) { %>
                    <a href="landing.jsp">Home</a>
                    <a href="about.jsp">About</a>
                <% } else { %>
                    <a href="product-priv.jsp">Home</a>
                    <a href="about.jsp">About</a>                     
                <% } %>
            </div>
          </div>
        </div>
      </div>
    </body>

</html>