package com.bdqnsh.student.dao;

import com.bdqnsh.student.model.Student;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student
     *
     * @mbggenerated Mon May 08 16:24:44 CST 2017
     */
    int deleteByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student
     *
     * @mbggenerated Mon May 08 16:24:44 CST 2017
     */
    int insert(Student record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student
     *
     * @mbggenerated Mon May 08 16:24:44 CST 2017
     */
    int insertSelective(Student record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student
     *
     * @mbggenerated Mon May 08 16:24:44 CST 2017
     */
    Student selectByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student
     *
     * @mbggenerated Mon May 08 16:24:44 CST 2017
     */
    int updateByPrimaryKeySelective(Student record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table student
     *
     * @mbggenerated Mon May 08 16:24:44 CST 2017
     */
    int updateByPrimaryKey(Student record);


    Student selectByNameAndMobile(@Param("name") String name, @Param("mobile") String mobile);
}