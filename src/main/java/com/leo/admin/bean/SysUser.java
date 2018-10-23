package com.leo.admin.bean;

import com.leo.common.bean.BaseBean;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import java.io.Serializable;

/**
 * 用户信息
 *
 * @author Leo
 */
public class SysUser extends BaseBean<SysUser> implements Serializable {
    private Integer userId;
    private String code;
    @NotEmpty(message = "用户名不能为空")
    private String username;
    private String nickname;
    private String password;
    @Length(min = 11, max = 11, message = "请输入11位手机号")
    private String phone;
    @Email(message = "请输入有效的Email地址")
    private String email;

    public SysUser() {
    }

    public SysUser(Integer userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "SysUser{" +
                "userId=" + userId +
                ", code='" + code + '\'' +
                ", username='" + username + '\'' +
                ", nickname='" + nickname + '\'' +
                ", password='" + password + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                '}';
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
