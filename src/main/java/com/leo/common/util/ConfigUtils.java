package com.leo.common.util;

import com.typesafe.config.Config;
import com.typesafe.config.ConfigFactory;

/**
 * 读取配置文件
 *
 * @author LiuChao
 * @date 2018/7/2 15:59
 */
public class ConfigUtils {
    private static final Config CONFIG_PROPERTIES = ConfigFactory.load("config.properties");
    private static final Config INIT_CONF = ConfigFactory.load("init.conf");

    public static Config getConfigProperties() {
        return CONFIG_PROPERTIES;
    }

    public static Config getInitConf() {
        return INIT_CONF;
    }
}