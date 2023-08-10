
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="../js/jquery-3.4.1.js"></script>
    <title>Title</title>
    <script>
        var fn = function () {

        }
        var test1 = function (){
            var t ;
            //返回参数的数据类型
            // t = $.type("adsada");
            // t = $.type(fn);
            // alert(t);


            //确定参数是否是数字(包括字符串类型数字)
            // t = $.isNumeric("12z23");

            //去掉字符串的前后空格
            // t =  $.trim("   hello world   ");


            alert(t);

            var jsonstr = '{"name":"张三","age":13}';
            var json =  JSON.parse(jsonstr);
            alert("name的值: "+json["name"]+"age的值  "+json["age"])

        }

        var test2 = function (){
            var arr = [1,"hello","wold",2,3];

            //参数i是遍历的次数,v是当前遍历的元素
            //也可以不用参数
            // $.each(arr,function (i,v){
            //     // alert(this);//这个this代表当前遍历时候的元素
            //     alert("第"+i+"次遍历的值是"+v);
            // });

            // var json = {
            //     "name":"张三",
            //     "age":15
            // };

            //可以遍历json
            // $.each(json,function (k,v){
            //     alert("key是:"+k+",value是:"+v)
            // })


            //可以遍历dom数组
            //dom数组也可以通过.each()来遍历
            //采用return false 结束遍历
            // $.each($("input[type='text']"),function (i){
            //     alert("第"+i+"的id是"+  $(this).attr("id"))
            //     return false;
            // });
        }

        var test3 = function (){
            var arr = [1,"hello","wold",2,3];

            //过滤数组,按照第二个参数的逻辑过滤,保留返回true的元素,形成新的数组
           // var temp =   $.grep(arr,function (a){
           //     var flag  = $.isNumeric(a);
           //     return flag;//grep返回值必须是boolean,true就是保留,false就是放弃
           //  })

            // 通过设置第三个参数值为true，取数的结果与函数的逻辑完全相反
            var temp =  $.grep(arr,function (a){
                var flag  = $.isNumeric(a);
                return flag;
            },true);

            $.each(temp,function (){
                alert(this);
            })
        }
        var test4 = function (){
            // var arr = [1,"hello","wold",2,3];
            //
            // var temp =  $.map(arr,function (a){
            //     return a+"!";
            // })

            //遍历一个数组,对数组的一个元素进行一些操作并且返回,形成一个新的数组
            //返回值可以是一个数组,会扩展到原数组中
            // 返回值是null的时候,不会加入到数组中
            //返回值可以是单个元素
            var arr = [1,2,3,4];
            // var temp =  $.map(arr,function (a){
            //     if(a == 4){
            //         return null;
            //     }
            //     return a*a;
            // });

            var temp =  $.map(arr,function (a){
                var tem = [a,a*a]
                return tem;
            });
            // [1,1,2,4,3,9,4,16]

            $.each(temp,function (){
                alert(this);
            })

        }

    </script>
</head>
<body>
<input type="button" value="测试" onclick="test4()">

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
