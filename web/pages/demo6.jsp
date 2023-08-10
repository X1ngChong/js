<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="../js/jquery-3.4.1.js"></script>
    <title>Title</title>
    <script>

        var subForm = function (){
            var name = $.trim($("#name").val());
            var age =  $.trim( $("#age").val());

            if(name=="" || age ==""){
            alert("姓名或者年龄不能为空")
            }else{
                $("#f0").submit();

            }
        }

    </script>
</head>
<body>
<form  id="f0"  action="${pageContext.request.contextPath}/demo/test" method="post">
    姓名:<input type="text" name="name" id="name">
    年龄:<input type="text" name="age" id="age">
    <!--
    在实际的开发中,不一定能够使用到按钮,比前端的开发人员自己做的样式,很漂亮的一个按钮
    submit按钮本身就有调用form表单的submit方法的功能
    进行了一个form的校验
    -->
<%--    <input type="submit">--%>
    <input type="button" value="提交" onclick="subForm()">
</form>
</body>
</html>
