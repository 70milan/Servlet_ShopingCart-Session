<%-- 
    Document   : Products
    Created on : Dec 7, 2017, 5:11:03 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Product List</h3>
        <a href="ShoppingCart.jsp" mce_href="ShoppingCart.jsp">View Cart</a>
        <p/>
        <table width="75%" border="1">
            <tr>
                <td>
                    <form name="modelDetail1" method="POST" action="CartController">
                        <strong>Model:</strong> Product 1<input type="hidden" name="modelNo" value="TF-MODEL1">
                        <p><strong>Description:</strong> Description for Product 1. <input type="hidden" name="description" value="Description for Product 1."></p>
                        <p><strong>Quantity:<input type="text" size="2" value="1" name="quantity"></strong></p>
                        <p><strong>Price:</strong> $10.00<input type="hidden" name="price" value="10"></p>
                        <input type="hidden" name="action" value="add">
                        <input type="submit" name="addToCart" value="Add To Cart">
                    </form></td>
                <td> 
                    <form name="modelDetail2" method="POST" action="CartController">                      
                        <p><strong>Model:</strong>Product 2<input type="hidden" name="modelNo" value="TF-MODEL2"></p>
                        <p><strong>Description:</strong> Description for Product 2. <input type="hidden" name="description" value="Description for Product 2"></p>
                        <p><strong>Quantity:</strong> <input type="text" size="2" value="1" name="quantity"></p>
                        <p><strong>Price: </strong>$20.00<input type="hidden" name="price" value="20"></p>
                        <input type="hidden" name="action" value="add">
                        <input type="submit" name="addToCart" value="Add To Cart">
                    </form>
                </td>
            </tr>
            <tr>
                <td>
                    <form name="modelDetail3" method="POST" action="CartController">
                        <p><strong>Model:</strong>Product 3<input type="hidden" name="modelNo" value="TF-MODEL3"></p>
                        <p><strong>Description:</strong> Description for Product 3. <input type="hidden" name="description" value="Description for Product 3"></p>
                        <p><strong>Quantity:</strong> <input type="text" size="2" value="1" name="quantity"></p>
                        <p><strong>Price:</strong> $30.00<input type="hidden" name="price" value="30"></p>
                        <input type="hidden" name="action" value="add">
                        <input type="submit" name="addToCart" value="Add To Cart">
                    </form>
                </td>
                <td>
                    <form name="modelDetail4" method="POST" action="CartController">
                        <p><strong>Model</strong>:Product 4<input type="hidden" name="modelNo" value="TFMODEL4"></ p>
                        <p><strong>Description</strong>:Description for Product 4. <input type="hidden"  name="description" value="Description for Product 4."></p>
                        <p><strong>Quantity</strong>: <input type="text" size="2" value="1" name="quantity"></p>
                        <p><strong>Price</strong>: $40.00<input type="hidden" name="price" value="40"></p>
                        <input type="hidden" name="action" value="add">
                        <input type="submit" name="addToCart" value="Add To Cart">
                    </form>
                </td>
            </tr>
        </table>
        <p> </p>
    </body>
</html>
