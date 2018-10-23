package com.leo.admin.service;

import com.leo.admin.bean.SysMenu;
import com.leo.admin.bean.TreeMenu;
import org.dozer.Mapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * DozerTest
 *
 * @author LiuChao
 * @date 2018/9/6
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-context-dozer.xml"})
public class DozerTest {
    @Autowired
    Mapper mapper;

    @Test
    public void dozerMapper() {
        SysMenu sysMenu = new SysMenu();
        sysMenu.setName("测试");
        TreeMenu treeMenu = mapper.map(sysMenu, TreeMenu.class);
        System.out.println(treeMenu);
    }
}