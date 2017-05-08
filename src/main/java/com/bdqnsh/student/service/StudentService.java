package com.bdqnsh.student.service;

import com.bdqnsh.student.dao.StudentMapper;
import com.bdqnsh.student.model.Admin;
import com.bdqnsh.student.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * Created by Administrator on 2017/5/8.
 */
@Service
public class StudentService {
    @Autowired
    private StudentMapper studentMapper;

    public Student verify(String name, String mobile) {

        return studentMapper.selectByNameAndMobile(name, mobile);
    }

    public int createStudent(Student student,Long adminId) {
        student.setCreateId(adminId);
        student.setCreateTime(new Date());
        student.setProcess(1);
       return studentMapper.insertSelective(student);
    }

}
