
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="../js/jquery-3.4.1.js"></script>
    <title>Title</title>
    <script>
        var test  = function (){
            // $("#name");//id获取dom,因为id唯一,所以这个是获取一个dom
            var length = 0;
            //通过标签获取dom集合
            // length =  $("input").length;

            //通过元素的class属性获取元素,class中可以有多个值,值是用空格分隔的,我们可以使用这些值中的任意一个来获取元素
            // length =  $(".xxx").length;

            //多个基本选择器可以放到一起,用逗号分隔
            // length =  $("#name,#dd,span,.xxx").length;

            length =  $("*").length;


            alert(length);

        }

        var test1 = function (){
            var length = 0;
            var html = "";

            //层级选择器,后代元素,使用空格,代表一种包含,不论是儿子还是孙子
            // length =  $("div span h2").length;

            //子元素,使用>,遵循严格的父子关系
            // length =  $("div>div>span>span").length;

            //相邻元素,使用+代表当前元素相邻的下一个元素,可以多级
            // html =  $("#a1+td").html();
            // length =  $(".tdc0+td").length;

            // html =  $("#a1+td+td").html();

            //兄弟(确切的说是所有的弟弟)元素,使用~
            length =  $("#a1~td").length;


            alert(length);
        }

        var test2 = function (){
            var html ;
            var length = 0;
            //获取集合中的第一个元素
            //  html =  $("td:first").html();
            //获取集合中的最后一个元素
            // html =  $("td:last").html();

            // html =  $("#div0>.abc>span:first").html();

            //在匹配的元素集合中去除不符合条件的元素,条件就是not()里面的参数
             // length =  $("td:not(.tdc0)").length;
            // length =  $("td:not(#a1)").length;

            //元素的索引值是从第0个开始
            //获取匹配元素集合的索引是偶数的元素
           // length =  $("td:even").length;

            //获取匹配元素集合的索引是基数的元素
            // length =  $("td:odd").length;

            //根据元素的索引编号获取指定元素
            // html =  $("td:eq(1)").html();


            //获取大于索引编号的元素
            // length =  $("td:gt(2)").length;
            //获取小于索引编号的元素
            // length =  $("td:lt(2)").length;

            // $("td:not(.tdc0):not(.cc)")


        html =     $("#div0>div:eq(1)>span:last").html();

            alert(html);
        }

        var  test3  = function (){
            var length;
            var html;

            //内容过滤,看匹配的元素是否包含指定的文本内容,取出包含指定文本的元素组成数组
            //以下就是文本中找到包含'张三'的文本
        // length =  $("td:contains('张三')").length;

            //选择没有包含子元素(包括文本内容)的dom元素
            // length =  $("td:empty").length;

            //是:empty的反选项,是选择包含子元素(包括文本内容)的dom元素
            // length =  $("td:parent").length;

            //找到包含指定元素的dom元素
            length =  $("td:has(a)").length;

            alert(length);
        }

        var test4 = function (){
            var length;
            var html;

            //找到匹配的不可见的元素
            // length =  $("input:hidden").length;
            // length =  $("div:hidden").length;

            //找到匹配的可见的元素
            length =  $("input:visible").length;

            alert(length);
        }

        var test5 = function (){
            var len;
            //找包含指定属性的元素
            // len =  $("input[id]").length;

            //找到指定属性值的元素
            // len =  $("input[id='name']").val();

            // len =  $("div[aaa='123']").length;

            //找到不包含指定值的元素
            // len =  $("input[type !='text']").length;

            //找到以指定的值开头的属性对应的元素
            // len =  $("input[id ^='name']").length;

            // len =  $("div[aaa ^='12']").length;

            //找到以指定的值结尾的属性对应的元素
            // len =  $("div[aaa $='6']").length;

            //找到以属性的值包含某个值的元素
            // len =  $("div[aaa *='6']").length;

            //复合属性过滤,可以给多个属性进行过滤,就是写多个[]
           var id =   $("input[type='text'][abc='hello']").attr("id");

            alert(id);
        }

var test6 = function () {
            var len;
            //选取匹配的元素中可用的元素
            // len = $("input[type='text']:enabled").length;

    //选取匹配不可用的元素中可用的元素
    // var id =  $("input:disabled").attr("id")

    //找到复选框或者单选扭的被选中的元素
    // len =  $("input[type='checkbox']:checked").length;

   var text =   $("#sel option:selected").text();

        alert(text);
}


    </script>
</head>
<body>
<input type="button" value="测试" onclick="test6()">

<div id="inp" ttt="test">
    <input type="text" id="name" abc="hello">
    <input type="text" id="name1" disabled="disabled">
    <input type="hidden" id="hide" value="test1234">
    <div>
        <input type="text" id="name2" style="display: none;">
    </div>
</div>
<select id="sel">
    <option value="1">一</option>
    <option value="2">二</option>
    <option value="3">三</option>
</select>
<textarea rows="11" cols="11" id="tx"></textarea>
<br>
<input type="checkbox" class="ra" value="1">一
<input type="checkbox" class="ra" value="2">二
<input type="checkbox" class="ra" value="3">三
<br>
<div id="div1" value="1111112234" aaa="123">

    <div id="dd" aaa="125556" style="background-color: red">2222</div></div>

<div id="div2" value="1111112234" aaa="123"></div>
<div id="div3" value="1111112234" aaa="124446" style="display: none;"></div>
<div id="div4" value="1111112234" aaa="1600" style="display: none;"></div>

<table>
    <tr>
        <td id="a1" class="tdc0 xxx">1</td>
        <td id="a" class="cc"><a href="">张三</a></td>
        <td>11</td>
        <td>张三</td>
    </tr>
    <tr class="tc1">
        <td class="tdc0">2</td>
        <td id="b"><a href="">李四</a></td>
        <td>12</td>
        <td></td>
    </tr>
    <tr>
        <td>3</td>
        <td>王五</td>
        <td>13</td>
        <td>666</td>
    </tr>
</table>
<div>
    <h2>第1个div的h2</h2>
</div>
<div class="abc">
	<span>
	<h2>第2个div的第1个span的h2</h2>
	<span>12345</span>
	</span>
    <a>超链接</a>
    <span><h2>第2个div的第2个span的h2</h2></span>
</div>
<span>12345111111</span>
<div id="div0">
    <div class="abc">
		<span>
		<h2>第2个div的第1个span的h2</h2>
		<span>12345111111</span>
		</span>
        <a>超链接</a>
        <span><h2>第2个div的第2个span的h2</h2></span>
    </div>
    <div class="def">
		<span>
		<h2>第3个div的第1个span的h2</h2>
		<span>wwwww</span>
		</span>
        <a>超链接</a>
        <span><h2>第3个div的第2个span的h2</h2></span>
    </div>
</div>
</body>
</html>
