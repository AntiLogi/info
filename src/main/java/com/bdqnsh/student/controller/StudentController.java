package com.bdqnsh.student.controller;

import com.bdqnsh.student.constans.IRole;
import com.bdqnsh.student.model.Admin;
import com.bdqnsh.student.model.Student;
import com.bdqnsh.student.service.AdminService;
import com.bdqnsh.student.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

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
    @Autowired
    private AdminService adminService;

    /**
     * 学员开档填写页面
     *
     * @return
     */
    @RequestMapping(value = "index")
    public String index() {
        return "addStudent/create";
    }

    /**
     * 学员开班后填写页面（学员第二次填写）
     *
     * @return
     */
    @RequestMapping(value = "second")
    public String second(Model model) {


        model.addAttribute("teachers",adminService.getAdminsByRole(IRole.TEACHER));
        return "addStudent/second";
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
        result = studentService.createStudent(student, admin.getId());


        return result;
    }

    /**
     * 学生信息展示列表
     * @param model
     * @return
     */
    @RequestMapping(value = "toStudentList")
    public String toStudentList(Model model){

        model.addAttribute("students", studentService.getClassBeginStudents());

        return "student/studentList";
    }

    /**
     *学员信息详情
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "toDetail")
    public String toDetail(Long id,Model model){
      model.addAttribute("student",  studentService.getStudentById(id));
      return "student/detail";
    }

    /**
     * 学员信息修改
     */
    @RequestMapping(value = "toEdit")
    public String toEdit(Long id,Model model){
        model.addAttribute("student",  studentService.getStudentById(id));

        return "student/edit";
    }
}
