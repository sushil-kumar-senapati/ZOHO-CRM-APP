<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lead Information</title>
<style>
    body {
        background-color: #f1f1f1;
        font-family: Arial, sans-serif;
    }
    
    h2 {
        color: #333;
        margin-bottom: 20px;
    }
    
    div.info {
        background-color: #fff;
        border: 1px solid #ddd;
        padding: 20px;
        border-radius: 5px;
        width: 400px;
        margin: 0 auto;
        text-align: center;
    }
    
    div.info p {
        margin-bottom: 10px;
    }
    
    form {
        margin-top: 20px;
        text-align: center;
    }
    
    input[type="submit"] {
        padding: 10px 20px;
        color: #fff;
        border: none;
        border-radius: 3px;
        cursor: pointer;
        font-weight: bold;
    }
    
    input[type="submit"].green {
        background-color: #4CAF50;
    }
    
    input[type="submit"].pink {
        background-color: #FF1493;
    }
    
    hr {
        margin-top: 40px;
        border: none;
        border-top: 1px solid #ddd;
    }
</style>
</head>
<body>
    <h2>Lead Information</h2>
    
    <div class="info">
        <p>FirstName: ${lead.firstName}</p>
        <p>LastName: ${lead.lastName}</p>
        <p>Email: ${lead.email}</p>
        <p>Mobile: ${lead.mobile}</p>
        <p>Source: ${lead.source}</p>
    </div>
    
    <hr>
    
    <form action="sendEmail" method="post">
        <input type="hidden" name="email" value="${lead.email}">
        <input type="submit" value="Send Email" class="green">
    </form>
    
    <form action="convertLead" method="post">
        <input type="hidden" name="id" value="${lead.id}">
        <input type="submit" value="Convert" class="pink">
    </form>
    
</body>
</html>