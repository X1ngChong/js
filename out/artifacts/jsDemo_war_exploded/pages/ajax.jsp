
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script>
var ajaxDemo = function (){
    var xmlhttp;

    //判断是什么浏览器,根据浏览器不同,给xmlhtto赋值不同的对象
    if(window.XMLHttpRequest){//如果存在,就是IE7,FireFox,
        xmlhttp = new XMLHttpRequest;
    }else{//否则就是IE5,IE6
        xmlhttp =  new ActiveXObject("Microsoft.XMLHTTP");
    }

    //设定回调函数
    //原理,XMLHttpRequest的属性readyState,服务器和XMLHttpRequest一直在通信,每次的通信
    //都会使readyState发生变化,变化时会触发onreadystatechange
    xmlhttp.onreadystatechange = function (){
        if(xmlhttp.readyState == 4 && xmlhttp.status == 200){//符合这2个条件就响应成功
            //回调代码
            //readyState,status,responseText,responseXML
            window.document.getElementById("h1").innerText=xmlhttp.responseText
        // alert(xmlhttp.responseText);
        }

    }

    //设定请求(类型,URL,是否是异步)发送请求
    var url =  "http://localhost:8080/jsDemo_war_exploded/ajax/test";
    var parm = "name=张三&age=12"
    // get
    // xmlhttp.open("GET",url+"?"+encodeURI(parm),true);//定义请求
    // xmlhttp.send(null);//发送请求

    //post
    xmlhttp.open("POST",url,true);//定义请求
    xmlhttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=utf-8");
    xmlhttp.send(parm);//发送请求

}

var test = function (){
    ajaxDemo();
    //给服务器的服务端做了延迟2秒处理,如果先填充h2,后填充h1,证明ajax是异步的
    //因为从代码的顺序来看,h2的代码在h1的代码的后面
    window.document.getElementById("h2").innerText="你好你好你好"
}

</script>
<body>
<h1 id="h1">你好</h1>
<h2 id="h2">aaaa</h2>
<input type="button" value="按钮" onclick="test()">
</body>
</html>
