<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="infotag" uri="/WEB-INF/tag/infoTag.tld" %>
<html>
<head>
    <title>Manage users</title>
    <script data-require="jquery@2.0.3" data-semver="2.0.3" src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
    <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet"
          id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.min.css">

    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <script data-require="jquery@1.10.19" data-semver="1.10.19" type="text/javascript" charset="utf8"
            src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>

    <script>
        <%@include file="/js/modal_script.js"%>
        <%@include file="/js/table.js"%>
    </script>

    <c:set var="language" value="${sessionScope.lang}"/>
    <fmt:setLocale value="${language}"/>
    <fmt:setBundle basename="resources.properties.text" var="local"/>
    <fmt:message bundle="${local}" key="back" var="back"/>
</head>

<body>
<div style="padding: 100px 0px">
    <div class="container">
        <table class="table table-striped table-bordered table-hover" id="table_id">
            <thead>
            <tr>
                <th>#</th>
                <th>First Name</th>
                <th>Last Name</th>
                <td>Birthday</td>
                <td>Telephone</td>
                <td>Address</td>
                <th style="width: 36px;"></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="user" items="${users}">
                <c:if test="${user.isType() == false}">
                    <tr>
                        <td>${user.getUserId()}</td>
                        <td>${user.getName()}</td>
                        <td>${user.getLastName()}</td>
                        <td>${user.getBirthday()}</td>
                        <td>${user.getTelephone()}</td>
                        <td>${user.getAddress()}</td>
                        <td>
                            <form action="/police" method="get">
                                <input type="hidden" value="REMOVE_USER" name="command">
                                <a href="police?command=REMOVE_USER&id=${user.getUserId()}"><i
                                        class="icon-fixed-width icon-trash"></i></a>
                            </form>
                        </td>
                    </tr>
                </c:if>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<div style='position:fixed;bottom:0;left:0;
            background:lightgray;width:100%;'>
    <infotag:getinfo/>
</div>

<a href="/jsp/main/main.jsp">${back}</a>

</body>
</html>


