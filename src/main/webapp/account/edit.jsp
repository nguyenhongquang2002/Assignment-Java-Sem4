<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 5/25/2022
  Time: 4:52 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="com.example.ASM.entity.Account" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>edit</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: cornflowerblue">
        <div>
            <a href="https://www.javaguides.net" class="navbar-brand"> Edit</a>
        </div>

        <ul class="navbar-nav">
            <li><a href="<%=request.getContextPath()%>/accounts" class="nav-link">Account List</a></li>
        </ul>
    </nav>
</header>
<br>
<%
    Account account = (Account) request.getAttribute("account");
%>
<div class="container col-md-5">
    <div class="card">
        <div class="card-body">
            <form action="/accounts/update" method="post">
                <fieldset class="form-group">
                    <input type="hidden"  class="form-control" name="id" value="<%= account.getId() %>" >
                </fieldset>
                <fieldset class="form-group">
                    <label>Fullname</label> <input type="text"  class="form-control" name="fullName" value="<%= account.getFullName() %>" required="required">
                </fieldset>
                <fieldset class="form-group">
                    <label>Username</label> <input type="text"  class="form-control" name="username" value="<%= account.getUserName() %>">
                </fieldset>
                <fieldset class="form-group">
                    <label>Email</label> <input type="email"  class="form-control" name="email" value="<%= account.getEmail() %>" required="required">
                </fieldset>
                <fieldset class="form-group">
                    <label>Password</label> <input type="password"  class="form-control" name="password" value="<%= account.getPassword() %>">
                </fieldset>
                <fieldset class="form-group">
                    <label>Status</label>
                    <select class="form-control" name="status" >
                        <option value="">Select status</option>
                        <option value="1" <% if(account.getStatus() == 1)  {%> selected <% } %> >Active</option>
                        <option value="0" <% if(account.getStatus() == 0)  {%> selected <% } %>>Deactive</option>
                    </select>
                </fieldset>
                <button type="submit" class="btn btn-success">Save</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
