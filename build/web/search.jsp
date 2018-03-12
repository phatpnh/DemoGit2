<%-- 
    Document   : search
    Created on : Mar 12, 2018, 8:07:29 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Page</title>
    </head>
    <body>
        <font color="red">
        Welcome, <s:property value="%{#session.USERNAME}"/>
        <%--
        ${sessionScope.USERNAME}(session tồn tại mãi mãi)
        sẽ bị hủy khi dùng redirect cho success (stack sẽ bị hủy)
        ${username}
        <s:property value="username">
        --%>
        </font>
        <h1>Search Page</h1>
    </body>
</html>
