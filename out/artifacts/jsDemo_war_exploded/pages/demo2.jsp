<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="../js/jquery-3.4.1.js"></script>
    <title>Title</title>
    <script>
        var test1 = function (){

            /**
             关于dom对象
             1.通过jQuery来获取现有的dom
             2.通过jQuery构建一个新的dom
             */

           //  var text =  $("<span id='s0'>zhangsan</span>").text()
           // var id =  $("<span id='s0'>zhangsan</span>").attr("id")
           //
           //  alert(text +"    "+id)

            //在匹配元素的后面插入新的元素,作为兄弟节点,(紧挨着匹配元素的下一个)
            // $("div>span:eq(0)").after("<h2>12313</h2>");

            // $("div>span:eq(0)").after($("<span id='s0'>zhangsan</span>"));

            //把某个元素插入到匹配元素的后,作为兄弟节点(紧挨着匹配元素的下一个)
            // $("<span id='s0'>zhangsan</span>").insertAfter( $("div>span:eq(0)"));

            //在匹配元素的前面插入新的元素,作为兄弟节点,(紧挨着匹配元素的上一个)
            // $("div>span:eq(0)").before("<h2>12313</h2>")

            // $("<h2>1231新</h2>").insertBefore( $("div>span:eq(0)"));


            //在匹配元素的前面插入新的元素,作为兄弟节点,(紧挨着匹配元素的上一个)
            //如果匹配的元素是多个,就每个匹配的元素都要做插入
            // $("div>span").before("<h2>12313</h2>");

            //在每个匹配的元素的内容末尾追加内容
            // $("div>span:eq(0)").append($("<span id='s0'>zhangsan</span>"))

            //把内容追加到指定的目标元素的内容的末尾
            // $("<h2>1231新</h2>").appendTo( $("div>span"));

            //在每个匹配的元素的内容开头添加内容
            // $("div>span:eq(0)").prepend($("<span id='s0'>zhangsan</span>"))

            //把内容添加到指定的目标元素的内容的开头
            // $("<h2>1231新</h2>").prependTo( $("div>span"));

            /**
             以上的8个方法,还有移动现有元素的作用
             */

            // $("div>span:eq(0)").after($("#span_0"));

            //如果把现有的元素追加到某几个元素中或某几个元素后面
            //会复制现有的这个元素,把这个元素追加到相应的位置,原来位置的元素就干掉
            //既要移动也要复制
            // $("div>span").after($("#span_0"));
        }

        var test2 = function (){
            $("#span_0").on("click",function (){
                alert("绑定了js事件")
            });

            //拷贝匹配的元素,clone方法有参数,不填的时候不拷贝目标元素的js绑定的事件,填true拷贝事件
            // var temp =  $("#span_0").clone();
            // var temp =  $("#span_0").clone(true);

            //移除匹配的元素,并且返回这个移除的元素(包括元素的js绑定事件)
            // var span_0 =  $("#span_0").detach();

            //移除匹配的元素,并且返回这个移除的元素(不包括元素的js绑定事件)
            var span_0 =  $("#span_0").remove();

            /**
             在使用detach()和remove()的时候,不一定非要返回
             可能有时候我们就是单纯的移除掉这个元素,使用detach()和remove()都行
             如果要是移除之后还要放到别的地方,就得考虑是不是元素的js绑定事件也要,要就用detach,不要就是remove
             */


            /**
             以上三个方法，都是针对的元素整体的操作,包括了元素的内部的内容
             */

            //清空目标元素中包含的所有内容
            // $("#span_0").empty();
            $("div").empty();


            // $("div:last").append(span_0);

        }

        var test3 = function (){
            //给匹配的元素都分别在外面套上一层标记
            // $("span").wrap("<div class='abc'></div>")

            //把所有匹配的元素先移动聚合到匹配的第一个元素所在的位置,作为兄弟节点
            //再给这些聚在一起的匹配的元素整体的在外面套上一层标记
            // $("span").wrapAll("<div class='abc'></div>")

            // alert()

            //清除匹配元素的父级标记
            // $("#span_0").unwrap()
            // $("div>span:first").unwrap()

            //可以给匹配元素的子内容都套上一层HTML标签
            // $("div>span").wrapInner("<h3></h3>");

        }
        var test4 = function (){
            //给匹配的元素替换成目标的内容,目标内容可以是html字符串也可以是dom对象
            //后面替换前面
            // $("div>span").replaceWith("<h2>替换replaceWith</h2>")
            // $("div>span").replaceWith($("<h2>替换replaceWith</h2>"))

            //用当前的内容来替换掉匹配的元素
            //前面替换后面
           $("<h2>替换replaceWith</h2>").replaceAll($( "div>span") )
        }

    </script>
</head>
<body>
<input type="button" value="测试" onclick="test4()">
<div>
    <span>第一个span</span>
    <span>第二个span</span>
</div>
<span id="span_0">第三个span<h2>h2子元素</h2></span>
<div>

</div>
</body>
</html>
