package com.leo.admin.service.impl;

import com.leo.admin.bean.SysMenu;
import com.leo.admin.dao.SysMenuDao;
import com.leo.admin.service.BaseService;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * 菜单
 *
 * @author LiuChao
 * @date 2018/7/5 17:32
 */
@Service
@CacheConfig(cacheNames = "SysMenu")
public class SysMenuServiceImpl implements BaseService<SysMenu> {
    @Resource
    private SysMenuDao dao;

    @Override
    public int saveObject(SysMenu menu) {
        return dao.insert(menu);
    }

    @Override
    public int updateObject(SysMenu menu) {
        return dao.update(menu);
    }

    @Override
    public int deleteObject(SysMenu menu) {
        return dao.delete(menu);
    }

    @Cacheable(key = "#id")
    @Override
    public SysMenu findById(int id) {
        return dao.findForObject(new SysMenu(id));
    }

    @Cacheable(key = "#menu.menuId")
    @Override
    public SysMenu findObject(SysMenu menu) {
        return dao.findForObject(menu);
    }

    @Cacheable
    @Override
    public List<SysMenu> findList(SysMenu menu) {
        return dao.findForList(menu);
    }

    /**
     * 根据条件查询菜单
     *
     * @param menu 查询条件
     * @return 菜单列表
     */
    public List<SysMenu> getMenuList(SysMenu menu) {
        menu.setOrderField("order");
        List<SysMenu> menuList = findList(menu);
        for (SysMenu outMenu : menuList) {
            outMenu.setMenuList(getMenuListByParentId(outMenu.getMenuId()));
        }
        return menuList;
    }

    /**
     * 递归查询所有菜单
     *
     * @param menuParentId 父级编号
     * @return 菜单列表
     */
    public List<SysMenu> getMenuListByParentId(int menuParentId) {
        List<SysMenu> menuList = null;
        SysMenu inMenu = new SysMenu();
        inMenu.setMenuParentId(menuParentId);
        inMenu.setOrderField("order");
        List<SysMenu> outMenuList = findList(inMenu);
        if (outMenuList.size() > 0) {
            menuList = new ArrayList<>();
            for (SysMenu outMenu : outMenuList) {
                outMenu.setMenuList(getMenuListByParentId(outMenu.getMenuId()));
                menuList.add(outMenu);
            }
        }
        return menuList;
    }
}