package com.leo.admin.controller;

import com.leo.admin.bean.SysMenu;
import com.leo.admin.bean.TreeMenu;
import com.leo.admin.service.impl.SysMenuServiceImpl;
import com.leo.common.bean.ResultBean;
import com.leo.common.bean.ValidationError;
import com.leo.common.controller.BaseController;
import com.leo.common.util.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * 系统菜单
 *
 * @author LiuChao
 * @date 2018/8/29
 */
@Controller
@RequestMapping(value = "/admin/menu")
public class SysMenuController extends BaseController {
    @Resource
    private SysMenuServiceImpl menuService;

    /**
     * 菜单列表页面
     */
    @RequestMapping(value = "list")
    public String list(@ModelAttribute("searchMenu") SysMenu searchMenu, Model model) {
        if (StringUtils.isNullOrEmpty(searchMenu.getName())) {
            searchMenu.setParentId(0);
        }
        List<SysMenu> menuList = menuService.getMenuList(searchMenu);
        model.addAttribute("menuList", menuList);
        return "admin/model/sys/sys_menu_list";
    }

    /**
     * 菜单新增页面
     */
    @RequestMapping(value = "goAdd")
    public String goAdd(@ModelAttribute("inMenu") SysMenu inMenu, Model model) {
        inMenu.setParentId(0);
        model.addAttribute(Constants.OPERATE, Constants.SAVE);
        return "admin/model/sys/sys_menu_form";
    }

    /**
     * 菜单修改页面
     */
    @RequestMapping(value = "goEdit")
    public String goEdit(@ModelAttribute("inMenu") SysMenu inMenu, Model model) {
        inMenu = menuService.findById(inMenu.getId());
        model.addAttribute("inMenu", inMenu);
        model.addAttribute(Constants.OPERATE, Constants.UPDATE);
        return "admin/model/sys/sys_menu_form";
    }

    /**
     * 菜单选择页面
     */
    @RequestMapping(value = "goChoice")
    public String goChoice(@ModelAttribute("inMenu") SysMenu inMenu, Model model) {
        if (StringUtils.isNullOrEmpty(inMenu.getName())) {
            inMenu.setParentId(0);
        }
        List<SysMenu> menuList = menuService.getMenuList(inMenu);
        model.addAttribute("inMenu", inMenu);
        model.addAttribute("menuList", menuList);
        return "admin/model/sys/sys_menu_choice";
    }

    /**
     * 保存数据
     */
    @RequestMapping(value = "save")
    public String save(@ModelAttribute("inMenu") SysMenu inMenu, Model model) {
        ValidationError error = ValidationUtils.validation(inMenu);
        if (error.hasErrors()) {
            model.addAttribute(Constants.ERRORS, error.getErrors());
            return "admin/model/sys/sys_menu_form";
        } else {
            int num = menuService.saveObject(inMenu);
            return num > 0 ? "admin/model/sys/sys_menu_list" : "admin/model/sys/sys_menu_form";
        }
    }

    /**
     * 修改数据
     */
    @RequestMapping(value = "update")
    public String update(@ModelAttribute("inMenu") SysMenu inMenu, Model model) {
        ValidationError error = ValidationUtils.validation(inMenu);
        if (error.hasErrors()) {
            model.addAttribute(Constants.ERRORS, error.getErrors());
            return "admin/model/sys/sys_menu_form";
        } else {
            int num = menuService.updateObject(inMenu);
            return num > 0 ? "admin/model/sys/sys_menu_list" : "admin/model/sys/sys_menu_form";
        }
    }

    /**
     * 切换菜单状态
     *
     * @param menu 菜单编号，菜单状态
     * @return ResultBean
     */
    @RequestMapping(value = "switchMenuStatus")
    @ResponseBody
    public Object switchMenuStatus(SysMenu menu) {
        int num = menuService.updateObject(menu);
        return num > 0 ? new ResultBean() : new ResultBean(ErrorCode.UPDATE_ERROR);
    }

    /**
     * 删除菜单
     *
     * @param menu 菜单编号
     * @return ResultBean
     */
    @RequestMapping(value = "delMenu")
    @ResponseBody
    public Object delMenu(SysMenu menu) {
        int num = menuService.deleteObject(menu);
        return num > 0 ? new ResultBean() : new ResultBean(ErrorCode.DELETE_ERROR);
    }

    /**
     * 获取菜单树
     *
     * @param inMenu 菜单编号
     * @return ResultBean
     */
    @RequestMapping(value = "getZTreeMenu")
    @ResponseBody
    public Object getZTreeMenu(SysMenu inMenu) {
        try {
            if (StringUtils.isNullOrEmpty(inMenu.getName())) {
                inMenu.setParentId(0);
            }
            List<SysMenu> menuList = menuService.getMenuList(inMenu);
            if (menuList.size() > 0) {
                List<TreeMenu> treeMenuList = new ArrayList<>();
                TreeMenu treeMenu = new TreeMenu("0", Constants.TOP_MENU_NAME);
                treeMenu.setChildren(DozerUtils.beanMapper(menuList, TreeMenu.class));
                treeMenuList.add(treeMenu);
                return new ResultBean(treeMenuList);
            } else {
                return new ResultBean(ErrorCode.NO_DATA);
            }
        } catch (Exception e) {
            logger.error(ErrorCode.EXCEPTION.getMsg(), e);
            return new ResultBean(ErrorCode.EXCEPTION);
        }
    }
}