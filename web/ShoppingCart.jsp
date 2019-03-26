<%-- 
    Document   : ShoppingCart
    Created on : Dec 7, 2017, 5:15:08 PM
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
        <h3>Shopping Cart</h3>
        <p><a href="Products.jsp" mce_href="ModelList.jsp">Products List</a> </p>
        <table width="75%" border="1">
            <tr bgcolor="#CCCCCC">
                <td><strong>Model Description</strong></td>
                <td><strong>Quantity</strong></td>
                <td><strong>Unit Price</strong></td>
                <td><strong>Total</strong></td>
            </tr>
            <jsp:useBean id="cart" scope="session" class="cis485.CartBean" />
            <c:if test = "${cart.lineItemCount == 0}">
                <tr>
                    <td colspan="4">- Cart is currently empty -<br/>
                </tr>
            </c:if>
            <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter"/>
                <form name="item" method="POST" action="CartController">
                    <tr>
                        <td>
                            <strong>
                                <c:out value="${cartItem.partNumber}"/>
                            </strong><br/>
                    <c:out value="${cartItem.modelDescription}"/></td>
                    <td>
                        <input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'>
                        <input type='text' name="quantity" value='<c:out value="${cartItem.quantity}"/>' size='2'>
                        <input type="submit" name="action" value="Update">
                        <input type="submit" name="action" value="Delete"></td>
                    <td style="text-align: right;">$<c:out value="${cartItem.unitCost}"/></td>
                    <td style="text-align: right;">$<c:out value="${cartItem.totalCost}"/></td>
                    </tr>
                </form>
            </c:forEach>
            <tr>
                <td colspan="2"> </td>
                <td> </td>
                <td style="text-align: right;">Subtotal: $<c:out
                value="${cart.orderTotal}"/></td>
    </tr>
</table>
</body>
</html>
