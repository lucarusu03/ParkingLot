<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="EditUser">
    <h1>Edit the user's information</h1>
    <form class="needs-validation" novalidate method="post" action="${pageContext.request.contextPath}/EditUser">
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="username">Username</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="" value="${user.username}" required>
                <div class="invalid-feedback">
                    Username is required!
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="email">Email</label>
                <input type="text" class="form-control" id="email" name="email" placeholder="" value="${user.email}" required>
                <div class="invalid-feedback">
                    Email is required!
                </div>
            </div>
        </div>
        <button class="btn btn-primary btn-lg" type="submit">Submit</button>
        <input type="hidden" name="user_id" value="${user.id}"/>
    </form>

</t:pageTemplate>

