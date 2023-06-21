<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create New Lead Page</title>
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
    
    input[type="text"],
    select {
        padding: 5px;
        width: 50%;
        border: 1px solid #ccc;
        border-radius: 3px;
    }
    
    input[type="submit"] {
        padding: 10px 20px;
        background-color: #007BFF;
        color: #fff;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }
</style>
</head>
<body>
    <h2>Create New Lead Page</h2>

    <form action="saveLead" method="post">
        <pre>
            <label>FirstName:</label>
            <input type="text" name="firstName" />

            <label>LastName:</label>
            <input type="text" name="lastName" />

            <label>Email:</label>
            <input type="text" name="email" />

            <label>Mobile:</label>
            <input type="text" name="mobile" />

            <label>Source:</label>
            <select name="source">
                <option value="WebSite">WebSite</option>
                <option value="Referral">Referral</option>
                <option value="Advertisement">Advertisement</option>
                <option value="Other">Other</option>
            </select>

            <input type="submit" value="Create Lead" class="green">
        </pre>
    </form>
</body>
</html>