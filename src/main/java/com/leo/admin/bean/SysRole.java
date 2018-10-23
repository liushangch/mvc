package com.leo.admin.bean;

import com.leo.common.bean.BaseBean;

/**
 * SysRole
 *
 * @author LiuChao
 * @date 2018/9/11
 */
public class SysRole extends BaseBean<SysMenu> {
    private Integer roleId;
    private String code;
    private String name;

    public SysRole() {
    }

    public SysRole(Integer roleId) {
        this.roleId = roleId;
    }

    @Override
    public String toString() {
        return "SysRole{" +
                "roleId=" + roleId +
                ", code='" + code + '\'' +
                ", name='" + name + '\'' +
                '}';
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
