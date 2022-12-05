<%-- 
    Access     : Private
    Document   : checkout
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
      <title>Order Checkout</title>
      <link rel="icon" type="image/x-icon" href="images/jang-icon.png">

      <!-- CSS -->
      <link rel="stylesheet" href="css/header-footer-styles.css">
      <link rel="stylesheet" href="css/checkout-styles.css">

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
      <div class="header">
            <div class="content-margin">
                <h1>Checkout</h1>
            </div>
      </div>
      
      <div class="content-margin">
      <table>
        <thead>
          <tr>
            <th scope="col">Item Name</th>
            <th scope="col">Quantity</th>
            <th scope="col">Item Price</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
          
          <% 
                ArrayList<Item> arrayList = new ArrayList<Item>();
                if (request.getServletContext().getAttribute("cartItemList") != null) {
               arrayList = (ArrayList<Item>) request.getServletContext().getAttribute("cartItemList");
               
               if(!arrayList.isEmpty()) 
               {
                    for (Item item : arrayList)
                    {
          %>
          <tr>
            <td data-label="Item Name"><%= item.getItemName() %></td>
            <td data-label="Quantity"><%= item.getItemQuantity() %></td>
            <td data-label="Item Price">PHP <%= item.getItemPrice() %></td>
            <td data-label="Action"><form method="POST" action="RemoveCart">
                    <input type="hidden" name="name" value="<%= item.getItemName() %>" required/>
                    <input type="hidden" name="price" value="<%=item.getItemPrice()%>" required/>
                    <input type="submit" name="remove" id="remove" value="Remove Item">
            </form>
            </td>  
          </tr>
        </tbody>
        
        <% 
                    }       
               }
           }
        %>
        
            <tr id="last-row">
                <td data-label="Total">Total</td>
                <td data-label="Quantity">
                    <%
                        int sumQty = 0;
                        for(Item item : arrayList)
                        {
                            sumQty += item.getItemQuantity();
                        }
                        out.print(sumQty);
                    %>
                
                </td>
                <td data-label="Price">PHP 
                    <%
                        int sum = 0;
                        for(Item item : arrayList)
                        {
                            sum += item.getItemPrice();
                        }
                        out.print(sum);
                    %>
                </td>
                <td data-label="Action">
                    <form method="POST" action="ClearCart">
                        <input type="submit" name="clear" id="clear" value="Clear Cart">
                    </form>
                </td>  
              </tr>
        </table>
        
        <div class="cus-info-form-div">
        <h1 id="cus-info">Customer Information</h1>
        
        <div class="cus-info-content">    
            <form method="POST" id="cus-info-form" action="CheckoutServlet">
               <label for="cusName" id="label">Name</label>
               <input type="text" name="cusName" placeholder="Jane Doe" required><br>

               <label for="cusComputer" id="label">Computer No.</label>
               <input type="number" name="cusComputer" placeholder="2" min="1" max="20" required><br>

               <input type="submit" name="place-order" id="place" value="Place order">
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