/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.leo.common.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;

/**
 * 控制器支持类
 *
 * @author ThinkGem
 * @version 2013-3-23
 */
public abstract class BaseController {
    /**
     * 日志对象
     */
    protected static final Logger logger = LoggerFactory.getLogger(BaseController.class);
    /**
     * 管理基础路径
     */
    @Value("${adminPath}")
    protected String adminPath;
}