<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 5/25/2022
  Time: 4:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.ASM.entity.Account" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh Sach</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: green">
        <div>
            <a href="#" class="navbar-brand"> List </a>
        </div>

        <ul class="navbar-nav">
            <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Users</a></li>
        </ul>
    </nav>
</header>
<br>

<div class="row">

    <div class="container">

        <h3 class="text-center">List of Accounts</h3>
        <hr>
        <div class="container text-left">

            <a href="<%=request.getContextPath()%>/account/create" class="btn btn-success" style="background: cornflowerblue">Add
                New Account</a>
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>ID</th>
                <th>FullName</th>
                <th>Username</th>
                <th>Email</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <%
                List<Account> accounts = (List<Account>) request.getAttribute("accounts");
                for(Account account : accounts) {%>
            <tr>
                <td><%= account.getId() %></td>
                <td><%= account.getFullName() %></td>
                <td><%= account.getUserName() %></td>
                <td><%= account.getEmail() %></td>
                <td>
                    <%
                        if(account.getStatus() == 1) {
                    %>
                    <button class="btn btn-sm btn-success">Active</button>
                    <% } else { %>
                    <button class="btn btn-sm btn-danger">Deactive</button>
                    <% } %>
                </td>
                <td>
                    <a class="btn btn-primary" href="/accounts/update?id=<%= account.getId() %>">Edit</a>

                    <button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal<%= account.getId() %>">Delete</button>
                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal<%= account.getId() %>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Alert</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Are you sure delete <%= account.getUserName() %>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <a href="/accounts/delete?id=<%= account.getId() %>" class="btn btn-danger">Delete</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
            <%}%>
            </tbody>

        </table>
    </div>
</div>
</body>
</html>
