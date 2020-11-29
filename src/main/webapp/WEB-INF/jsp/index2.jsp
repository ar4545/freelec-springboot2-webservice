<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>SpringBoot WebService 한글한글</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.22/datatables.min.css"/>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.22/datatables.min.js"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <h1>SpringBoot WebService 한글한글 v2</h1>
    <div class=col-md-12">
        <div class="row">
            <div class="col-md-6">
                <a href="/posts/save" role="button" class="btn btn-primary">Write</a>
            </div>
        </div>
        <br>

        <!--목록출력-->
        <table class="table table-horizontal table-bordered">
            <thead class="thead-strong">
            <tr>
                <th>게시글번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>최종수정일</th>
            </tr>
            </thead>
            <tbody id="tbody">
                <c:choose>
                    <c:when test="${post ne null}">
                    <c:forEach var="item" items="${post}">
                    <tr>
                        <td>${item.id}</td>
                        <td><a href="/posts/update/${item.id}">${item.title}</a></td>
                        <td>${item.author}</td>
                        <td>${item.modifiedDate}</td>
                        </tr>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <td colspan="4">No data.</td>
                </c:otherwise>
            </c:choose>
            </tbody>
        </table>
    </div>


<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="/js/app/index.js"></script>
</body>
</html>