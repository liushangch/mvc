package com.leo.module.api.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * ApiController
 *
 * @author LiuChao
 * @date 2018/10/22
 */
@Api(value = "Swagger接口测试", tags = "接口测试", position = 9)
@RequestMapping(value = "/api")
@Controller
public class ApiController {

    @ApiOperation(value = "获取系统时间", notes = "获取系统时间", response = Long.class)
    @RequestMapping(value = "getSystemTime")
    public Long getSystemTime(@ApiParam(required = true, value = "参数", defaultValue = "默认值") String test) {
        return System.currentTimeMillis();
    }
}
