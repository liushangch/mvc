package com.leo.module.portal.controller;

import com.leo.common.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 欢迎页面
 *
 * @author LiuChao
 * @date 2018/8/20
 */
@Controller
@RequestMapping(value = "")
public class PortalController extends BaseController {
    /**
     * 欢迎页面
     */
    @RequestMapping(value = {"", "index"})
    public ModelAndView index() {
        logger.info("登录页面");
        return new ModelAndView("portal/index");
    }

    /**
     * 文档
     */
    @RequestMapping(value = "doc1")
    public ModelAndView doc() {
        logger.info("文档");
        return new ModelAndView("portal/doc");
    }
}