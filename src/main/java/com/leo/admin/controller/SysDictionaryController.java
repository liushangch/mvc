package com.leo.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

/**
 * 系统字典
 *
 * @author LiuChao
 * @date 2018/8/31
 */
@Controller
@RequestMapping(value = "/admin/dict")
public class SysDictionaryController {

    /**
     * 字典列表页面
     */
    @RequestMapping(value = "list")
    public ModelAndView list() {
        ModelAndView mv = new ModelAndView();
        mv.addObject("dictList", new ArrayList<>());
        mv.setViewName("admin/model/sys_dictionary_list");
        return mv;
    }
}
