package com.leo.admin.bean;

import com.leo.common.bean.BaseBean;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.List;

/**
 * 菜单
 *
 * @author LiuChao
 * @date 2018/7/5 17:17
 */
@Getter
@Setter
@ToString
public class SysMenu extends BaseBean<SysMenu> implements Serializable {
    /**
     * 父级编号
     */
    @NotNull(message = "上级菜单不能为空")
    private Integer parentId;
    /**
     * 菜单编码
     */
    private String code;
    /**
     * 菜单名称
     */
    @NotEmpty(message = "菜单名称不能为空")
    private String name;
    /**
     * 菜单图标
     */
    private String icon;
    /**
     * 菜单顺序
     */
    private Integer menuOrder;
    /**
     * 子级菜单
     */
    private List<SysMenu> menuList;
    /**
     * 菜单类型 1 菜单 2 按钮
     */
    private Integer menuType;
    /**
     * 菜单地址
     */
    private String menuUrl;
    /**
     * 菜单状态 1 启用 2 停用
     */
    private Integer menuStatus;
    /**
     * 打开方式
     */
    private String openType;
    /**
     * 权限标识
     */
    private String permission;

    public SysMenu() {
    }

    public SysMenu(Integer id) {
        super.setId(id);
    }
}