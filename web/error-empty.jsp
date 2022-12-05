<%-- 
    Access     : Private
    Document   : error-empty
    Author     : Group 6 - 2CSA
--%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  
   <!-- TITLE -->
    <title>Cart is Empty</title>
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
            <img src="images/emptyCartError.png" id="error-img">
          <h1 id="title">Cart is empty</h1>
          <p id="subtitle">Your transaction should contain at least 1 item per order.<br>
                            Please return to the homepage and add items to your cart. </p> 
        <% if (session.getAttribute("username") == null) { %>
            <a  href="product.jsp"><button id="order-button">Return to Homepage</button></a>
        <% } else { %>
            <a  href="product-priv.jsp"><button id="order-button">Return to Homepage</button></a>        <% } %>
        </div>
      </div>

  <!-- FOOTER -->
    <% if (session.getAttribute("username") == null) { %>
          <jsp:include page="components/footer.jsp" flush="true"/>
    <% }%>
    
  </div>
</body>

</html>       