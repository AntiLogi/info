package com.bdqnsh.student.controller;

import com.bdqnsh.student.model.Student;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Administrator on 2017/5/4.
 */
@Controller
@RequestMapping(value = "student")
public class StudentController {

    @RequestMapping(value = "index")
    public String index() {
        return "widgets";
    }

    @RequestMapping(value = "primary")
    @ResponseBody
    public String primaryInfo(Student student) {
        System.out.println(student);
        return "0";
    }

}
