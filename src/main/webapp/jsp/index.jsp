<%@ page import="java.util.*, com.ecommerce.model.Product" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>Product Catalog</title></head>
<body>
<h1>Welcome to Our Store</h1>
<%
    List<Product> products = (List<Product>) request.getAttribute("products");
    if (products != null) {
        for (Product p : products) {
%>
    <div>
        <h3><%= p.getName() %></h3>
        <p><%= p.getDescription() %></p>
        <p>Price: $<%= p.getPrice() %></p>
    </div>
<%
        }
    } else {
%>
    <p>No products available.</p>
<%
    }
%>
</body>
</html>
