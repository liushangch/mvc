package com.leo.admin.bean;

import com.leo.common.bean.BaseBean;

/**
 * 用户登录验证
 *
 * @author LiuChao
 * @date 2018/9/11
 */
public class SysUserAuth extends BaseBean<SysMenu> {
    /**
     * 主键
     */
    private Integer authId;
    /**
     * 用户编号
     */
    private Integer userId;
    /**
     * 身份验证类型
     */
    private String authType;
    /**
     * 身份识别
     */
    private String authIdentify;
    /**
     * 身份凭证
     */
    private String authCredential;

    public SysUserAuth() {
    }

    public SysUserAuth(Integer authId) {
        this.authId = authId;
    }

    @Override
    public String toString() {
        return "SysUserAuth{" +
                "authId=" + authId +
                ", userId=" + userId +
                ", authType='" + authType + '\'' +
                ", authIdentify='" + authIdentify + '\'' +
                ", authCredential='" + authCredential + '\'' +
                '}';
    }

    public Integer getAuthId() {
        return authId;
    }

    public void setAuthId(Integer authId) {
        this.authId = authId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getAuthType() {
        return authType;
    }

    public void setAuthType(String authType) {
        this.authType = authType;
    }

    public String getAuthIdentify() {
        return authIdentify;
    }

    public void setAuthIdentify(String authIdentify) {
        this.authIdentify = authIdentify;
    }

    public String getAuthCredential() {
        return authCredential;
    }

    public void setAuthCredential(String authCredential) {
        this.authCredential = authCredential;
    }
}