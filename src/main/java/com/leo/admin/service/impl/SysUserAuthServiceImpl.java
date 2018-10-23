package com.leo.admin.service.impl;

import com.leo.admin.bean.SysUserAuth;
import com.leo.admin.dao.SysUserAuthDao;
import com.leo.admin.service.BaseService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author LiuChao
 * @date 2018/7/5 17:17
 */
@Service
public class SysUserAuthServiceImpl implements BaseService<SysUserAuth> {
    @Resource
    private SysUserAuthDao dao;

    @Override
    public int saveObject(SysUserAuth sysUserAuth) {
        return dao.insert(sysUserAuth);
    }

    @Override
    public int updateObject(SysUserAuth sysUserAuth) {
        return dao.update(sysUserAuth);
    }

    @Override
    public int deleteObject(SysUserAuth sysUserAuth) {
        return dao.delete(sysUserAuth);
    }

    @Override
    public SysUserAuth findById(int id) {
        return dao.findForObject(new SysUserAuth(id));
    }

    @Override
    public SysUserAuth findObject(SysUserAuth sysUserAuth) {
        return dao.findForObject(sysUserAuth);
    }

    @Override
    public List<SysUserAuth> findList(SysUserAuth sysUserAuth) {
        return dao.findForList(sysUserAuth);
    }
}