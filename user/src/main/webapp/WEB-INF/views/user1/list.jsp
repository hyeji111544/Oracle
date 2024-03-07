<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>user1::list</title>
</head>
<body>
    <h3>user1 목록</h3>

    <a href="/">메인</a>
    <a href="/user1/register">등록</a>

    <table border="1">
        <tr>
            <td>아이디</td>
            <td>이름</td>
            <td>휴대폰</td>
            <td>나이</td>
            <td>관리</td>
        </tr>
        <c:forEach var="user" items="${users}" >
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.hp}</td>
                <td>${user.age}</td>
                <td>
                    <a href="/user1/modify?id=${user.id}">수정</a>
                    <a href="/user1/delete?id=${user.id}">삭제</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
