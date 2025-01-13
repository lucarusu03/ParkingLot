<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Report">
    <h1>Users and their cars!</h1>
    <br>
    <div class="container text-center">
    <c:forEach var="user" items="${users}">
        <div class="row">
            ${user.username} has the following cars:
        </div>
        <c:forEach var="car" items="${cars}">
            <c:if test="${user.username == car.ownerName}">
                <div class="row">License plate: ${car.licensePlate}</div>
            </c:if>
        </c:forEach>
        <br>
    </c:forEach>
    </div>

</t:pageTemplate>
