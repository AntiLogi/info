package com.bdqnsh.student.controller;

import com.bdqnsh.student.model.Admin;
import com.bdqnsh.student.model.Student;
import com.bdqnsh.student.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * Created by Administrator on 2017/5/4.
 */
@Controller
@RequestMapping(value = "student")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @Autowired
    private HttpServletRequest request;

    @RequestMapping(value = "index")
    public String index() {
        return "widgets";
    }

    @RequestMapping(value = "primary")
    @ResponseBody
    public Integer primaryInfo(Student student) {
        System.out.println(student);
        Admin admin = (Admin) request.getSession().getAttribute("admin");
        Integer result = -1;
        Student verify = studentService.verify(student.getName(), student.getMobile());
        if (verify != null) {
            result = 1;
            return result;
        }
       result= studentService.createStudent(student, admin.getId());


        return result;
    }

}
