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
        <form action="search">
            <s:textfield name="searchValue" label="Search Value"/>
            <s:submit value="Search"/>
        </form><br/>
        <s:if test="%{searchValue != null and searchValue != ''}">
            <s:if test="%{accounts != null}">
                <table border="1">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Username</th>
                            <th>Passoword</th>
                            <th>Last name</th>
                            <th>Role</th>
                            <th>Delete</th>
                            <th>Update</th>
                        </tr>
                    </thead>
                    <tbody>
                        <s:iterator var="dto" value="accounts" status="counter">
                            <s:form action="update" theme="simple">
                            <tr>
                            <td>
                                <s:property value="%{#counter.count}"/>
                            </td>
                            <td>
                                <s:property value="%{#dto.username}"/>
                                <s:hidden name="username" value="%{#dto.username}"/>
                            </td>
                            <td>
                                <%--<s:property value="%{#dto.password}"/>--%>
                                <s:textfield name="password" value="%{#dto.password}"/>
                            </td>
                            <td>
                                <s:property value="%{#dto.lastname}"/>
                                
                            </td>
                            <td>
                                <%--<s:property value="%{#dto.role}"/>--%>
                                <s:checkbox name="role" value="%{#dto.role}"/>
                            </td>
                            <td>
                                <s:url var="delLink" value="DeleteRecore">
                                    <s:param name="pk" value="%{#dto.username}"/>
                                    <s:param name="lastSearchValue" value="searchValue"/>
                                </s:url>
                                <s:a href="%{delLink}">Delete</s:a>
                            </td>
                            <td>
                                <s:hidden name="lastSearchValue" value="%{searchValue}"/>
                                <s:submit value="Update"/>
                            </td>
                        </tr>
                        </s:form>
                            
                        </s:iterator>
                    </tbody>
                </table>

            </s:if>
            <s:if test="%{accounts == null}">
                <h2>No recored is matched!!</h2>
            </s:if>
        </s:if>
    </body>
</html>
