package com.bdqnsh.student.dao;

import com.bdqnsh.student.model.Resource;
import org.springframework.stereotype.Repository;

@Repository
public interface ResourceMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table resource
     *
     * @mbggenerated Mon May 08 15:46:49 CST 2017
     */
    int deleteByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table resource
     *
     * @mbggenerated Mon May 08 15:46:49 CST 2017
     */
    int insert(Resource record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table resource
     *
     * @mbggenerated Mon May 08 15:46:49 CST 2017
     */
    int insertSelective(Resource record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table resource
     *
     * @mbggenerated Mon May 08 15:46:49 CST 2017
     */
    Resource selectByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table resource
     *
     * @mbggenerated Mon May 08 15:46:49 CST 2017
     */
    int updateByPrimaryKeySelective(Resource record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table resource
     *
     * @mbggenerated Mon May 08 15:46:49 CST 2017
     */
    int updateByPrimaryKey(Resource record);
}