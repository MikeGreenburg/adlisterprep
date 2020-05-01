<%--
  Created by IntelliJ IDEA.
  User: gdev
  Date: 5/1/20
  Time: 1:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="View Our Lovely Ads"/>
    </jsp:include>
</head>
<body>
<jsp:include page="../partials/navbar.jsp"/>

<!-- This is where all the content for the Ad Show page will go -->
<!-- Loop through the ArrayList of ads we're sending in as 'allTheAds' and display each on the page -->

<div class="container">
    <c:forEach var="ad" items="${allTheAds}">
        <h1><c:out value="${ad.title}" /></h1>
        <p><c:out value="${ad.description}" /></p>
    </c:forEach>
</div>

</body>
</html>