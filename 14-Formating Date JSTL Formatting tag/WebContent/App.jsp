<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formatting Demo</title>
</head>
<body>
<h3>Formating Dates</h3>
<c:set var="date" value="<%= new java.util.Date() %>"/>
<fmt:setLocale value="ro_RO"/>
<c:out value="${date}"></c:out>
<br/>Time: <strong><fmt:formatDate type="time"  value="${date}"/></strong>
<br/>Date: <strong><fmt:formatDate   value="${date}"/></strong>
<br/>Date and Time: <strong><fmt:formatDate type="both" value="${date}"/></strong>
<br/>Date and Time: <strong><fmt:formatDate type="both" value="${date}" timeZone="GMT -1"/></strong>

<br/>Date and Time: <strong><fmt:formatDate type="both" value="${date}"/></strong>

<br/>
<hr>
<h3>Formating Numbers</h3>
<c:set var="number" value="5483.12345"/>
<c:out value="${number}"></c:out>
<br/>Max Integer Digits : <fmt:formatNumber  maxIntegerDigits="3" value="${number}"> </fmt:formatNumber>
<br/>Max Fraction Digits: <fmt:formatNumber maxFractionDigits="3" value="${number}"></fmt:formatNumber>
<br/>Currency: <fmt:formatNumber type="currency" value="${number}"></fmt:formatNumber>


</body>
</html>