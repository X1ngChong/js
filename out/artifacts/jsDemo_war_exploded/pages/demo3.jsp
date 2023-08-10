
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="../js/jquery-3.4.1.js"></script>
    <title>Title</title>
    <script>

        var test1 = function (){
            var flag;

            //得到的元素集合,其中只要有一个符合条件就返回true
           // flag =   $("#name").is("input[abc='hello']");
            flag =    $("input[type='text']").is("input[abc='hello']");

           alert(flag);
        }

        var test2 = function (){
            var len;

            /**
             通过has(),可以找到特定后代元素的集合,后代不分层级
             例如,div里面有div2,div2里面有span,如果使用has找含有span的div
             就是2个div,div1和div2
             因为span既是div2的后代也是div1的后代
             */
            // len =  $("#div0 span").has("h2").length;

            len =  $("div").has("span").length;


            alert(len);

        }

        var test3 = function (){
            var html;

            html =   $("div .abc>a").html();


            alert(html);

            //搜索所有与指定表达式匹配的元素,这个在大多情况下下都是可以用选择器替代
            html = $("div").find(".abc").find("a").html();
            alert(html);
        }

        var test4 = function (){
            var html;

            //parent方法找到匹配元素的父级,可以加入表达式参数，对父级有更明确的条件
             // html =  $("h2:eq(3)").parent().parent().html();
            // html =  $(".tdc0").parent(".tc1").html();

             // html = $("h2").parent("div").html();

            //使用parents方法,再配合相应的表达式,可以越N级找到上级元素
            //这是为了在元素的层级特别多的时候,使用多个.parent()找多层的上级繁琐,做的简化
            html =  $("h2:eq(3)").parents(".abc").html();

            alert(html)
        }

        var test5 = function (){
            //找到目标的兄弟元素,包括哥哥和弟弟
            //与之前的层级选择器的~,找兄弟元素的差别是siblings找到所有同级元素,~只找弟弟
            var len;
            len  = $("#a").siblings().length;
            alert(len);

        }

    </script>
</head>
<body>
<input type="button" value="测试" onclick="test5()">

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
		<h2>第3个div的第1个span的h2</h2>
		<span>12345111111</span>
		</span>
        <a>超链接</a>
        <span><h2>第3个div的第2个span的h2</h2></span>
    </div>
    <div class="def">
		<span>
		<h2>第4个div的第1个span的h2</h2>
		<span>wwwww</span>
		</span>
        <a>超链接</a>
        <span><h2>第4个div的第2个span的h2</h2></span>
    </div>
</div>
</body>
</html>
