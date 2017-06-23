<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

   <jsp:include page="baseCss.jsp" />
   <link rel="stylesheet" type="text/css" href="/static/css/plugins/webuploader/webuploader.css" >
    <link rel="stylesheet" type="text/css" href="/static/css/demo/webuploader-demo.min.css" >

</head>
<body>
     <div class="wrapper wrapper-content animated fadeIn">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                            <p></p>
                            <div id="uploader" class="wu-example">
                                <div class="queueList">
                                    <div id="dndArea" class="placeholder">
                                        <div id="filePicker"></div>
                                        <p>单次最多可选300张</p>
                                    </div>
                                </div>
                                <div class="statusBar" style="display:none;">
                                    <div class="progress">
                                        <span class="text">0%</span>
                                        <span class="percentage"></span>
                                    </div>
                                    <div class="info"></div>
                                    <div class="btns">
                                        <div id="filePicker2"></div>
                                        <div class="uploadBtn">开始上传</div>
                                    </div>
                                </div>
                            </div>
                </div>
            </div>
        </div>
    </div>
                        
    <script src="/static/js/jquery.min.js-v=2.1.4" ></script>
    <script src="/static/js/bootstrap.min.js-v=3.3.5" ></script>
    <script src="/static/js/content.min.js-v=1.0.0" ></script>
    <script type="text/javascript">
        var BASE_URL = 'js/plugins/webuploader';
    </script>
    <script src="/static/js/plugins/webuploader/webuploader.min.js" ></script>
    <script src="/static/js/demo/webuploader-demo.min.js" ></script>
    <script type="text/javascript" src="../../../tajs.qq.com/stats-sId=9051096"  charset="UTF-8"></script>
    <script type="text/javascript">
    	$(".uploadBtn").onclick(alert("hello"));
    </script>
    
</body>

</html>