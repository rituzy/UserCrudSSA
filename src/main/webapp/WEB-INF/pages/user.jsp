<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <!--
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.12/datatables.min.js"></script>
    -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/jquery.dataTables.min.css" />">
    <script type="text/javascript" src="<c:url value="/resources/js/jquery-1.12.3.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/datatables.min.js" />"></script>

    <title>Users Page</title>
    <script type="text/javascript" src="filename.js" ></script>
    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }

        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>
</head>
<body>

<h1>User List</h1>

<c:if test="${!empty listUsers}">
    <table id="users" class="display" width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width="60">ID</th>
                <th width="120">name</th>
                <th width="80">age</th>
                <th width="10">isAdmin</th>
                <th width="80">Date Created</th>
                <th width="60">Edit</th>
                <th width="60">Delete</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${listUsers}" var="user">
              <tr>
                <td>${user.id}</td>
                <td><a href="/userdetails/${user.id}" target="_blank">${user.name}</a></td>
                <td>${user.age}</td>
                <td>${user.admin}</td>
                <td>${user.createdDate}</td>
                <td><a href="<c:url value='/edit/${user.id}'/>">Edit</a></td>
                <td><a href="<c:url value='/remove/${user.id}'/>">Delete</a></td>
              </tr>
            </c:forEach>
        <tbody>
    </table>
    <script>
        $(function(){
            $("#users").dataTable();
        })
    </script>
</c:if>


<h1>Add a User</h1>

<c:url var="addAction" value="/user/add"/>

<form:form action="${addAction}" modelAttribute="user">
    <table>
        <c:if test="${!empty user.name}">
            <tr>
                <td>
                    <form:label path="id">
                        <spring:message text="ID"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="id" readonly="true" size="8" disabled="true"/>
                    <form:hidden path="id" />
                </td>
            </tr>
        </c:if>
        <tr>
            <td>
                <form:label path="name">
                    <spring:message text="Name"/>
                </form:label>
            </td>
            <td>
                <form:input path="name"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="age">
                    <spring:message text="Age"/>
                </form:label>
            </td>
            <td>
                <form:input path="age"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="admin">
                    <spring:message text="isAdmin"/>
                </form:label>
            </td>
            <td>
                <form:checkbox path="admin"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <c:if test="${!empty user.name}">
                    <input type="submit"
                           value="<spring:message text="Edit User"/>"/>
                </c:if>
                <c:if test="${empty user.name}">
                    <input type="submit"
                           value="<spring:message text="Add User"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
</form:form>

</body>
</html>
