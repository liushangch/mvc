package com.leo.admin.service.impl;

import com.leo.admin.bean.SysRole;
import com.leo.admin.dao.SysRoleDao;
import com.leo.admin.service.BaseService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * SysRoleServiceImpl
 *
 * @author LiuChao
 * @date 2018/9/11
 */
@Service
public class SysRoleServiceImpl implements BaseService<SysRole> {
    @Resource
    private SysRoleDao dao;

    @Override
    public int saveObject(SysRole sysRole) {
        return dao.insert(sysRole);
    }

    @Override
    public int updateObject(SysRole sysRole) {
        return dao.update(sysRole);
    }

    @Override
    public int deleteObject(SysRole sysRole) {
        return dao.delete(sysRole);
    }

    @Override
    public SysRole findById(int id) {
        return findObject(new SysRole(id));
    }

    @Override
    public SysRole findObject(SysRole sysRole) {
        return dao.findForObject(sysRole);
    }

    @Override
    public List<SysRole> findList(SysRole sysRole) {
        return dao.findForList(sysRole);
    }
}
