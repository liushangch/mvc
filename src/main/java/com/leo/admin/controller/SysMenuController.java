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
    private final static String LIST = "admin/model/sys/sys_menu_list";
    private final static String FORM = "admin/model/sys/sys_menu_form";
    private final static String CHOICE = "admin/model/sys/sys_menu_choice";
    @Resource
    private SysMenuServiceImpl menuService;

    /**
     * 菜单列表页面
     */
    @RequestMapping(value = "list")
    public String list(SysMenu inMenu, Model model) {
        if (StringUtils.isNullOrEmpty(inMenu.getName())) {
            inMenu.setMenuParentId(0);
        }
        List<SysMenu> menuList = menuService.getMenuList(inMenu);
        model.addAttribute("inMenu", inMenu);
        model.addAttribute("menuList", menuList);
        return LIST;
    }

    /**
     * 菜单新增页面
     */
    @RequestMapping(value = "goAdd")
    public String goAdd(@ModelAttribute("inMenu") SysMenu inMenu, Model model) {
        model.addAttribute(ConstantUtils.OPERATE, ConstantUtils.SAVE);
        return FORM;
    }

    /**
     * 菜单修改页面
     */
    @RequestMapping(value = "goEdit")
    public String goEdit(@ModelAttribute("inMenu") SysMenu inMenu, Model model) {
        inMenu = menuService.findById(inMenu.getMenuId());
        model.addAttribute("inMenu", inMenu);
        model.addAttribute(ConstantUtils.OPERATE, ConstantUtils.UPDATE);
        return FORM;
    }

    /**
     * 菜单选择页面
     */
    @RequestMapping(value = "goChoice")
    public String goChoice(@ModelAttribute("inMenu") SysMenu inMenu, Model model) {
        if (StringUtils.isNullOrEmpty(inMenu.getName())) {
            inMenu.setMenuParentId(0);
        }
        List<SysMenu> menuList = menuService.getMenuList(inMenu);
        model.addAttribute("inMenu", inMenu);
        model.addAttribute("menuList", menuList);
        return CHOICE;
    }

    /**
     * 保存数据
     */
    @RequestMapping(value = "save")
    public String save(@ModelAttribute("inMenu") SysMenu inMenu, Model model) {
        ValidationError error = ValidationUtils.validation(inMenu);
        if (error.hasErrors()) {
            model.addAttribute(ConstantUtils.ERRORS, error.getErrors());
            return FORM;
        } else {
            int num = menuService.saveObject(inMenu);
            return num > 0 ? LIST : FORM;
        }
    }

    /**
     * 修改数据
     */
    @RequestMapping(value = "update")
    public String update(@ModelAttribute("inMenu") SysMenu inMenu, Model model) {
        ValidationError error = ValidationUtils.validation(inMenu);
        if (error.hasErrors()) {
            model.addAttribute(ConstantUtils.ERRORS, error.getErrors());
            return FORM;
        } else {
            int num = menuService.updateObject(inMenu);
            return num > 0 ? LIST : FORM;
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
                inMenu.setMenuParentId(0);
            }
            List<SysMenu> menuList = menuService.getMenuList(inMenu);
            if (menuList.size() > 0) {
                List<TreeMenu> treeMenuList = new ArrayList<>();
                TreeMenu treeMenu = new TreeMenu("0", ConstantUtils.TOP_MENU_NAME);
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