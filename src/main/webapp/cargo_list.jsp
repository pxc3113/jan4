<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
    <title>View tickets</title>
    <script src=https://code.jquery.com/jquery-3.6.0.min.js></script>
</head>
<body>
    <table border="1">
        <thead>
            <tr>
                <td>cargo name</td>
                <td>cargo price</td>
                <td>cargo type</td>
                <td>cargo review</td>
                <td>cargo Up</td>
                <td>action</td>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${list}" var="cargo">
                <tr>
           
                    <td>${cargo.name}</td>
                    <td>${cargo.price}</td>
                    <td>${cargo.cargoType.name}</td>
                    <td>${cargo.show}</td>
                   
                    <td>
                        <c:choose>
                            <c:when test="${cargo.cargoUp==1}">
                                up
                            </c:when>
                            <c:when test="${cargo.cargoUp==0}">
                                down
                            </c:when>
                        </c:choose> 
                    </td>
                    <td>
                        <c:choose>
                            <c:when test="${cargo.cargoUp==1}">
                                <input type="button" value="down" onclick="toggle(${cargo.id},0)">
                            </c:when>
                            <c:when test="${cargo.cargoUp==0}">
                                <input type="button" value="up" onclick="toggle(${cargo.id},1)">
                            </c:when>
                        </c:choose> 
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
  
</body>
<script type="text/javascript">
    function toggle(id,cargoUp){

        $.ajax({
                url: "<%=request.getContextPath()%>/cargo/update.do",
                type: "post",
                data: {
                    "id": id,
                    "cargoUp": cargoUp
                },
                success: function () {
                    location.reload();
                },
                error: function () {
                }
        })
    }
    
    //????????????
    function delUser(userid) {
        if (confirm("??????????????????????????????????????????")) {
            $.ajax({
                url: "<%=request.getContextPath()%>/user/delUser.do",
                type: "post",
                data: {
                    "userid": userid
                },
                success: function () {
                    location.reload();
                },
                error: function () {
                }
            })
        }
    }

    //????????????????????????????????????
    function toUpdateUser(userid) {
        location.href = "<%=request.getContextPath()%>/user/toUpdateUser.do?userid=" + userid;
    }

    //????????????
    function checkAll() {
        $("input[name='userid']").prop("checked", $("#check").prop("checked"))
    }

    //????????????????????????
    function delsUser() {
        var ids = "";
        $("input[name='userid']:checked").each(function () {
            ids += "," + $(this).val();
        })
        if (ids != null && ids != "") {
            $.ajax({
                url: "<%=request.getContextPath()%>/user/delsUser.do",
                type: "post",
                data: {
                    "ids": ids.substring(1)
                },
                success: function () {
                    location.reload();
                },
                error: function () {
                }
            })
        } else {
        }
    }
</script>

</html><%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
    <title>View tickets</title>
    <script src=https://code.jquery.com/jquery-3.6.0.min.js></script>
</head>
<body>
    <form id="form">
        ?????????:<input type="text" name="name">
        ????????????:
        <select>
            <option value="-1">?????????</option>
            <option value="1">?????????</option>
            <option value="2">?????????</option>
            <option value="3">?????????</option>
        </select>
        <input type="button" value="??????" onlick="search()">
        <input type="hidden" value="" id="">
    </form>
    <table border="1">
        <thead>
            <tr>
                <td><input type="checkbox" id = "checkAll" onclick="checkAll();">??????</td>
                <td>?????????</td>
                <td>????????????</td>
                <td>??????????????????</td>
                <td>????????????</td>
                <td>????????????</td>
                <td>??????????????????</td>
                <td>????????????</td>
                <td>??????</td>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${list}" var="cargo">
                <tr>
                    <td><input type="checkbox" ></td>
                    <td>${cargo.name}</td>
                    <td>${cargo.unit}</td>
                    <td>${cargo.phone}</td>
                    <td>${cargo.addr}</td>
                    <td>${cargo.method}</td>
                    <td>${cargo.status}</td>
                    <td>
                        <c: choose>
                            <c: if test="${cargo.status==1}">
                                <input type="button" value="??????" onclick="update(2)">
                            </c:>
                            <c: if test="${cargo.status==2}">
                                <input type="button" value="??????" onclick="update(3)">
                            </c:>
                            <c: if test="${cargo.status==3}">
                                <input type="button" value="??????" onclick="update(4)">
                            </c:>
                        </c:>
                    </td>
                </tr>
                <tr>
                    <a href="<%=request.getContextPath()%>/cargo/getAll.do">??????</a>
                    <a href="<%=request.getContextPath()%>/cargo/getAll.do">?????????</a>
                    <a href="<%=request.getContextPath()%>/cargo/getAll.do">?????????</a>
                    <a href="<%=request.getContextPath()%>/cargo/getAll.do">??????</a>
                </tr>
            </c:forEach>
        </tbody>
    </table>
  
</body>
<script type="text/javascript">
    $("#checkAll").click(function(){$("input:checkbox").prop("checked",this.checked)});

    function 
    
    //????????????
    function delUser(userid) {
        if (confirm("??????????????????????????????????????????")) {
            $.ajax({
                url: "<%=request.getContextPath()%>/user/delUser.do",
                type: "post",
                data: {
                    "userid": userid
                },
                success: function () {
                    location.reload();
                },
                error: function () {
                }
            })
        }
    }

    //????????????????????????????????????
    function toUpdateUser(userid) {
        location.href = "<%=request.getContextPath()%>/user/toUpdateUser.do?userid=" + userid;
    }

    //????????????
    function checkAll() {
        $("input[name='userid']").prop("checked", $("#check").prop("checked"))
    }

    //????????????????????????
    function delsUser() {
        var ids = "";
        $("input[name='userid']:checked").each(function () {
            ids += "," + $(this).val();
        })
        if (ids != null && ids != "") {
            $.ajax({
                url: "<%=request.getContextPath()%>/user/delsUser.do",
                type: "post",
                data: {
                    "ids": ids.substring(1)
                },
                success: function () {
                    location.reload();
                },
                error: function () {
                }
            })
        } else {
        }
    }
</script>

</html>