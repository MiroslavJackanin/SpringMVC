<%--
  Created by IntelliJ IDEA.
  User: MIRO
  Date: 14/03/2020
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
    <head>
        <title>StudentForm</title>
    </head>
    <body>
        <form:form action="processForm" modelAttribute="student">
            First name: <form:input path="firstName"/>
            <br><br>
            Last name: <form:input path="lastName"/>
            <br><br>
            Country:
            <form:select path="country">
                <form:options items="${student.countryOptions}"/>
            </form:select>
            <br><br>
            Favourite language: <form:radiobuttons path="language" items="${student.languageOptions}"/>
            <br><br>
            Operating systems:
            Linux <form:checkbox path="operatingSystems" value="Linux"/>
            Mac OS <form:checkbox path="operatingSystems" value="Mac OS"/>
            Windows <form:checkbox path="operatingSystems" value="Windows"/>
            <br><br>
            <input type="submit" value="Submit">
        </form:form>
    </body>
</html>
