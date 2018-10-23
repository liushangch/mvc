package com.leo.admin.service.impl;

import com.leo.admin.dao.SysUserDao;
import com.leo.admin.bean.SysUser;
import com.leo.admin.service.BaseService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author LiuChao
 * @date 2018/7/5 17:17
 */
@Service
public class SysUserServiceImpl implements BaseService<SysUser> {
    @Resource
    private SysUserDao dao;

    @Override
    public int saveObject(SysUser sysUser) {
        return dao.insert(sysUser);
    }

    @Override
    public int updateObject(SysUser sysUser) {
        return dao.update(sysUser);
    }

    @Override
    public int deleteObject(SysUser sysUser) {
        return dao.delete(sysUser);
    }

    @Override
    public SysUser findById(int id) {
        return dao.findForObject(new SysUser(id));
    }

    @Override
    public SysUser findObject(SysUser sysUser) {
        return dao.findForObject(sysUser);
    }

    @Override
    public List<SysUser> findList(SysUser sysUser) {
        return dao.findForList(sysUser);
    }
}