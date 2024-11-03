<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">


<head>
    <%@ include file="../../static/head.jsp" %>
    <!-- font-awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">

    <!-- layui -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/resources/layui/layui.js"></script>
</head>
<style>

</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">
                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">缴费表管理</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">缴费表管理</li>
                        <li class="breadcrumb-item active">缴费表列表</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">缴费表列表</h3>
                        <div class="table-responsive mb-3">
                            <div class="col-sm-12">
                                                                                                 
                                <div class="layui-inline" style="margin-bottom: 10px;">
                                    缴费类型
                                    <div class="layui-input-inline">
                                        <select name="jiaofeiTypesSelectSearch"  style="width: 150px;" id="jiaofeiTypesSelectSearch" class="form-control form-control-sm"
                                                aria-controls="tableId">
                                        </select>
                                    </div>
                                </div>
                                 
                                <div class="layui-inline" style="margin-bottom: 10px;">
                                    缴费金额
                                    <div class="layui-input-inline">
                                        <input type="text" id="jiaofeiMoneyStartSearch" style="width: 100px;" class="form-control form-control-sm" onchange="jiaofeiMoneyChickValue(this)"
                                               placeholder="开始" aria-controls="tableId">
                                    </div>
                                </div>
                                -
                                <div class="layui-inline" style="margin-bottom: 10px;">
                                    <div class="layui-input-inline">
                                        <input type="text" id="jiaofeiMoneyEndSearch" style="width: 100px;" class="form-control form-control-sm" onchange="jiaofeiMoneyChickValue(this)"
                                               placeholder="结束" aria-controls="tableId">
                                    </div>
                                </div>
                                                                 
                                <div class="layui-inline" style="margin-bottom: 10px;">
                                    是否缴费
                                    <div class="layui-input-inline">
                                        <select name="shifouTypesSelectSearch"  style="width: 150px;" id="shifouTypesSelectSearch" class="form-control form-control-sm"
                                                aria-controls="tableId">
                                        </select>
                                    </div>
                                </div>
                                                                
                                                                                                 
                                <div class="layui-inline" style="margin-bottom: 10px;">
                                    学号
                                    <div class="layui-input-inline">
                                        <input type="text" id="yonghuXuehaoSearch" style="width: 140px;" class="form-control form-control-sm"
                                               placeholder="学号" aria-controls="tableId">
                                    </div>
                                </div>
                                                 
                                <div class="layui-inline" style="margin-bottom: 10px;">
                                    学生姓名
                                    <div class="layui-input-inline">
                                        <input type="text" id="yonghuNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                               placeholder="学生姓名" aria-controls="tableId">
                                    </div>
                                </div>
                                                                                                 
                                <div class="layui-inline" style="margin-bottom: 10px;">
                                    学生身份证号
                                    <div class="layui-input-inline">
                                        <input type="text" id="yonghuIdNumberSearch" style="width: 140px;" class="form-control form-control-sm"
                                               placeholder="学生身份证号" aria-controls="tableId">
                                    </div>
                                </div>
                                                 
                                <div class="layui-inline" style="margin-bottom: 10px;">
                                    学生手机号
                                    <div class="layui-input-inline">
                                        <input type="text" id="yonghuPhoneSearch" style="width: 140px;" class="form-control form-control-sm"
                                               placeholder="学生手机号" aria-controls="tableId">
                                    </div>
                                </div>
                                                                                                
                                <div class="layui-inline" style="margin-left: 30px;margin-bottom: 10px;">
                                    <button onclick="search()" type="button" class="btn btn-primary">查询</button>
                                    <button onclick="add()" type="button" class="btn btn-success 新增">添加</button>
                                    <button onclick="graph()" type="button" class="btn btn-success 报表">报表</button>
                                    <button onclick="deleteMore()" type="button" class="btn btn-danger 删除">批量删除</button>
                                </div>
                            </div>
                            <table id="tableId" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th class="no-sort" style="min-width: 35px;">
                                        <div class="custom-control custom-checkbox">
                                            <input class="custom-control-input" type="checkbox" id="select-all"
                                                   onclick="chooseAll()">
                                            <label class="custom-control-label" for="select-all"></label>
                                        </div>
                                    </th>

                                    <th >学号</th>
                                    <th >学生姓名</th>
                                    <th >学生性别</th>
                                    <th >学生身份证号</th>
                                    <th >学生手机号</th>
                                    <th >学生照片</th>
                                    <th >缴费类型</th>
                                    <th >缴费金额</th>
                                    <th >通知时间</th>
                                    <th >是否缴费</th>
                                    <th >缴费时间</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody id="thisTbody">
                                </tbody>
                            </table>
                            <div class="col-md-6 col-sm-3">
                                <div class="dataTables_length" id="tableId_length">

                                    <select name="tableId_length" aria-controls="tableId" id="selectPageSize"
                                            onchange="changePageSize()">
                                        <option value="10">10</option>
                                        <option value="25">25</option>
                                        <option value="50">50</option>
                                        <option value="100">100</option>
                                    </select>
                                    条 每页

                                </div>
                            </div>
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-end">
                                    <li class="page-item" id="tableId_previous" onclick="pageNumChange('pre')">
                                        <a class="page-link" href="#" tabindex="-1">上一页</a>
                                    </li>

                                    <li class="page-item" id="tableId_next" onclick="pageNumChange('next')">
                                        <a class="page-link" href="#">下一页</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->

    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script language="javascript" type="text/javascript"
        src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>

<script>
    <%@ include file="../../utils/menu.jsp"%>
            <%@ include file="../../static/setMenu.js"%>
            <%@ include file="../../utils/baseUrl.jsp"%>
            <%@ include file="../../static/getRoleButtons.js"%>
            <%@ include file="../../static/crossBtnControl.js"%>
    var tableName = "jiaofei";
    var pageType = "list";
    var searchForm = {key: ""};
    var pageIndex = 1;
    var pageSize = 10;
    var totalPage = 0;
    var dataList = [];
    var sortColumn = '';
    var sortOrder = '';
    var ids = [];
    var checkAll = false;


    var jiaofeiTypesOptions = [];
    var shifouTypesOptions = [];

    function init() {
        // 满足条件渲染提醒接口
    }

    // 改变每页记录条数
    function changePageSize() {
        var selection = document.getElementById('selectPageSize');
        var index = selection.selectedIndex;
        pageSize = selection.options[index].value;
        getDataList();
    }



    // 查询
    function search() {
        searchForm = {key: ""};

        <!-- 级联表的级联字典表 -->
                                         
                        //学号
        var yonghuXuehaoSearchInput = $('#yonghuXuehaoSearch');
        if( yonghuXuehaoSearchInput != null){
            if (yonghuXuehaoSearchInput.val() != null && yonghuXuehaoSearchInput.val() != '') {
                searchForm.yonghuXuehao = $('#yonghuXuehaoSearch').val();
            }
        }
                     
                        //学生姓名
        var yonghuNameSearchInput = $('#yonghuNameSearch');
        if( yonghuNameSearchInput != null){
            if (yonghuNameSearchInput.val() != null && yonghuNameSearchInput.val() != '') {
                searchForm.yonghuName = $('#yonghuNameSearch').val();
            }
        }
                                         
                        //学生身份证号
        var yonghuIdNumberSearchInput = $('#yonghuIdNumberSearch');
        if( yonghuIdNumberSearchInput != null){
            if (yonghuIdNumberSearchInput.val() != null && yonghuIdNumberSearchInput.val() != '') {
                searchForm.yonghuIdNumber = $('#yonghuIdNumberSearch').val();
            }
        }
                     
                        //学生手机号
        var yonghuPhoneSearchInput = $('#yonghuPhoneSearch');
        if( yonghuPhoneSearchInput != null){
            if (yonghuPhoneSearchInput.val() != null && yonghuPhoneSearchInput.val() != '') {
                searchForm.yonghuPhone = $('#yonghuPhoneSearch').val();
            }
        }
                                            <!-- 本表的查询条件 -->

             
            //缴费类型
        var jiaofeiTypesSelectSearchInput = document.getElementById("jiaofeiTypesSelectSearch");
        if(jiaofeiTypesSelectSearchInput != null){
            var jiaofeiTypesIndex = jiaofeiTypesSelectSearchInput.selectedIndex;
            if( jiaofeiTypesIndex  != 0){
                searchForm.jiaofeiTypes= document.getElementById("jiaofeiTypesSelectSearch").options[jiaofeiTypesIndex].value;
            }
        }
     
            //缴费金额
        var jiaofeiMoneyStartSearchInput = $('#jiaofeiMoneyStartSearch');
        if(jiaofeiMoneyStartSearchInput != null){
            var jiaofeiMoneyStartSearchValue = jiaofeiMoneyStartSearchInput.val();
            if( jiaofeiMoneyStartSearchValue  != 0){
                searchForm.jiaofeiMoneyStart = jiaofeiMoneyStartSearchValue;
            }
        }
        var jiaofeiMoneyEndSearchInput = $('#jiaofeiMoneyEndSearch');
        if(jiaofeiMoneyEndSearchInput != null){
            var jiaofeiMoneyEndSearchValue = jiaofeiMoneyEndSearchInput.val();
            if( jiaofeiMoneyEndSearchValue  != 0){
                searchForm.jiaofeiMoneyEnd = jiaofeiMoneyEndSearchValue;
            }
        }
         
            //是否缴费
        var shifouTypesSelectSearchInput = document.getElementById("shifouTypesSelectSearch");
        if(shifouTypesSelectSearchInput != null){
            var shifouTypesIndex = shifouTypesSelectSearchInput.selectedIndex;
            if( shifouTypesIndex  != 0){
                searchForm.shifouTypes= document.getElementById("shifouTypesSelectSearch").options[shifouTypesIndex].value;
            }
        }
                getDataList();
    }

    // 获取数据列表
    function getDataList() {
        http("jiaofei/page", "GET", {
            page: pageIndex,
            limit: pageSize,
            sort: sortColumn,
            order: sortOrder,
            //本表的
            jiaofeiTypes: searchForm.jiaofeiTypes,
            jiaofeiMoneyStart: searchForm.jiaofeiMoneyStart,
            jiaofeiMoneyEnd: searchForm.jiaofeiMoneyEnd,
            shifouTypes: searchForm.shifouTypes,
            //级联表的
                        yonghuXuehao: searchForm.yonghuXuehao,
                        yonghuName: searchForm.yonghuName,
                        yonghuIdNumber: searchForm.yonghuIdNumber,
                        yonghuPhone: searchForm.yonghuPhone,


        }, (res) => {
            if(res.code == 0) {
                clear();
                $("#thisTbody").html("");
                dataList = res.data.list;
                totalPage = res.data.totalPage;
                for (var i = 0; i < dataList.length; i++) { //遍历一下表格数据  
                    var trow = setDataRow(dataList[i], i); //定义一个方法,返回tr数据 
                    $('#thisTbody').append(trow);
                }
                pagination(); //渲染翻页组件
                getRoleButtons();// 权限按钮控制
            }
        });
    }

    // 渲染表格数据
    function setDataRow(item, number) {
        //创建行 
        var row = document.createElement('tr');
        row.setAttribute('class', 'useOnce');
        //创建勾选框
        var checkbox = document.createElement('td');
        var checkboxDiv = document.createElement('div');
        checkboxDiv.setAttribute("class", "custom-control custom-checkbox");
        var checkboxInput = document.createElement('input');
        checkboxInput.setAttribute("class", "custom-control-input");
        checkboxInput.setAttribute("type", "checkbox");
        checkboxInput.setAttribute('name', 'chk');
        checkboxInput.setAttribute('value', item.id);
        checkboxInput.setAttribute("id", number);
        checkboxDiv.appendChild(checkboxInput);
        var checkboxLabel = document.createElement('label');
        checkboxLabel.setAttribute("class", "custom-control-label");
        checkboxLabel.setAttribute("for", number);
        checkboxDiv.appendChild(checkboxLabel);
        checkbox.appendChild(checkboxDiv);
        row.appendChild(checkbox)


                //学号
        var yonghuXuehaoCell = document.createElement('td');
        yonghuXuehaoCell.innerHTML = item.yonghuXuehao;
        row.appendChild(yonghuXuehaoCell);


                //学生姓名
        var yonghuNameCell = document.createElement('td');
        yonghuNameCell.innerHTML = item.yonghuName;
        row.appendChild(yonghuNameCell);

                    //学生性别
        var sexTypesCell = document.createElement('td');
        sexTypesCell.innerHTML = item.sexValue;
        row.appendChild(sexTypesCell);


                //学生身份证号
        var yonghuIdNumberCell = document.createElement('td');
        yonghuIdNumberCell.innerHTML = item.yonghuIdNumber;
        row.appendChild(yonghuIdNumberCell);


                //学生手机号
        var yonghuPhoneCell = document.createElement('td');
        yonghuPhoneCell.innerHTML = item.yonghuPhone;
        row.appendChild(yonghuPhoneCell);


            //学生照片
        var yonghuPhotoCell = document.createElement('td');
        var yonghuPhotoImg = document.createElement('img');
        var yonghuPhotoImgValue = item.yonghuPhoto;
        if(yonghuPhotoImgValue !=null && yonghuPhotoImgValue !='' && yonghuPhotoImgValue !='null'){
                yonghuPhotoImg.setAttribute('src', yonghuPhotoImgValue);
                yonghuPhotoImg.setAttribute('height', 100);
                yonghuPhotoImg.setAttribute('width', 100);
                yonghuPhotoCell.appendChild(yonghuPhotoImg);
        }else{
                yonghuPhotoCell.innerHTML = "暂无图片";
        }
        row.appendChild(yonghuPhotoCell);



        //缴费类型
        var jiaofeiTypesCell = document.createElement('td');
        jiaofeiTypesCell.innerHTML = item.jiaofeiValue;
        row.appendChild(jiaofeiTypesCell);


        //缴费金额
        var jiaofeiMoneyCell = document.createElement('td');
        jiaofeiMoneyCell.innerHTML = item.jiaofeiMoney;
        row.appendChild(jiaofeiMoneyCell);


        //通知时间
        var insertTimeCell = document.createElement('td');
        insertTimeCell.innerHTML = item.insertTime;
        row.appendChild(insertTimeCell);


        //是否缴费
        var shifouTypesCell = document.createElement('td');
        shifouTypesCell.innerHTML = item.shifouValue;
        row.appendChild(shifouTypesCell);


        //缴费时间
        var updateTimeCell = document.createElement('td');
        updateTimeCell.innerHTML = item.updateTime;
        row.appendChild(updateTimeCell);



        //每行按钮
        var btnGroup = document.createElement('td');

        //详情按钮
        var detailBtn = document.createElement('button');
        var detailAttr = "detail(" + item.id + ')';
        detailBtn.setAttribute("type", "button");
        detailBtn.setAttribute("class", "btn btn-info btn-sm 查看");
        detailBtn.setAttribute("onclick", detailAttr);
        detailBtn.innerHTML = "查看"
        btnGroup.appendChild(detailBtn)
        //修改按钮
        if(item.shifouTypes == 2 ){
            var editBtn = document.createElement('button');
            var editAttr = 'edit(' + item.id + ')';
            editBtn.setAttribute("type", "button");
            editBtn.setAttribute("class", "btn btn-warning btn-sm 修改");
            editBtn.setAttribute("onclick", editAttr);
            editBtn.innerHTML = "缴费"
            btnGroup.appendChild(editBtn)
        }
        //删除按钮
        var deleteBtn = document.createElement('button');
        var deleteAttr = 'remove(' + item.id + ')';
        deleteBtn.setAttribute("type", "button");
        deleteBtn.setAttribute("class", "btn btn-danger btn-sm 删除");
        deleteBtn.setAttribute("onclick", deleteAttr);
        deleteBtn.innerHTML = "删除"
        btnGroup.appendChild(deleteBtn)
        row.appendChild(btnGroup)
        return row;
    }


        // 整数
        function jiaofeiMoneyChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }

        // 整数
        function jiaofeiMoneyChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }

        // 整数
        function jiaofeiMoneyChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }

        // 整数
        function jiaofeiMoneyChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }

        // 整数
        function jiaofeiMoneyChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }

        // 整数
        function jiaofeiMoneyChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }

        // 整数
        function jiaofeiMoneyChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }

        // 整数
        function jiaofeiMoneyChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }

        //整数
        function jiaofeiMoneyChickValue(e){
            var this_val = e.value || 0;
            // if(this_val == 0){
            //     e.value = "";
            //     alert("0不允许输入");
            //     return false;
            // }
            var reg=/^[0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }


    // 翻页
    function pageNumChange(val) {
        if (val == 'pre') {
            pageIndex--;
        } else if (val == 'next') {
            pageIndex++;
        } else {
            pageIndex = val;
        }
        getDataList();
    }

    // 下载
    function download(url) {
        window.open(url);
    }

    // 渲染翻页组件
    function pagination() {
        var beginIndex = pageIndex;
        var endIndex = pageIndex;
        var point = 4;
        //计算页码
        for (var i = 0; i < 3; i++) {
            if (endIndex == totalPage) {
                break;
            }
            endIndex++;
            point--;
        }
        for (var i = 0; i < 3; i++) {
            if (beginIndex == 1) {
                break;
            }
            beginIndex--;
            point--;
        }
        if (point > 0) {
            while (point > 0) {
                if (endIndex == totalPage) {
                    break;
                }
                endIndex++;
                point--;
            }
            while (point > 0) {
                if (beginIndex == 1) {
                    break;
                }
                beginIndex--;
                point--
            }
        }
        // 是否显示 前一页 按钮
        if (pageIndex > 1) {
            $('#tableId_previous').show();
        } else {
            $('#tableId_previous').hide();
        }
        // 渲染页码按钮
        for (var i = beginIndex; i <= endIndex; i++) {
            var pageNum = document.createElement('li');
            pageNum.setAttribute('onclick', "pageNumChange(" + i + ")");
            if (pageIndex == i) {
                pageNum.setAttribute('class', 'paginate_button page-item active useOnce');
            } else {
                pageNum.setAttribute('class', 'paginate_button page-item useOnce');
            }
            var pageHref = document.createElement('a');
            pageHref.setAttribute('class', 'page-link');
            pageHref.setAttribute('href', '#');
            pageHref.setAttribute('aria-controls', 'tableId');
            pageHref.setAttribute('data-dt-idx', i);
            pageHref.setAttribute('tabindex', 0);
            pageHref.innerHTML = i;
            pageNum.appendChild(pageHref);
            $('#tableId_next').before(pageNum);
        }
        // 是否显示 下一页 按钮
        if (pageIndex < totalPage) {
            $('#tableId_next').show();
            $('#tableId_next a').attr('data-dt-idx', endIndex + 1);
        } else {
            $('#tableId_next').hide();
        }
        var pageNumInfo = "当前第 " + pageIndex + " 页，共 " + totalPage + " 页";
        $('#tableId_info').html(pageNumInfo);
    }

    // 跳转到指定页
    function toThatPage() {
        //var index = document.getElementById('pageIndexInput').value;
        if (index < 0 || index > totalPage) {
            alert('请输入正确的页码');
        } else {
            pageNumChange(index);
        }
    }

    // 全选/全不选
    function chooseAll() {
        checkAll = !checkAll;
        var boxs = document.getElementsByName("chk");
        for (var i = 0; i < boxs.length; i++) {
            boxs[i].checked = checkAll;
        }
    }

    // 批量删除
    function deleteMore() {
        ids = []
        var boxs = document.getElementsByName("chk");
        for (var i = 0; i < boxs.length; i++) {
            if (boxs[i].checked) {
                ids.push(boxs[i].value)
            }
        }
        if (ids.length == 0) {
            alert('请勾选要删除的记录');
        } else {
            remove(ids);
        }
    }

    // 删除
    function remove(id) {
        var mymessage = confirm("真的要删除吗？");
        if (mymessage == true) {
            var paramArray = [];
            if (id == ids) {
                paramArray = id;
            } else {
                paramArray.push(id);
            }
            httpJson("jiaofei/delete", "POST", paramArray, (res) => {
                if(res.code == 0){
                    getDataList();
                    alert('删除成功');
                }
            });
        } else {
            alert("已取消操作");
        }
    }

    // 用户登出
    <%@ include file="../../static/logout.jsp"%>

    //修改
    function edit(id) {
        window.sessionStorage.setItem('updateId', id)
        window.location.href = "add-or-update.jsp"
    }

    //清除会重复渲染的节点
    function clear() {
        var elements = document.getElementsByClassName('useOnce');
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    //添加
    function add() {
        window.sessionStorage.setItem("addjiaofei", "addjiaofei");
        window.location.href = "add-or-update.jsp"
    }

    //报表
    function graph() {
        window.location.href = "graph.jsp"
    }

    // 查看详情
    function detail(id) {
        window.sessionStorage.setItem("updateId", id);
        window.location.href = "info.jsp";
    }

    //填充级联表搜索下拉框
                                         
                     
                                         
                     
                                        
    //填充本表搜索下拉框
             
        function jiaofeiTypesSelectSearch() {
            var jiaofeiTypesSelectSearch = document.getElementById('jiaofeiTypesSelectSearch');
            if(jiaofeiTypesSelectSearch != null) {
                jiaofeiTypesSelectSearch.add(new Option('-请选择-',''));
                if (jiaofeiTypesOptions != null && jiaofeiTypesOptions.length > 0){
                    for (var i = 0; i < jiaofeiTypesOptions.length; i++) {
                            jiaofeiTypesSelectSearch.add(new Option(jiaofeiTypesOptions[i].indexName,jiaofeiTypesOptions[i].codeIndex));
                    }
                }
            }
        }
     
         
        function shifouTypesSelectSearch() {
            var shifouTypesSelectSearch = document.getElementById('shifouTypesSelectSearch');
            if(shifouTypesSelectSearch != null) {
                shifouTypesSelectSearch.add(new Option('-请选择-',''));
                if (shifouTypesOptions != null && shifouTypesOptions.length > 0){
                    for (var i = 0; i < shifouTypesOptions.length; i++) {
                            shifouTypesSelectSearch.add(new Option(shifouTypesOptions[i].indexName,shifouTypesOptions[i].codeIndex));
                    }
                }
            }
        }
        
    //查询级联表搜索条件所有列表

    //查询当前表搜索条件所有列表
        function jiaofeiTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=jiaofei_types", "GET", {}, (res) => {
                if(res.code == 0){
                    jiaofeiTypesOptions = res.data.list;
                }
            });
        }
        function shifouTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=shifou_types", "GET", {}, (res) => {
                if(res.code == 0){
                    shifouTypesOptions = res.data.list;
                }
            });
        }


    $(document).ready(function () {
        //激活翻页按钮
        $('#tableId_previous').attr('class', 'paginate_button page-item previous')
        $('#tableId_next').attr('class', 'paginate_button page-item next')
        //隐藏原生搜索框
        $('#tableId_filter').hide()
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        setMenu();
        init();

        //查询级联表的搜索下拉框

        //查询当前表的搜索下拉框
        jiaofeiTypesSelect();
        shifouTypesSelect();
        getDataList();

        //级联表的下拉框赋值
                                                 
                         
                                                 
                         
                                                
        //当前表的下拉框赋值
                                     
            jiaofeiTypesSelectSearch();
             
                         
            shifouTypesSelectSearch();
                        
    <%@ include file="../../static/myInfo.js"%>
    });
</script>
</body>

</html>