package com.leo.common.util;

/**
 * 初始化
 *
 * @author LiuChao
 * @date 2018/7/2 15:47
 */
public class InitUtils {
    /**
     * 获取系统名称
     *
     * @return 系统名称
     */
    public static String getSystemName() {
        return ConfigUtils.getInitConf().getString("system");
    }
}