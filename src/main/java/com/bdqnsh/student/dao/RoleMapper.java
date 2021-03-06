package com.bdqnsh.student.dao;

import com.bdqnsh.student.model.Role;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table role
     *
     * @mbggenerated Mon May 08 15:46:49 CST 2017
     */
    int deleteByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table role
     *
     * @mbggenerated Mon May 08 15:46:49 CST 2017
     */
    int insert(Role record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table role
     *
     * @mbggenerated Mon May 08 15:46:49 CST 2017
     */
    int insertSelective(Role record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table role
     *
     * @mbggenerated Mon May 08 15:46:49 CST 2017
     */
    Role selectByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table role
     *
     * @mbggenerated Mon May 08 15:46:49 CST 2017
     */
    int updateByPrimaryKeySelective(Role record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table role
     *
     * @mbggenerated Mon May 08 15:46:49 CST 2017
     */
    int updateByPrimaryKey(Role record);
}