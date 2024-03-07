<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>user2::register</title>
</head>
<body>
    <h3>user2 등록</h3>

    <a href="/">메인</a>
    <a href="/user2/list">목록</a>
    <form action="/user2/register" method="post">
        <table border="1">
            <tr>
                <td>아이디</td>
                <td><input type="text" name="id"></td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>번호</td>
                <td><input type="text" name="hp"></td>
            </tr>
            <tr>
                <td>나이</td>
                <td><input type="text" name="age"></td>
            </tr>
            <tr>
                <td colspan="2" align="right"><input type="submit" value="등록"></td>
            </tr>
        </table>
    </form>
</body>
</html>
