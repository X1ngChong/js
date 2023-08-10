package com.test.ajax.controller;

import com.alibaba.fastjson.JSONObject;
import com.test.ajax.domain.User;
import com.test.redis.utils.JedisPoolDemo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import redis.clients.jedis.Jedis;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("ajax")
public class AjaxDemoController {

    @RequestMapping(value = "test",produces = {"application/json;charset=utf-8"})
    public String test(String name,Integer  age){

        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        System.out.println("hello world : " +name+" , " + age);
//        String str =  "hello world : " +name+" , " + age
        String str = "{\"name\":\""+name+"\",\"age\":"+age+"}";
        return  str;
    }


    @RequestMapping(value = "users",produces = {"text/plain;charset=utf-8"})
    public String users(){
        List<User> list = new ArrayList<>();
        list.add(new User("张三",11));
        list.add(new User("李四",12));
        list.add(new User("王五",13));
        return list.toString();
    }


    @RequestMapping(value = "userList",produces = {"application/json;charset=utf-8"})
    public String userList(){
        List<User> list = new ArrayList<>();
        list.add(new User("张三",11));
        list.add(new User("李四",12));
        list.add(new User("王五",13));

        //通过JSONObject.toJSONString(list)可以把任何的对象都转成json的字符串
        return JSONObject.toJSONString(list);
    }

    @RequestMapping(value = "sendCode",produces = {"text/plain;charset=utf-8"})
    public String sendCode(String tel){

        //假设已经生成验证码
        /*
        验证码的code,都是随机生成的
         */
        String code ="1234";
        Jedis jedis = JedisPoolDemo.getJedis();
        /**
         * 根据需要,要把验证码通过不同的途径发给用户
         * 例如:手机验证码,发送给手机,需要短信的发送组件
         * 邮件验证码,发送到邮箱,使用邮箱组件
         */

        String key = "tel_"+tel;

        jedis.set(key,code);
        jedis.expire(key,10);
        System.out.println(key+"的验证码是:"+code);

        return  "1";
    }

    @RequestMapping(value = "login",produces = {"text/plain;charset=utf-8"})
    public String login(String tel,String code){
            String flag = "0";
        Jedis jedis = JedisPoolDemo.getJedis();

        String key = "tel_"+tel;

        String tempCode= jedis.get(key);//在key过期失效过后,获取的value就是null

        //请求参数的参数验证码与Redis中存的验证码来比较
        if(code.equals(tempCode)){
            flag="1";
        }

        return  flag;
    }


}
