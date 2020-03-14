<%--
  Created by IntelliJ IDEA.
  User: MIRO
  Date: 14/03/2020
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>StudentConfirmation</title>
    </head>
    <body>
        The student is confirmed: ${student.firstName} ${student.lastName} from ${student.country}
        <br><br>
        Favourite programming language: ${student.language}
        <br><br>
        Operating systems:
        <ul>
            <c:forEach var="temp" items="${student.operatingSystems}">
                <li> ${temp} </li>
            </c:forEach>
        </ul>
    </body>
</html>
