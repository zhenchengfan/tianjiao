<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>H+ 后台主题UI框架 - jqGird</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="/static/css/bootstrap.min.css-v=3.3.5.css" tppabs="http://www.zi-han.net/theme/hplus/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="/static/css/font-awesome.min.css-v=4.4.0.css" tppabs="http://www.zi-han.net/theme/hplus/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">

    <!-- jqgrid-->
    <link href="/static/css/plugins/jqgrid/ui.jqgrid.css-0820.css" tppabs="http://www.zi-han.net/theme/hplus/css/plugins/jqgrid/ui.jqgrid.css?0820" rel="stylesheet">

    <link href="/static/css/animate.min.css" tppabs="http://www.zi-han.net/theme/hplus/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min.css-v=4.0.0.css" tppabs="http://www.zi-han.net/theme/hplus/css/style.min.css?v=4.0.0" rel="stylesheet"><base target="_blank">

    <style>
        /* Additional style to fix warning dialog position */
        
        #alertmod_table_list_2 {
            top: 900px !important;
        }
    </style>

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content  animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox ">
                    <div class="ibox-title">
                        <h5>jQuery Grid Plugin – jqGrid</h5>
                    </div>
                    <div class="ibox-content">
                        <p>
                            <strong>jqGrid</strong> 是一个用来显示网格数据的jQuery插件，文档比较全面，附带中文版本。访问<a target="_blank" href="javascript:if(confirm('http://www.trirand.com/blog/  \n\nكτݾϞרԃ Teleport Ultra Ђ՘, ӲΪ ̼ˇһٶԲܲ·޶΢ҿѻʨ׃Ϊ̼քǴʼַ֘քַ֘c  \n\nţЫ՚ؾϱǷʏղߪ̼?'))window.location='http://www.trirand.com/blog/'" tppabs="http://www.trirand.com/blog/"> 官网</a>
                        </p>
                        <p>jqGrid的主要特点为：</p>
                        <ol>
                            <li>基于jquery UI主题，开发者可以根据客户要求更换不同的主题</li>
                            <li>兼容目前所有流行的web浏览器</li>
                            <li>Ajax分页，可以控制每页显示的记录数</li>
                            <li>支持XML，JSON，数组形式的数据源</li>
                            <li>提供丰富的选项配置及方法事件接口</li>
                            <li>支持表格排序，支持拖动列、隐藏列</li>
                            <li>支持滚动加载数据</li>
                            <li>支持实时编辑保存数据内容</li>
                            <li>支持子表格及树形表格</li>
                            <li>支持多语言</li>
                            <li>免费</li>
                        </ol>
                        <hr>
                        <h4>基本示例</h4>

                        <div class="jqGrid_wrapper">
                            <table id="table_list_1"></table>
                            <div id="pager_list_1"></div>
                        </div>
                        <p>&nbsp;</p>
                        <h4 class="m-t">高级用法</h4>


                        <div class="jqGrid_wrapper">
                            <table id="table_list_2"></table>
                            <div id="pager_list_2"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="/static/js/jquery.min.js-v=2.1.4" tppabs="http://www.zi-han.net/theme/hplus/js/jquery.min.js?v=2.1.4"></script>
    <script src="/static/js/bootstrap.min.js-v=3.3.5" tppabs="http://www.zi-han.net/theme/hplus/js/bootstrap.min.js?v=3.3.5"></script>
    <script src="/static/js/plugins/peity/jquery.peity.min.js" tppabs="http://www.zi-han.net/theme/hplus/js/plugins/peity/jquery.peity.min.js"></script>
    <script src="/static/js/plugins/jqgrid/i18n/grid.locale-cn.js-0820" tppabs="http://www.zi-han.net/theme/hplus/js/plugins/jqgrid/i18n/grid.locale-cn.js?0820"></script>
    <script src="/static/js/plugins/jqgrid/jquery.jqGrid.min.js-0820" tppabs="http://www.zi-han.net/theme/hplus/js/plugins/jqgrid/jquery.jqGrid.min.js?0820"></script>
    <script src="/static/js/content.min.js-v=1.0.0" tppabs="http://www.zi-han.net/theme/hplus/js/content.min.js?v=1.0.0"></script>
    <script>
        $(document).ready(function(){$.jgrid.defaults.styleUI="Bootstrap";var mydata=[{id:"1",invdate:"2010-05-24",name:"test",note:"note",tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/10.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/2111.00*/},{id:"2",invdate:"2010-05-25",name:"test2",note:"note2",tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/20.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/320.00*/},{id:"3",invdate:"2007-09-01",name:"test3",note:"note3",tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/30.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/430.00*/},{id:"4",invdate:"2007-10-04",name:"test",note:"note",tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/10.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/210.00*/},{id:"5",invdate:"2007-10-05",name:"test2",note:"note2",tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/20.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/320.00*/},{id:"6",invdate:"2007-09-06",name:"test3",note:"note3",tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/30.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/430.00*/},{id:"7",invdate:"2007-10-04",name:"test",note:"note",tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/10.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/210.00*/},{id:"8",invdate:"2007-10-03",name:"test2",note:"note2",amount:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/300.00*/,tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/21.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/320.00*/},{id:"9",invdate:"2007-09-01",name:"test3",note:"note3",amount:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/400.00*/,tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/30.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/430.00*/},{id:"11",invdate:"2007-10-01",name:"test",note:"note",amount:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/200.00*/,tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/10.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/210.00*/},{id:"12",invdate:"2007-10-02",name:"test2",note:"note2",amount:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/300.00*/,tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/20.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/320.00*/},{id:"13",invdate:"2007-09-01",name:"test3",note:"note3",amount:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/400.00*/,tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/30.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/430.00*/},{id:"14",invdate:"2007-10-04",name:"test",note:"note",amount:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/200.00*/,tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/10.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/210.00*/},{id:"15",invdate:"2007-10-05",name:"test2",note:"note2",amount:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/300.00*/,tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/20.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/320.00*/},{id:"16",invdate:"2007-09-06",name:"test3",note:"note3",amount:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/400.00*/,tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/30.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/430.00*/},{id:"17",invdate:"2007-10-04",name:"test",note:"note",amount:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/200.00*/,tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/10.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/210.00*/},{id:"18",invdate:"2007-10-03",name:"test2",note:"note2",amount:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/300.00*/,tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/20.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/320.00*/},{id:"19",invdate:"2007-09-01",name:"test3",note:"note3",amount:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/400.00*/,tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/30.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/430.00*/},{id:"21",invdate:"2007-10-01",name:"test",note:"note",amount:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/200.00*/,tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/10.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/210.00*/},{id:"22",invdate:"2007-10-02",name:"test2",note:"note2",amount:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/300.00*/,tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/20.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/320.00*/},{id:"23",invdate:"2007-09-01",name:"test3",note:"note3",amount:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/400.00*/,tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/30.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/430.00*/},{id:"24",invdate:"2007-10-04",name:"test",note:"note",amount:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/200.00*/,tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/10.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/210.00*/},{id:"25",invdate:"2007-10-05",name:"test2",note:"note2",amount:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/300.00*/,tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/20.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/320.00*/},{id:"26",invdate:"2007-09-06",name:"test3",note:"note3",amount:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/400.00*/,tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/30.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/430.00*/},{id:"27",invdate:"2007-10-04",name:"test",note:"note",amount:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/200.00*/,tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/10.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/210.00*/},{id:"28",invdate:"2007-10-03",name:"test2",note:"note2",amount:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/300.00*/,tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/20.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/320.00*/},{id:"29",invdate:"2007-09-01",name:"test3",note:"note3",amount:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/400.00*/,tax:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/30.00*/,total:"../../error/ie.html"/*tpa=http://www.zi-han.net/theme/hplus/430.00*/}];$("#table_list_1").jqGrid({data:mydata,datatype:"local",height:250,autowidth:true,shrinkToFit:true,rowNum:14,rowList:[10,20,30],colNames:["序号","日期","客户","金额","运费","总额","备注"],colModel:[{name:"id",index:"id",width:60,sorttype:"int"},{name:"invdate",index:"invdate",width:90,sorttype:"date",formatter:"date"},{name:"name",index:"name",width:100},{name:"amount",index:"amount",width:80,align:"right",sorttype:"float",formatter:"number"},{name:"tax",index:"tax",width:80,align:"right",sorttype:"float"},{name:"total",index:"total",width:80,align:"right",sorttype:"float"},{name:"note",index:"note",width:150,sortable:false}],pager:"#pager_list_1",viewrecords:true,caption:"jqGrid 示例1",hidegrid:false});$("#table_list_2").jqGrid({data:mydata,datatype:"local",height:450,autowidth:true,shrinkToFit:true,rowNum:20,rowList:[10,20,30],colNames:["序号","日期","客户","金额","运费","总额","备注"],colModel:[{name:"id",index:"id",editable:true,width:60,sorttype:"int",search:true},{name:"invdate",index:"invdate",editable:true,width:90,sorttype:"date",formatter:"date"},{name:"name",index:"name",editable:true,width:100},{name:"amount",index:"amount",editable:true,width:80,align:"right",sorttype:"float",formatter:"number"},{name:"tax",index:"tax",editable:true,width:80,align:"right",sorttype:"float"},{name:"total",index:"total",editable:true,width:80,align:"right",sorttype:"float"},{name:"note",index:"note",editable:true,width:100,sortable:false}],pager:"#pager_list_2",viewrecords:true,caption:"jqGrid 示例2",add:true,edit:true,addtext:"Add",edittext:"Edit",hidegrid:false});$("#table_list_2").setSelection(4,true);$("#table_list_2").jqGrid("navGrid","#pager_list_2",{edit:true,add:true,del:true,search:true},{height:200,reloadAfterSubmit:true});$(window).bind("resize",function(){var width=$(".jqGrid_wrapper").width();$("#table_list_1").setGridWidth(width);$("#table_list_2").setGridWidth(width)})});
    </script>
    <script type="text/javascript" src="../../../tajs.qq.com/stats-sId=9051096" tppabs="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>