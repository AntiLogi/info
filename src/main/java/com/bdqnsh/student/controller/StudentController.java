package com.bdqnsh.student.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/5/4.
 */
@Controller
@RequestMapping(value = "student")
public class StudentController {

    @RequestMapping(value = "index")
    public String index(){
        return "widgets";
    }

}
