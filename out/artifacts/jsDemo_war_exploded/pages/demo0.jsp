<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="../js/jquery-3.4.1.js"></script>
    <title>Title</title>
    <script>
        var test = function (){
            // var str =   $("#div0").text();这个是不带标签的
          //   var str =   $("#div0").html();//HTML这个是带标签的
          //   var str  = $("#hide").val();
            //通过val方法设置值,主要是输入框,下拉列表,隐藏域
              // alert(str);
          //   $("#div0").text("hello world");
          //   $("#div0").html("<a href=''>超链接</a>");

              // $("#hide").val("3");

            // var css =  $("#dd").css("background-color");//通过key来获取value
            //
            // alert(css);

            // $("#dd").css("background-color","red");

            // $("#dd").css(
            //     {"background-color":"red",
            //         "color":"blue"
            //     }
            // )

            // var s =  $("#name").attr("type");//根据属性名获取属性值
            // alert(s);

            // $("#name").attr({
            //     "name":"12345",
            //     "abc":"hello world"
            //
            // });
        }

        var num = 0;
        var test1 = function (){
            //刚才看到的事件,可以在任何的元素标签上添加
            //参数1,事件的类型,参数2事件执行的函数
            /**
             click,单击事件,最常用
             dbclick,双击事件
             change,值改变触发,输入框,下拉列表
             keydown,键盘按键按下
            keyuo,键盘松开
             focus,获得焦点
             mousedown,鼠标按下
             mouseup,鼠标弹起
             mouseout,鼠标移除
             mousemove,鼠标移动
             */
            // $("#tx").on("keyup",function (){//可以绑定多次
            //     //把输入框输入的值同步的展示到div中
            //     var v =  $("#tx").val();
            //     $("#dd").text(v);
            // });

            // $("#name").on("focus",function (){
            //     $("#dd").text("获得焦点");
            // })

            // $("#dd").on("mousedown",function (){
            //     $("#dd").text("鼠标mousedown");
            // });

            //可以绑定多个事件
            // $("#name").on("click change",function (){
            // alert("文本框的值"+  $("#name").val())
            // });

            //可以给当前的dom的多个事件绑定不同的函数,使用json对象,里面数据的key就是事件,value就是函数
            // $("#name").on({
            //     "click":function (){alert("click获取"+  $("#name").val())},
            //     "change":function (){alert("change获取"+  $("#name").val())}
            // });

            //可以给dom元素绑定多次事件同一事件的对应多个函数,这个时候,会按照绑定的顺序执行事件对应的函数
            //可以多次追加
            // num += 1 ;
            // $("#name").on("click change",function (){
            // alert("第"+  num+" 次的click")
            // });

            //可以给dom元素绑定多次事件同一事件的对应多个函数,这个时候,会按照绑定的顺序执行事件对应的函数
            //一次性给dom元素的事件添加多个函数
            $("#name").on("click change",function (){
                alert("第1 次的click")
            });
            $("#name").on("click change",function (){
                alert("第2 次的click")
            });

            /**
             绑定事件on方法总结
             1。单个事件对应单个函数,最简单
             2.多个事件对应一个函数,事件的参数可以用空格分开
             3.多个事件对应多个函数,使用json
             4.一个事件对应多个函数,
             如果是给dom元素初始化它的事件和函数,就要使用$(function(){}),页面初始化方法

             */

        }
        //由于可以给dom元素事件动态的追加函数,如果是为了给dom元素初始化其事件函数,一般不使用按钮触发
        //一般是在页面初始化的方法中去执行
        $(function (){
            // $("#name").on("click change",function (){
            //     alert("初始化的click")
            // });
            // $("#dd").on("click",onDemo1);//为了修复这个问题，你需要将 onDemo 函数作为参数传递给 $("#dd").on("click", onDemo)，而不是调用 onDemo 函数。以下是修正后的代码示例：
            // $("#dd").on("click",onDemo2);
            oneDemo()
        });

        var onDemo1 = function (){
            alert("dd1的方法");
        }
        var onDemo2 = function (){
            alert("dd2的方法");
        }

        var offDemo = function (){
            //使用off方法,给事件与其关联的函数解除绑定
            //想要使用解除绑定,必须保证当时绑定的函数不是匿名的
            $("#dd").off("click",onDemo1);
        }

        var oneDemo = function (){
            //一次性事件绑定,这个事件触发一次就解绑了,函数就没有效果了
            //它的参数设置方式与on方法相同
            $("#dd").one("click",function (){
                alert("一次性事件");

            });

        }

        var test2  = function (){
            //根据属性名移除属性
            // $("#name").removeAttr("abc");

            //设置复选框的选中状态,true就是选中,false就是不选中
            // $("input[type='checkbox']:eq(0)").prop("checked",true);
            // $("input[type='checkbox']:eq(0)").prop("checked",false);

            //设置复选框是否可用,true是不可用,false可用
            // $("input[type='checkbox']:eq(0)").prop("disabled",false);

            //可以使用json设置多个属性
            // $("input[type='checkbox']:eq(0)").prop({
            //     "checked":true,
            //     "disabled":true
            // });

            // var flag =$("input[type='checkbox']:eq(0)").prop("checked");
            var flag =$("input[type='checkbox']:eq(0)").prop("disabled");
            alert(flag)

        }

    </script>
</head>
<body>
<input type="button" value="测试" onclick="test2()">
<input type="button" value="绑定事件" onclick="test1()">
<input type="button" value="解绑" onclick="offDemo()">

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
<input type="checkbox" class="ra" value="1" >一
<input type="checkbox" class="ra" value="2">二
<input type="checkbox" class="ra" value="3">三
<div id="div1" value="1111112234" aaa="123">

    <div id="dd" aaa="125556" style="background-color: red">2222</div></div>

<div id="div2" value="1111112234" aaa="123"></div>
<div id="div3" value="1111112234" aaa="124446" style="display: none;"></div>
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
        <td></td>
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
