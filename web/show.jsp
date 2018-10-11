<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/9
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>table</title>
    <link rel="stylesheet" href="tableExport/css/bootstrap.min.css">
    <link rel="stylesheet" href="tableExport/css/tableexport.css">
    <script src="tableExport/js/jquery-1.11.3.min.js"></script>
    <script src="tableExport/js/js-xlsx/xlsx.core.min.js"></script>
    <script src="tableExport/js/Blob.js/Blob.js"></script>
    <script src="tableExport/js/FileSaver.js/FileSaver.js"></script>
    <script src="tableExport/js/TableExport.js/jquery.tableexport.js"></script>
    <script src="tableExport/js/Bootstrap/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function(){
            //$("#btnExport").click(function(){
            $('#tb_departments').tableExport({
                type:'excel',
                escape:'false',
                fileName: '采集表table'
            });
            $("table").before($("bu tton"));
            //});
        })
    </script>
</head>
<body>
<!-- dialog -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">新增</h4>
            </div>
            <div class="modal-body">

                <div class="form-group">
                    <label for="txt_departmentname">部门名称</label>
                    <input type="text" name="txt_departmentname" class="form-control" id="txt_departmentname" placeholder="部门名称">
                </div>
                <div class="form-group">
                    <label for="txt_parentdepartment">上级部门</label>
                    <input type="text" name="txt_parentdepartment" class="form-control" id="txt_parentdepartment" placeholder="上级部门">
                </div>
                <div class="form-group">
                    <label for="txt_departmentlevel">部门级别</label>
                    <input type="text" name="txt_departmentlevel" class="form-control" id="txt_departmentlevel" placeholder="部门级别">
                </div>
                <div class="form-group">
                    <label for="txt_statu">描述</label>
                    <input type="text" name="txt_statu" class="form-control" id="txt_statu" placeholder="状态">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                <button type="button" id="btn_submit" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存</button>
            </div>
        </div>
    </div>
</div>

<!-- dialog end-->
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#" style="margin:0 0 10px 0">
                <img alt="Master" src="./img/brand.png" >
            </a>
        </div>
    </div>
</nav>
<c:if test="${empty requestScope.users}">没有数据谢谢</c:if>
<c:if test="${!empty requestScope.users}"></c:if>
<!-- <button class="btn btn-default" id="btnExport">批量导出</button> -->
<table id="tb_departments" class="table table-hover">
    <tr>
        <td class="active">居住地</td>
        <td class="success">电话</td>
        <td class="warning">姓名</td>
        <td class="danger">基础信息</td>
        <%--<td class="info">邮箱</td>
        <td class="active">URL</td>
        <td class="success">采集来源</td>
        <td class="warning">毕业时间</td>
        <td class="danger">学校</td>
        <td class="info">采集时间</td>
        <td class="active">专业</td>
        <td class="success">学历</td>
        <td class="warning">电话地区</td>
        <td class="danger">住址地区</td>
        <td class="info">投递职位</td>
        <td class="active">投递地区</td>--%>
    </tr>
    <c:forEach items="${requestScope.users }" var="user">
        <tr>
            <td class="active">${user.address }</td>
            <td class="success">${user.tel }</td>
            <td class="warning">${user.name }</td>
            <td class="danger">${user.basic }</td>
          <%--  <td class="info">${user.email }</td>
            <td class="active">${user.url }</td>
            <td class="success">${user.lvl }</td>
            <td class="warning">${user.date_of_graduation }</td>
            <td class="danger">${user.school }</td>
            <td class="info">${user.s_time2 }</td>
            <td class="active">${user.major }</td>
            <td class="success">${user.education }</td>
            <td class="warning">${user.tel_add }</td>
            <td class="danger">无</td>
            <td class="info">${user.position }</td>
            <td class="active">${user.put_add }</td>--%>
        </tr>
    </c:forEach>
</table>
</body>
</html>