package com.leo.common.util;

import com.leo.admin.bean.SysMenu;
import com.leo.admin.service.impl.SysMenuServiceImpl;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

/**
 * 字典码表
 *
 * @author LiuChao
 * @date 2018/10/19
 */
@Component
public class DictionaryUtils {
    private static DictionaryUtils dictionaryUtils;
    @Resource
    private SysMenuServiceImpl sysMenuService;

    @PostConstruct
    public void init() {
        dictionaryUtils = this;
    }

    /**
     * 根据菜单编号获取菜单名称
     *
     * @param id 菜单编号
     * @return 菜单名称
     */
    public static String getMenuName(int id) {
        try {
            if (id == 0) {
                return Constants.TOP_MENU_NAME;
            }
            SysMenu menu = dictionaryUtils.sysMenuService.findById(id);
            return menu.getName();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }
}
