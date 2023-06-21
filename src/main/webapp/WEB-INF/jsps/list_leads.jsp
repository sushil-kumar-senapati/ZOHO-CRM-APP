<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Fetch All Leads</title>
    <style>
        table {
            width: 10%;
            border-collapse: collapse;
        }
        
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        
        th {
            background-color: #f2f2f2;
        }
        
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        
        td:first-child {
            background-color: #d5f4e6;
        }
        
        td:nth-child(2) {
            background-color: #f7d7f1;
        }
        
        td:nth-child(3) {
            background-color: #fddbb5;
        }
        
        td:nth-child(4) {
            background-color: #b5e2fa;
        }
        
        td:nth-child(5) {
            background-color: #e8f6ff;
        }
    </style>
</head>
<body>
    <a  href="viewCreateLeadPage">CreateNewLead</a>
    <table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Mobile</th>
            <th>Source</th>
        </tr>
        
        <c:forEach var="lead" items="${leads}">
            <tr>
                <td><a href="leadInfo?id=${lead.id}">${lead.firstName}</a></td>
                <td>${lead.lastName}</td>
                <td>${lead.email}</td>
                <td>${lead.mobile}</td>
                <td>${lead.source}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>