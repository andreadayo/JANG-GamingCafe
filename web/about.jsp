<%-- 
    Access     : Public / Private
    Document   : about
    Author     : Group 6 - 2CSA
--%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  
   <!-- TITLE -->
    <title>About Us</title>
    <link rel="icon" type="image/x-icon" href="images/jang-icon.png">

  <!-- CSS -->
  <link rel="stylesheet" href="css/header-footer-styles.css">
  <link rel="stylesheet" href="css/about-styles.css">

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
  <div class="header">
    <div class="content-margin">
        <h1>About Us</h1>
    </div>
  </div>
      
  <div class="content-margin">
      <p id="desc">JANG Gaming Cafe is a collaborative cafe shop providing 
          computer rentals along with quality foods to eat while gaming.</p>
      
    <h1 id="contact">Contact Us</h1>
    <div class="socials">
        <div id="phonenum">
            <img src="images/call-icon.png" alt="phone number"><br>
            <p1>0916 353 1281</p1>
        </div>
        
        <div id="gmail">
            <img src="images/gmail-icon.png" alt="gmail"><br>
            <p1>JANGCafe@gmail.com</p1>
        </div>
        
        <div id="twitter">
            <img src="images/twitter-icon.png" alt="twitter"><br>
            <p1>@JANGGamingCafe</p1>
        </div>
    </div>
  </div>
  </div>

  <!-- FOOTER -->
    <jsp:include page="components/footer.jsp" flush="true"/>
    
  </div>
</body>

</html>       
