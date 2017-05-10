package com.bdqnsh.student.service;

import com.bdqnsh.student.constans.IStudent;
import com.bdqnsh.student.dao.StudentMapper;
import com.bdqnsh.student.model.Admin;
import com.bdqnsh.student.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/5/8.
 */
@Service
public class StudentService {
    @Autowired
    private StudentMapper studentMapper;

    /**
     * 验证学生是否存在
     * @param name
     * @param mobile
     * @return
     */
    public Student verify(String name, String mobile) {

        return studentMapper.selectByNameAndMobile(name, mobile);
    }

    /**
     * 学生开档
     * @param student
     * @param adminId
     * @return
     */
    public int createStudent(Student student,Long adminId) {
        student.setCreateId(adminId);
        student.setCreateTime(new Date());
        student.setProcess(1);
       return studentMapper.insertSelective(student);
    }

    /**
     * 获取所有已开档学员
     * @return
     */
    public List<Student> getClassBeginStudents(){
      return   studentMapper.selectStudentByProcess(IStudent.PROCESS_CREATE);
    }

    public Student getStudentById(Long id){
        return studentMapper.selectByPrimaryKey(id);
    }


}
