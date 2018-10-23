package com.leo.admin.controller;

import com.leo.admin.bean.SysMenu;
import com.leo.admin.bean.TreeMenu;
import com.leo.admin.service.impl.SysMenuServiceImpl;
import com.leo.common.bean.ResultBean;
import com.leo.common.controller.BaseController;
import com.leo.common.util.DozerUtils;
import com.leo.common.util.ErrorCode;
import com.leo.common.util.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.List;

/**
 * 系统角色
 *
 * @author LiuChao
 * @date 2018/8/29
 */
@Controller
@RequestMapping(value = "/admin/role")
public class SysRoleController extends BaseController {
    @Resource
    private SysMenuServiceImpl menuService;

    /**
     * 菜单列表页面
     */
    @RequestMapping(value = "list")
    public ModelAndView list(SysMenu inMenu) {
        ModelAndView mv = new ModelAndView();
        if (StringUtils.isNullOrEmpty(inMenu.getName())) {
            inMenu.setMenuParentId(0);
        }
        List<SysMenu> menuList = menuService.getMenuList(inMenu);
        mv.addObject("inMenu", inMenu);
        mv.addObject("menuList", menuList);
        mv.setViewName("admin/model/sys_role_list");
        return mv;
    }

    /**
     * 菜单新增页面
     */
    @RequestMapping(value = "goAdd")
    public ModelAndView goAdd(@ModelAttribute("inMenu") SysMenu inMenu) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("admin/model/sys_role_from");
        return mv;
    }

    /**
     * 菜单修改页面
     */
    @RequestMapping(value = "goEdit")
    public ModelAndView goEdit(@ModelAttribute("inMenu") SysMenu inMenu) {
        ModelAndView mv = new ModelAndView();
        inMenu = menuService.findById(inMenu.getMenuId());
        mv.addObject("inMenu", inMenu);
        mv.setViewName("admin/model/sys_role_from");
        return mv;
    }

    /**
     * 菜单选择页面
     */
    @RequestMapping(value = "goChoice")
    public ModelAndView goChoice(@ModelAttribute("inMenu") SysMenu inMenu) {
        ModelAndView mv = new ModelAndView();
        if (StringUtils.isNullOrEmpty(inMenu.getName())) {
            inMenu.setMenuParentId(0);
        }
        List<SysMenu> menuList = menuService.getMenuList(inMenu);
        mv.addObject("inMenu", inMenu);
        mv.addObject("menuList", menuList);
        mv.setViewName("admin/model/sys_role_choice");
        return mv;
    }

    /**
     * 保存数据
     */
    @RequestMapping(value = "save")
    @ResponseBody
    public Object save(@Valid SysMenu inMenu, BindingResult result) {
        try {
            if (result.hasErrors()) {
                List<ObjectError> errorList = result.getAllErrors();
                return new ResultBean(ErrorCode.ARG_ERROR, errorList);
            } else {
                int num = menuService.saveObject(inMenu);
                return num > 0 ? new ResultBean() : new ResultBean(ErrorCode.INSERT_ERROR);
            }
        } catch (Exception e) {
            logger.error(ErrorCode.EXCEPTION.getMsg(), e);
            return new ResultBean(ErrorCode.EXCEPTION);
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
     * 删除菜单
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
                List<TreeMenu> treeMenuList = DozerUtils.beanMapper(menuList, TreeMenu.class);
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