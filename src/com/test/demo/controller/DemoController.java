package com.test.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("demo")
public class DemoController {

    @RequestMapping("test")
    public String test(String name,Integer age){
        System.out.println(name+ "  "+ age );

        return "/pages/demo.jsp";

    }

}
