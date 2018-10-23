package com.leo.admin.controller;

import com.alibaba.fastjson.JSONObject;
import com.leo.admin.bean.SysMenu;
import com.leo.common.controller.BaseController;
import com.leo.admin.bean.SysUser;
import com.leo.admin.service.impl.SysUserServiceImpl;
import com.leo.admin.service.impl.SysMenuServiceImpl;
import com.leo.common.util.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.List;

/**
 * 页面跳转
 *
 * @author keriezhang
 * @date 2016/10/31
 */
@Controller
@RequestMapping(value = "/admin")
public class AdminController extends BaseController {
    @Resource
    private SysUserServiceImpl userService;
    @Resource
    private SysMenuServiceImpl menuService;

    /**
     * 登录页面
     */
    @RequestMapping(value = "login")
    public ModelAndView login() {
        logger.info("登录页面");
        return new ModelAndView("admin/login");
    }

    /**
     * 首页页面
     */
    @RequestMapping(value = {"", "index"})
    public ModelAndView index() {
        logger.info("首页页面");
        ModelAndView mv = new ModelAndView();
        List<SysMenu> menuList = menuService.getMenuListByParentId(0);
        mv.addObject("menuList", menuList);
        mv.setViewName("admin/index");
        return mv;
    }

    /**
     * 主页页面
     */
    @RequestMapping(value = "home")
    public ModelAndView home() {
        logger.info("主页页面");
        ModelAndView mv = new ModelAndView();
        mv.addObject("title", "哈哈");
        mv.setViewName("admin/home");
        return mv;
    }

    /**
     * 登录
     */
    @RequestMapping(value = "signIn")
    public ModelAndView signIn(SysUser user) {
        logger.info("登录");
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(), user.getPassword());
        subject.login(token);
        return new ModelAndView("redirect:index");
    }

    /**
     * 注册
     */
    @RequestMapping(value = "/goRegistered")
    public String goRegistered(SysUser user, Model model) {
        logger.info("注册");
        return "admin/registered";
    }

    /**
     * 验证用户名是否存在
     */
    @RequestMapping(value = "/vUserName")
    @ResponseBody
    public Object vUserName(SysUser user) throws Exception {
        logger.info("验证用户名：{} 是否存在", user.getUsername());
        user = userService.findObject(user);
        JSONObject json = new JSONObject();
        //true 表示合法，验证通过；false 表示不合法，验证不通过
        json.put("valid", user == null);
        return json;
    }

    /**
     * 提交注册信息
     */
    @RequestMapping(value = "/registered")
    public String registered(@Valid @ModelAttribute SysUser user, BindingResult result) {
        logger.info("提交注册信息");
        if (result.hasErrors()) {
            logger.error(result.getFieldErrors().toString());
            return "admin/registered";
        }
        userService.saveObject(user);
        return "";
    }

    /**
     * 图标选择页面
     */
    @RequestMapping(value = "goChoice")
    public String goChoice(String icon, Model model) {
        model.addAttribute("icon", icon);
        return "admin/model/sys/sys_icon_choice";
    }

    /**
     * 404页面
     */
    @RequestMapping(value = "404")
    public ModelAndView error404() {
        logger.info("404页面");
        return new ModelAndView("admin/404");
    }

    /**
     * 500页面
     */
    @RequestMapping(value = "500")
    public ModelAndView error500() {
        logger.info("500页面");
        return new ModelAndView("admin/500");
    }
}
