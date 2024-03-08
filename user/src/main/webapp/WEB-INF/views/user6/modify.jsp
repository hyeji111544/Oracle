<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>user6::modify</title>
</head>
<body>
<h3>user6 수정</h3>

<a href="/">메인</a>
<a href="/user6/list">목록</a>

<form action="/user6/modify" method="post">
    <table border="1">
        <tr>
            <td style="display: none;"><input type="text" name="seq" value="${user6DTO.seq}"></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><input type="text" name="name" value="${user6DTO.name}"></td>
        </tr>
        <tr>
            <td>성별</td>
            <td>
                <select name="gender">
                    <option value="M" ${user6DTO.gender == 'M' ? 'selected' : ''}>남성</option>
                    <option value="F" ${user6DTO.gender == 'F' ? 'selected' : ''}>여성</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>나이</td>
            <td><input type="text" name="age" value="${user6DTO.age}"></td>
        </tr>
        <tr>
            <td>주소</td>
            <td><input type="text" name="addr" value="${user6DTO.addr}"></td>
        </tr>
        <tr>
            <td colspan="2" align="right"><input type="submit" value="등록"></td>
        </tr>
    </table>
</form>
</body>
</html>
