<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Bill</title>
<style>
    body {
        background-color: #f1f1f1;
        font-family: Arial, sans-serif;
    }
    
    h2 {
        color: #333;
        margin-bottom: 20px;
    }
    
    form {
        background-color: #fff;
        border: 1px solid #ddd;
        padding: 20px;
        border-radius: 5px;
        width: 400px;
        margin: 0 auto;
    }
    
    form pre {
        margin-bottom: 20px;
    }
    
    label {
        display: block;
        margin-bottom: 5px;
        color: #333;
    }
    
    input[type="text"] {
        padding: 5px;
        width: 50%;
        border: 1px solid #ccc;
        border-radius: 3px;
    }
    
    input[type="submit"] {
        padding: 10px 20px;
        background-color: #333;
        color: #fff;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }
    
    p {
        color: green;
        font-weight: bold;
    }
    
    table {
        width: 50%;
        border-collapse: collapse;
    }
    
    th, td {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    
    th {
        background-color: #333;
        color: #fff;
    }
</style>
</head>
<body>
    <h2>Create Bill</h2>

    <form action="saveBills" method="post">
        <pre>
            <label>FirstName:</label>
            <input type="text" name="firstName" value="${contacts.firstName}" />

            <label>LastName:</label>
            <input type="text" name="lastName" value="${contacts.lastName}" />

            <label>Email:</label>
            <input type="text" name="email" value="${contacts.email}" />

            <label>Mobile:</label>
            <input type="text" name="mobile" value="${contacts.mobile}" />

            <label>Product:</label>
            <input type="text" name="product" />

            <label>Amount:</label>
            <input type="text" name="amount" />

            <input type="submit" value="Generate Bill" class="green">
        </pre>
    </form>

    <p>${mesg}</p>
</body>
</html>