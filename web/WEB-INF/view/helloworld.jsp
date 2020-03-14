<%--
  Created by IntelliJ IDEA.
  User: MIRO
  Date: 12/03/2020
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/css1.css">
        <title>Hello World</title>
    </head>
    <body>
    <div class="mainContainer">
        <h1>Hello World of Spring!</h1>
        <div class="contentContainer">
            <div id="name">Student name: ${param.studentName}</div>
            <div id="message">The message: ${myMessage}</div>
        </div>
    </div>
    </body>
</html>
