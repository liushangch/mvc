package com.leo.common.util;

public final class StringUtils {
    /**
     * 判断字符串是否为null或""
     *
     * @param str 字符串
     * @return null或""返回true
     */
    public static boolean isNullOrEmpty(String str) {
        return str == null || str.trim().length() == 0;
    }
}
