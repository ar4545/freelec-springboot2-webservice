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

    <script type="text/javascript">
        $(document).ready(function() {

            var dataList = ${post};
            var dataList11 = ${post11};

            $("#tDataTables").DataTable({
                data: dataList11,
                columns: [
                    { data: "id" },
                    { data: "title" },
                    { data: "author" },
                    { data: "modifiedDate" }
                ]
            });

        } );
   </script>
</head>
<body>
    <h1>SpringBoot WebService 한글한글 v2</h1>
    <div class=col-md-12">
        <div class="row">
            <div class="col-md-6">
                <a href="/posts/save" role="button" class="btn btn-primary">Write</a>

                    <c:if test="${userName eq null}">
                        <a href="/oauth2/authorization/google" class="btn btn-success active" role="button">
                            Google Login
                        </a>
					</c:if>
                    <c:if test="${userName ne null}">
                        Logged in as: <span id="user">{userName}</span>
                        <a href="/logout" class="btn btn-info active" role="button"/>Logout</a>
                     </c:if>
            </div>
        </div>
        <br>

        <!--목록출력-->
        <table id="tDataTables" class="table table-horizontal table-bordered">
            <thead class="thead-strong">
            <tr>
                <th>게시글번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>최종수정일</th>
            </tr>
            </thead>
            <tbody id="tbody">

            </tbody>
        </table>
    </div>
<script src="/js/app/index.js"></script>
</body>
</html>