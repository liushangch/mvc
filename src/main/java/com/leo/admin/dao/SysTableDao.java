package com.leo.admin.dao;

import com.leo.admin.bean.SysTable;
import com.leo.admin.bean.SysTableColumn;
import com.leo.common.annotation.MyBatisDao;

import java.util.List;

/**
 * @author LiuChao
 * @date 2018/7/5 17:31
 */
@MyBatisDao
public interface SysTableDao extends BaseDao<SysTable> {

    List<SysTable> findTableList();

    List<SysTableColumn> findColumnList(String tableName);
}