<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Compose Email</title>
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
        width: 500px;
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
    
    input[type="text"],
    textarea {
        padding: 5px;
        width: 80%;
        border: 1px solid #ccc;
        border-radius: 3px;
    }
    
    input[type="submit"] {
        padding: 10px 20px;
        background-color: #4CAF50;
        color: #fff;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }
    
    p {
        color: green;
        font-weight: bold;
    }
</style>
</head>
<body>
    <h2>Compose Email</h2>
  
    <form action="trigerEmail" method="post">
        <pre>
            <label>To:</label>
            <input type="text" name="email" value="${email}" />

            <label>Subject:</label>
            <input type="text" name="subject" />

            <label>Content:</label>
            <textarea name="content" rows="10" cols="50"></textarea>

            <input type="submit" value="Send" />
        </pre>
    </form>
  
    <p>${msg}</p>
</body>
</html>