package com.leo.admin.service;

import java.util.List;

/**
 * @author LiuChao
 * @date 2018/7/5 17:35
 */
public interface BaseService<T> {
    /**
     * 保存数据
     *
     * @param t 需要存储的数据
     * @return 收影响的行数
     */
    int saveObject(T t);

    /**
     * 修改数据
     *
     * @param t 需要存储的数据
     * @return 收影响的行数
     */
    int updateObject(T t);

    /**
     * 删除数据
     *
     * @param t 需要存储的数据
     * @return 收影响的行数
     */
    int deleteObject(T t);

    /**
     * 根据编号获取数据
     *
     * @param id 主键编号
     * @return 收影响的行数
     */
    T findById(int id);

    /**
     * 获取一条数据
     *
     * @param t 需要存储的数据
     * @return 收影响的行数
     */
    T findObject(T t);

    /**
     * 获取多条数据
     *
     * @param t 需要存储的数据
     * @return 收影响的行数
     */
    List<T> findList(T t);


}
