package com.leo.admin.dao;

import java.util.List;

/**
 * @author Leo
 */
public interface BaseDao<T> {
    /**
     * 新增
     *
     * @param t 新增对象
     * @return 新增条数
     */
    int insert(T t);

    /**
     * 修改
     *
     * @param t 修改对象
     * @return 修改条数
     */
    int update(T t);

    /**
     * 删除
     *
     * @param t 查询对象
     * @return 删除条数
     */
    int delete(T t);

    /**
     * 查询单个
     *
     * @param t 查询对象
     * @return 一条数据
     */
    T findForObject(T t);

    /**
     * 查询多个
     *
     * @param t 查询对象
     * @return 多条数据
     */
    List<T> findForList(T t);
}
