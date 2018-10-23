package com.leo.admin.service.impl;

import com.leo.admin.bean.SysTable;
import com.leo.admin.bean.SysTableColumn;
import com.leo.admin.dao.SysTableDao;
import com.leo.admin.service.BaseService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * SysTableServiceImpl
 *
 * @author LiuChao
 * @date 2018/9/13
 */
@Service
public class SysTableServiceImpl implements BaseService<SysTable> {
    @Resource
    private SysTableDao dao;

    @Override
    public int saveObject(SysTable sysTable) {
        return dao.insert(sysTable);
    }

    @Override
    public int updateObject(SysTable sysTable) {
        return dao.update(sysTable);
    }

    @Override
    public int deleteObject(SysTable sysTable) {
        return dao.delete(sysTable);
    }

    @Override
    public SysTable findById(int id) {
        return findObject(new SysTable(id));
    }

    @Override
    public SysTable findObject(SysTable sysTable) {
        return dao.findForObject(sysTable);
    }

    @Override
    public List<SysTable> findList(SysTable sysTable) {
        return dao.findForList(sysTable);
    }

    public List<SysTable> findDBTableList() {
        return dao.findTableList();
    }

    public List<SysTableColumn> findDBColumnList(String tableName) {
        return dao.findColumnList(tableName);
    }
}
