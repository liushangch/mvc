package com.leo.common.util;

import lombok.extern.slf4j.Slf4j;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/**
 * CommonUtils
 *
 * @author LiuChao
 * @date 2018/8/31
 */
@Slf4j
public class CommonUtils {
    /**
     * 通过反射获取值
     */
    public static Object getFieldValue(String fieldName, Object o) {
        try {
            String firstLetter = fieldName.substring(0, 1).toUpperCase();
            String getter = "get" + firstLetter + fieldName.substring(1);
            Method method = o.getClass().getMethod(getter);
            return method.invoke(o);
        } catch (Exception e) {
            log.error("通过反射获取值失败", e);
            return null;
        }
    }

    /**
     * 通过反射赋值
     */
    public static void setFieldValue(String fieldName, Object o, Object value) {
        try {
            String firstLetter = fieldName.substring(0, 1).toUpperCase();
            String setter = "set" + firstLetter + fieldName.substring(1);
            Method method = o.getClass().getMethod(setter);
            method.invoke(o, value);
        } catch (Exception e) {
            log.error("通过反射赋值失败", e);
        }
    }
}
