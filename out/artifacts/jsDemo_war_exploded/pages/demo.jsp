<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="text/javascript" src="../js/jquery-3.4.1.js"></script>
    <title>Title</title>
   <script>
        $(function (){//初始化事件就是初始化页面的一些东西
            // test();
            // alert("world");
            $("#h1").text("<a href=''>欢迎您</a>");
            $("#h2").html("<a href=''>超链接</a>");
        });

       var test = function (){
           alert("hello");
       }
   </script>
</head>

<body>
<h1 id="h1"></h1>
<h2 id="h2"></h2>
</body>
</html>
