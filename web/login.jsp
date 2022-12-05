<%-- 
    Access     : Public
    Document   : login
    Author     : Group 6 - 2CSA
--%>

<%@page import="javax.servlet.http.HttpSession"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%
        response.setHeader("Cache-control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
        response.setHeader("Pragma", "no-cache"); // HTTP 1.0
        response.setHeader("Expires", "0"); // Proxies
        
        if (session != null) // if there was already a session created
        {
            if(session.getAttribute("username") != null) // if session already has a username, redirect to login
            {
                session.removeAttribute("username");
                session = request.getSession(false);

                response.sendRedirect("login.jsp");
            }   
        }
    %>
    
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  
  <!-- TITLE -->
  <title>Login</title>
  <link rel="icon" type="image/x-icon" href="images/jang-icon.png">

  <!-- CSS -->
  <link rel="stylesheet" href="css/header-footer-styles.css">
  <link rel="stylesheet" href="css/login-styles.css">

  <!-- FONTS -->
  <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&family=VT323&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Oxygen+Mono&family=Press+Start+2P&family=VT323&display=swap"
    rel="stylesheet">
</head>

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
          <div class="login">
          <h1>JANG Gaming Cafe</h1>
              <div class="login-content">
                <form method="POST" action="Login">
                  <label for="uname">Username</label><br>
                  <input type="text" name="uname" required>

                  <label for="pass">Password</label><br>
                  <input type="password" name="pass" required>

                  <input type="submit" value="login">
                </form>
              </div>
          </div>
        </div>
    </div>

    <!-- FOOTER -->
    <jsp:include page="components/footer.jsp" flush="true"/>
    
  </div>
</body>

</html>    