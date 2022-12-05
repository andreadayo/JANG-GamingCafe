<%-- 
    Access     : Private
    Document   : product-priv
    Author     : Group 6 - 2CSA
--%>

    <%@page import="java.util.Iterator"%>
    <%@page import="java.util.List"%>
    <%@page import="javax.servlet.http.HttpSession"%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">
        <%
            response.setHeader("Cache-control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
            response.setHeader("Pragma", "no-cache"); // HTTP 1.0
            response.setHeader("Expires", "0"); // Proxies
            
            if(session.getAttribute("username") == null)
            {
                response.sendRedirect("product.jsp");
            }
        %>
    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      
      <!-- TITLE -->
      <title>Products</title>
      <link rel="icon" type="image/x-icon" href="images/jang-icon.png">

      <!-- CSS -->
      <link rel="stylesheet" href="css/header-footer-styles.css">
      <link rel="stylesheet" href="css/product-styles.css">

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
                <h1>Products</h1>
            </div>
        </div>

        <div class="cards"> 
        <!-- Frappe -->
        <form method="GET" action="Product.do">
          <article class="card">
            <div class="image">
              <img src="images/frappe.png" alt="gallery" />
            </div>
            <div class="card-content">
              <div class="flavor">Frappe</div>
              <div class="price">₱130.00</div>
              <input type="text" name="type" value="Frappe" hidden/>
              <input type="submit" id="select" value="Select" />
            </div>
          </article>
        </form>

        <!-- Milktea -->
        <form method="GET" action="Product.do">
          <article class="card">
            <div class="image">
              <img src="images/milktea.png" alt="gallery" />
            </div>
            <div class="card-content">
              <div class="flavor">Milktea</div>
              <div class="price">₱150.00</div>
              <input type="text" name="type" value="Milktea" hidden/>
              <input type="submit" id="select" value="Select" />
            </div>
          </article>
        </form>

        <!-- Cappuccino -->
        <form method="GET" action="Product.do">
          <article class="card">
            <div class="image">
              <img src="images/cappucino.png" alt="gallery" />
            </div>
            <div class="card-content">
              <div class="flavor">Cappuccino</div>
              <div class="price">₱150.00</div>
              <input type="text" name="type" value="Cappuccino" hidden/>
              <input type="submit" id="select" value="Select" />
            </div>
          </article>
        </form>

        <!-- Coffee -->
        <form method="GET" action="Product.do">
          <article class="card">
            <div class="image">
              <img src="images/coffee.png" alt="gallery" />
            </div>
            <div class="card-content">
              <div class="flavor">Coffee</div>
              <div class="price">₱80.00</div>
              <input type="text" name="type" value="Coffee" hidden/>
              <input type="submit" id="select" value="Select" />
            </div>
          </article>
        </form>
            
        <!-- Fruit Juice -->
        <form method="GET" action="Product.do">
          <article class="card">
            <div class="image">
              <img src="images/fruitJuice.png" alt="gallery" />
            </div>
            <div class="card-content">
              <div class="flavor">Fruit Juice</div>
              <div class="price">₱140.00</div>
              <input type="text" name="type" value="Fruit Juice" hidden/>
              <input type="submit" id="select" value="Select" />
            </div>
          </article>
        </form>
            
        <!-- Soft drink -->
        <form method="GET" action="Product.do">
          <article class="card">
            <div class="image">
              <img src="images/softDrink.png" alt="gallery" />
            </div>
            <div class="card-content">
              <div class="flavor">Soft drink</div>
              <div class="price">₱70.00</div>
              <input type="text" name="type" value="Soft drink" hidden/>
              <input type="submit" id="select" value="Select" />
            </div>
          </article>
        </form>
            
        <!-- Donut -->
        <form method="GET" action="Product.do">
          <article class="card">
            <div class="image">
              <img src="images/donut.png" alt="gallery" />
            </div>
            <div class="card-content">
              <div class="flavor">Donut</div>
              <div class="price">₱90.00</div>
              <input type="text" name="type" value="Donut" hidden/>
              <input type="submit" id="select" value="Select" />
            </div>
          </article>
        </form>
            
        <!-- Croissant -->
        <form method="GET" action="Product.do">
          <article class="card">
            <div class="image">
              <img src="images/crossaint.png" alt="gallery" />
            </div>
            <div class="card-content">
              <div class="flavor">Croissant</div>
              <div class="price">₱100.00</div>
              <input type="text" name="type" value="Croissant" hidden/>
              <input type="submit" id="select" value="Select" />
            </div>
          </article>
        </form>
        </div>

       <!-- VIEW CART -->
        <% if (session.getAttribute("username") == null) { %>
              <!-- Disabled Cart Button -->
              <a  href="login.jsp"><button id="view-cart">View Cart</button></a> 
        <% } else { %>
              <!-- View Cart Button -->
              <a  href="checkout.jsp"><button id="view-cart">View Cart</button></a>
        <% } %>

      </div>

      <!-- FOOTER -->
        <jsp:include page="components/footer.jsp" flush="true"/>

      </div>
    </body>

    </html>  
