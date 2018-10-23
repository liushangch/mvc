package com.leo.admin.controller;

import com.leo.admin.bean.SysTable;
import com.leo.admin.service.impl.SysTableServiceImpl;
import com.leo.common.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.List;

/**
 * 代码生成
 *
 * @author LiuChao
 * @date 2018/9/13
 */
@Controller
@RequestMapping(value = "/admin/table")
public class SysTableController extends BaseController {
    @Resource
    private SysTableServiceImpl sysTableService;

    @ModelAttribute
    public void getDBTableList(Model model) {
        List<SysTable> dbTableList = sysTableService.findDBTableList();
        model.addAttribute("dbTableList", dbTableList);
    }

    @RequestMapping(value = "list")
    public String list(SysTable sysTable, Model model) {
        List<SysTable> tableList = sysTableService.findList(sysTable);
        model.addAttribute("sysTable", sysTable);
        model.addAttribute("tableList", tableList);
        return "admin/model/sys/sys_table_list";
    }

    @RequestMapping(value = "goAdd")
    public String goAdd(@ModelAttribute("sysTable") SysTable sysTable, Model model) {
        sysTable.setTableName("sys_role");
        return "admin/model/sys/sys_table_form";
    }

    @RequestMapping(value = "goEdit")
    public String goEdit(@ModelAttribute("sysTable") SysTable sysTable, Model model) {
        return "admin/model/sys/sys_table_form";
    }

    @RequestMapping(value = "save")
    public Object save(@Valid SysTable sysTable, BindingResult result) {
        return null;
    }

    @RequestMapping(value = "del")
    public void del(SysTable sysTable) {
    }
}