package com.leo.common.util;

import org.dozer.Mapper;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * DozerUtils
 *
 * @author LiuChao
 * @date 2018/9/6
 */
@Component
public class DozerUtils {
    private static DozerUtils dozerUtils;
    @Resource
    private Mapper mapper;

    @PostConstruct
    public void init() {
        dozerUtils = this;
    }

    /**
     * 实体Bean映射
     *
     * @param o     需要映射的对象
     * @param clazz 映射成的类
     * @param <T>   类型
     * @return 映射后的对象
     */
    public static <T> T beanMapper(Object o, Class<T> clazz) {
        return dozerUtils.mapper.map(o, clazz);
    }

    /**
     * 实体Bean映射
     *
     * @param sourceList 需要映射的集合对象
     * @param clazz      映射成的类
     * @param <T>        类型
     * @return 映射后的集合对象
     */
    public static <T> List<T> beanMapper(Collection sourceList, Class<T> clazz) {
        List<T> list = new ArrayList<>();
        for (Object sourceObject : sourceList) {
            list.add(beanMapper(sourceObject, clazz));
        }
        return list;
    }
}
