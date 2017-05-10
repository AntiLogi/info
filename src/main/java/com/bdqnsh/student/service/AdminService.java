package com.bdqnsh.student.service;

import com.bdqnsh.student.dao.AdminMapper;
import com.bdqnsh.student.model.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/5/9.
 */
@Service
public class AdminService {
    @Autowired
    private AdminMapper adminMapper;

    public List<Admin> getAdminsByRole(Long roleId) {
        if (roleId == null) {
            return null;
        }
        return adminMapper.getAdminsByRoleId(roleId);

    }
}
