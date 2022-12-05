<%-- 
    Access     : Public
    Document   : error-unsuccessful
    Author     : Group 6 - 2CSA
--%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  
   <!-- TITLE -->
    <title>Unsuccessful Login</title>
    <link rel="icon" type="image/x-icon" href="images/jang-icon.png">

  <!-- CSS -->
  <link rel="stylesheet" href="css/header-footer-styles.css">
  <link rel="stylesheet" href="css/landing-styles.css">

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
        <div class="center-page">
            <img src="images/loginUnsuccessfullError.png" id="error-img">
          <h1 id="title">Unsucessful Login</h1>
          <p id="subtitle">TThe username or password you have entered are incorrect. Please try again.</p> 
        <a  href="login.jsp"><button id="order-button">Return to Login</button></a>
        </div>
      </div>

  <!-- FOOTER -->
    <% if (session.getAttribute("username") == null) { %>
          <jsp:include page="components/footer.jsp" flush="true"/>
    <% }%>
    
  </div>
</body>

</html>       