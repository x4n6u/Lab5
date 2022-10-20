<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <p>Hello, <c:out value="${name}"/>! <a href="ShoppingList?action=logout" >Logout</a></p>
        <h2>List</h2>
        
        <form action="ShoppingList" method="post" >
            <input type="hidden" name="action" value="add">
            <label for="item">Add item:</label>
            <input type="text" name="item" id="item">
            <button type="submit">Submit</button>
        </form>
        
        
        <form action="ShoppingList" method="post" >
            <input type="hidden" name="action" value="delete">
            <c:forEach var="item" items="${items}">
                <label><input type="radio" name="item" value="<c:out value='${item}'/>"><c:out value="${item}"/></label><br>
            </c:forEach>
            <br>
            <button type="submit">Delete</button>
        </form>
        
        
    </body> 
</html>
