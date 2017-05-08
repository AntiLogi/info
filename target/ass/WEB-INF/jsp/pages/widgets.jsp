<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>学员录入</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="<c:url value="/css/bootstrap/bootstrap.min.css"/>">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<c:url value="/css/dist/AdminLTE.min.css"/>">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="<c:url value="/css/dist/skins/_all-skins.min.css"/>">

    <!-- daterange picker -->
    <link rel="stylesheet" href="<c:url value="/plugins/daterangepicker/daterangepicker.css"/>">
    <!-- bootstrap datepicker -->
    <link rel="stylesheet" href="<c:url value="/plugins/datepicker/datepicker3.css"/>"/>
    <!-- iCheck for checkboxes and radio inputs -->
    <link rel="stylesheet" href="<c:url value="/plugins/iCheck/all.css"/>"/>
    <!-- Bootstrap Color Picker -->
    <link rel="stylesheet" href="<c:url value="/plugins/colorpicker/bootstrap-colorpicker.min.css"/>"/>
    <!-- Bootstrap time Picker -->
    <link rel="stylesheet" href="<c:url value="/plugins/timepicker/bootstrap-timepicker.min.css"/>"/>
    <!-- Select2 -->
    <link rel="stylesheet" href="<c:url value="/plugins/select2/select2.min.css"/>"/>
    <!-- Theme style -->

    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


    <jsp:include page="topAndLeft.jsp"/>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                学员录入
                <small>学员录入</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active">Widgets</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">

            <form id="infoForm">
                <input type="hidden" id="costSource" name="costSource">
                <input type="hidden" id="languageSkill" name="languageSkill">
                <input type="hidden" id="hobby" name="hobby">
                <input type="hidden" id="computerBasis" name="computerBasis">
                <input type="hidden" id="softBasis" name="softBasis">
                <input type="hidden" id="computerOperate" name="computerOperate">
                <input type="hidden" id="gender" name="gender">


                <div class="box box-danger">
                    <div class="box-header with-border">
                        <h3 class="box-title">学员信息登记（学员自填）</h3>
                    </div>
                    <div class="box-body">


                        <div class="row">
                            <div class="col-xs-3">
                                <input type="text" class="form-control" id="name" name="name" placeholder="姓名">
                            </div>
                            <div class="form-group">
                                <%-- <label>出生日期:</label>--%>

                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input type="text" name="birthday" placeholder="出生日期" class="form-control"
                                           id="datepicker1"/>
                                </div>
                                <!-- /.input group -->
                            </div>

                            <div class="col-xs-3">
                                <input type="text" class="form-control" id="religion" placeholder="宗教">
                            </div>

                            <div class="col-xs-3">
                                <input type="text" class="form-control" id="bloodType" name="bloodType"
                                       placeholder="血型">
                            </div>
                            <div class="col-xs-3">
                                <input type="text" class="form-control" name="constellation"
                                       placeholder="星座">
                            </div>
                        </div>
                        <br/>
                        <div class="row">

                            <div class="col-xs-3">
                                <input type="text" class="form-control" id="post_code" name="postCode" placeholder="邮编">
                            </div>
                            <div class="col-xs-3">
                                <input type="text" class="form-control" id="telephone" name="telephone"
                                       placeholder="家庭电话">
                            </div>
                            <div class="col-xs-3">
                                <input type="text" class="form-control " name="mobile" placeholder="手机">
                            </div>
                        </div>
                        <br/>
                        <div class="row">
                            <div class="col-xs-3">
                                <input type="text" class="form-control" name="ancestralHome" placeholder="籍贯">
                            </div>

                            <div class="col-xs-3">
                                <input type="text" class="form-control" name="address" placeholder="现居住地地">
                            </div>
                            <div class="col-xs-3">
                                <input type="text" class="form-control" name="vehicle" placeholder="交通工具">
                            </div>
                        </div>
                        <br/>
                        <div class="row">
                            <!-- Date -->
                            <%--   <div class="form-group">
                                   <label>出生日期:</label>

                                   <div class="input-group date">
                                       <div class="input-group-addon">
                                           <i class="fa fa-calendar"></i>
                                       </div>
                                       <input type="text" name="birthday" class="form-control" id="datepicker1"/>
                                   </div>
                                   <!-- /.input group -->
                               </div>--%>
                            <div class="form-group">
                                <div class="col-xs-3">
                                    <input type="text" class="form-control" name="fatherName" placeholder="父亲名字">
                                </div>
                                <%--<label>父亲生日:</label>--%>

                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input type="text" name="fatherBirthday" placeholder="父亲生日" class="form-control "
                                           id="datepicker2"/>
                                </div>
                                <!-- /.input group -->
                            </div>
                            <div class="form-group">
                                <div class="col-xs-3">
                                    <input type="text" class="form-control" name="motherName" placeholder="母亲名字">
                                </div>

                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input type="text" name="motherBirthday" class="form-control " placeholder="母亲生日"
                                           id="datepicker3"/>
                                </div>
                                <!-- /.input group -->
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-3">
                                <input type="text" class="form-control" name="qq" placeholder="qq">
                            </div>

                            <div class="col-xs-3">
                                <input type="text" class="form-control" name="wechat" placeholder="微信">
                            </div>
                            <div class="col-xs-3">
                                <input type="text" class="form-control" name="email" placeholder="email">
                            </div>
                        </div>
                        <br/>
                        <div class="row">
                            <div class="col-xs-3">
                                <input type="text" class="form-control" name="infoSource" placeholder="报名信息来源">
                            </div>
                            <div class="col-xs-3">
                                <input type="text" class="form-control" name="emergencyContact" placeholder="应急联系人">
                            </div>

                            <div class="col-xs-3">
                                <input type="text" class="form-control" name="emergencyContactPhone"
                                       placeholder="应急联系电话">
                            </div>

                        </div>
                        <br/>
                        <div class="row">
                            <div class="col-xs-3">
                                <input type="text" class="form-control " name="highestDegree" placeholder="学历">
                            </div>
                            <div class="col-xs-3">
                                <input type="text" class="form-control" name="major" placeholder="专业">
                            </div>
                            <div class="col-xs-3">
                                <input type="text" class="form-control" name="school" placeholder="毕业院校">
                            </div>
                        </div><br/>
                        <div class="row">
                            <div class="col-xs-3">
                                <input type="text" class="form-control " name="identityCard" placeholder="身份证">
                            </div>

                        </div>

                        <div class="box box-default">
                            <div class="box-header with-border">
                                <h3 class="box-title">选择项</h3>

                                <div class="box-tools pull-right">
                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                            class="fa fa-minus"></i></button>
                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i
                                            class="fa fa-remove"></i></button>
                                </div>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>费用来源</label>
                                            <select class="form-control select2" id="costSelect"

                                                    style="width: 100%;">
                                                <option selected="selected">家人支持</option>
                                                <option>自费</option>
                                                <option>公费</option>
                                                <option>其他</option>
                                            </select>
                                        </div>
                                        <!-- /.form-group -->
                                        <div class="form-group">
                                            <label>计算机基础</label>
                                            <select class="form-control select2" id="computer"

                                                    style="width: 100%;">
                                                <option selected="selected">一般</option>
                                                <option>不了解</option>
                                                <option>熟悉</option>
                                            </select>
                                        </div>
                                        <!-- /.form-group -->
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>软件操作</label>
                                                <select class="form-control select2" id="soft"

                                                        style="width: 100%;">
                                                    <option selected="selected">一般</option>
                                                    <option>不了解</option>
                                                    <option>熟悉</option>
                                                </select>
                                            </div>
                                            <!-- /.form-group -->
                                            <div class="form-group">
                                                <label>上网操作</label>
                                                <select class="form-control select2" id="operator"

                                                        style="width: 100%;">
                                                    <option selected="selected">一般</option>
                                                    <option>不了解</option>
                                                    <option>熟悉</option>
                                                </select>
                                            </div>
                                            <!-- /.form-group -->

                                        </div>
                                        <!-- /.col -->
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>语言能力</label>
                                                <select class="form-control select2"
                                                        id="languageSelect" multiple="multiple"
                                                        data-placeholder="Select a State" style="width: 100%;">
                                                    <option>英语</option>
                                                    <option>日语</option>
                                                    <option>德语</option>
                                                    <option>韩语</option>
                                                    <option>法语</option>
                                                    <option>俄语</option>
                                                    <option>其他</option>
                                                </select>
                                            </div>
                                            <!-- /.form-group -->
                                            <div class="form-group">
                                                <label>爱好</label>
                                                <select class="form-control select2"
                                                        id="hobbySelect" multiple="multiple"
                                                        data-placeholder="Select a State" style="width: 100%;">
                                                    <option>上网</option>
                                                    <option>游戏</option>
                                                    <option>影视</option>
                                                    <option>动漫</option>
                                                    <option>篮球</option>
                                                    <option>足球</option>
                                                    <option>阅读</option>
                                                    <option>其他</option>
                                                </select>
                                            </div>
                                            <!-- /.form-group -->
                                        </div>
                                        <!-- /.col -->
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>性别</label>
                                                <select class="form-control select2" id="gender12"

                                                        style="width: 100%;">
                                                    <option selected="selected">男</option>
                                                    <option>女</option>

                                                </select>
                                            </div>

                                            <!-- /.form-group -->
                                        </div>
                                    </div>
                                    <!-- /.row -->
                                </div>
                                <!-- /.box-body -->

                            </div>


                        </div>
                    </div>

                    <!-- /.box-body -->
                </div>

                <input type="button" onclick="commit()" value="提交">
            </form>


        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 2.3.8
        </div>
        <strong>Copyright &copy; 2014-2016 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights
        reserved.
    </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
            <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- Home tab content -->
            <div class="tab-pane" id="control-sidebar-home-tab">
                <h3 class="control-sidebar-heading">Recent Activity</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:void(0)">
                            <i class="menu-icon fa fa-birthday-cake bg-red"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                                <p>Will be 23 on April 24th</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <i class="menu-icon fa fa-user bg-yellow"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                                <p>New phone +1(800)555-1234</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                                <p>nora@example.com</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <i class="menu-icon fa fa-file-code-o bg-green"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                                <p>Execution time 5 seconds</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->

                <h3 class="control-sidebar-heading">Tasks Progress</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:void(0)">
                            <h4 class="control-sidebar-subheading">
                                Custom Template Design
                                <span class="label label-danger pull-right">70%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <h4 class="control-sidebar-subheading">
                                Update Resume
                                <span class="label label-success pull-right">95%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <h4 class="control-sidebar-subheading">
                                Laravel Integration
                                <span class="label label-warning pull-right">50%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <h4 class="control-sidebar-subheading">
                                Back End Framework
                                <span class="label label-primary pull-right">68%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->

            </div>
            <!-- /.tab-pane -->
            <!-- Stats tab content -->
            <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
            <!-- /.tab-pane -->
            <!-- Settings tab content -->
            <div class="tab-pane" id="control-sidebar-settings-tab">
                <form method="post">
                    <h3 class="control-sidebar-heading">General Settings</h3>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Report panel usage
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            Some information about this general settings option
                        </p>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Allow mail redirect
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            Other sets of options are available
                        </p>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Expose author name in posts
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            Allow the user to show his name in blog posts
                        </p>
                    </div>
                    <!-- /.form-group -->

                    <h3 class="control-sidebar-heading">Chat Settings</h3>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Show me as online
                            <input type="checkbox" class="pull-right" checked>
                        </label>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Turn off notifications
                            <input type="checkbox" class="pull-right">
                        </label>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Delete chat history
                            <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
                        </label>
                    </div>
                    <!-- /.form-group -->
                </form>
            </div>
            <!-- /.tab-pane -->
        </div>
    </aside>
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="<c:url value="/plugins/jQuery/jquery-2.2.3.min.js"/>"></script>
<!-- Bootstrap 3.3.6 -->
<script src="<c:url value="/js/bootstrap/bootstrap.min.js"/>"></script>
<!-- Slimscroll -->
<script src="<c:url value="/plugins/slimScroll/jquery.slimscroll.min.js"/>"></script>
<!-- FastClick -->
<script src="<c:url value="/plugins/fastclick/fastclick.js"/>"></script>
<!-- AdminLTE App -->
<script src="<c:url value="/js/dist/app.min.js"/>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<c:url value="/js/dist/demo.js"/>"></script>


<!-- Select2 -->
<script src="<c:url value="/plugins/select2/select2.full.min.js"/>"></script>
<!-- InputMask -->
<script src="<c:url value="/plugins/input-mask/jquery.inputmask.js"/>"></script>
<script src="<c:url value="/plugins/input-mask/jquery.inputmask.date.extensions.js"/>"></script>
<script src="<c:url value="/plugins/input-mask/jquery.inputmask.extensions.js"/>"></script>
<!-- date-range-picker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<script src="<c:url value="/plugins/daterangepicker/daterangepicker.js"/>"></script>
<!-- bootstrap datepicker -->
<script src="<c:url value="/plugins/datepicker/bootstrap-datepicker.js"/>"></script>
<!-- bootstrap color picker -->
<script src="<c:url value="/plugins/colorpicker/bootstrap-colorpicker.min.js"/>"></script>
<!-- bootstrap time picker -->
<script src="<c:url value="/plugins/timepicker/bootstrap-timepicker.min.js"/>"></script>
<!-- SlimScroll 1.3.0 -->
<script src="<c:url value="/plugins/slimScroll/jquery.slimscroll.min.js"/>"></script>
<!-- iCheck 1.0.1 -->
<script src="<c:url value="/plugins/iCheck/icheck.min.js"/>"></script>
<!-- FastClick -->
<script src="<c:url value="/plugins/fastclick/fastclick.js"/>"></script>
<!-- AdminLTE App -->
<script src="<c:url value="/js/dist/app.min.js"/>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<c:url value="/js/dist/demo.js"/>"></script>
<!-- Page script -->
<script>
    $(function () {
        //Initialize Select2 Elements
        $(".select2").select2();

        //Datemask dd/mm/yyyy
        $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
        //Datemask2 mm/dd/yyyy
        $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
        //Money Euro
        $("[data-mask]").inputmask();

        //Date range picker
        $('#reservation').daterangepicker();
        //Date range picker with time picker
        $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
        //Date range as a button
        $('#daterange-btn').daterangepicker(
            {
                ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                startDate: moment().subtract(29, 'days'),
                endDate: moment()
            },
            function (start, end) {
                $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            }
        );

        //Date picker
        $('#datepicker1').datepicker({
            autoclose: true
        });
        $('#datepicker2').datepicker({
            autoclose: true
        });
        $('#datepicker3').datepicker({
            autoclose: true
        });
        $('#datepicker4').datepicker({
            autoclose: true
        });

        //iCheck for checkbox and radio inputs
        $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
            checkboxClass: 'icheckbox_minimal-blue',
            radioClass: 'iradio_minimal-blue'
        });
        //Red color scheme for iCheck
        $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
            checkboxClass: 'icheckbox_minimal-red',
            radioClass: 'iradio_minimal-red'
        });
        //Flat red color scheme for iCheck
        $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
            checkboxClass: 'icheckbox_flat-green',
            radioClass: 'iradio_flat-green'
        });

        //Colorpicker
        $(".my-colorpicker1").colorpicker();
        //color picker with addon
        $(".my-colorpicker2").colorpicker();

        //Timepicker
        $(".timepicker").timepicker({
            showInputs: false
        });
    });


</script>
<script>


    function commit() {
        $("#costSource").val($("#costSelect").val());
        $("#languageSkill").val($("#languageSelect").val());
        $("#hobby").val($("#hobbySelect").val());
        $("#computerBasis").val($("#computer").val());
        $("#softBasis").val($("#soft").val());
        $("#computerOperate").val($("#operator").val());

        var gender = $("#gender12").val();

        if (gender == "男") {
            $("#gender").val(1);
        } else {
            $("#gender").val(0);
        }





        $.post("<c:url value="/student/primary.html"/>", $("#infoForm").serialize(), function (data) {
            alert("success");
        })
    }
</script>
</body>
</html>
