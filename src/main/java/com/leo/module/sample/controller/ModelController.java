package com.leo.module.sample.controller;

import com.leo.common.util.StringUtils;
import com.leo.admin.bean.SysUser;
import com.leo.admin.service.impl.SysUserServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

/**
 * 示例页面
 *
 * @author Leo
 * @date 2018/1/5
 */
@Controller
@RequestMapping(value = "/model")
public class ModelController {
    @Resource
    private SysUserServiceImpl userService;

    @ModelAttribute
    public SysUser get(@RequestParam(required = false) Integer id) {
        SysUser user;
        if (id == null) {
            user = new SysUser();
        } else {
            user = userService.findById(id);
        }
        return user;
    }

    /**
     * 列表
     */
    @RequestMapping(value = "/list")
    public String list(SysUser user, Model model) {
        model.addAttribute("userList", userService.findList(user));
        return "model/list";
    }
}