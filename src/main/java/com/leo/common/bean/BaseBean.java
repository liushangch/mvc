package com.leo.common.bean;

import org.apache.shiro.SecurityUtils;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * BaseDO
 *
 * @author LiuChao
 * @date 2018/8/22
 */
public class BaseBean<T> implements Serializable {
    /**
     * 主键
     */
    private Integer id;
    /**
     * 创建人
     */
    private String createUser;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 修改人
     */
    private String updateUser;
    /**
     * 修改时间
     */
    private Date updateTime;
    /**
     * 排序字段
     */
    private String orderField;
    /**
     * 分页信息
     */
    private Page<T> page;
    /**
     * 验证失败信息
     */
    private List<String> errorList;

    public BaseBean() {
        Object userObject = SecurityUtils.getSubject().getPrincipal();
        if (userObject != null) {
            createUser = userObject.toString();
            updateUser = userObject.toString();
        }
        Date date = new Date();
        createTime = date;
        updateTime = date;
    }

    @Override
    public String toString() {
        return "BaseBean{" +
                "id=" + id +
                ", createUser='" + createUser + '\'' +
                ", createTime=" + createTime +
                ", updateUser='" + updateUser + '\'' +
                ", updateTime=" + updateTime +
                ", orderField='" + orderField + '\'' +
                ", page=" + page +
                ", errorList=" + errorList +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getUpdateUser() {
        return updateUser;
    }

    public void setUpdateUser(String updateUser) {
        this.updateUser = updateUser;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getOrderField() {
        return orderField;
    }

    public void setOrderField(String orderField) {
        this.orderField = orderField;
    }

    public Page<T> getPage() {
        return page;
    }

    public void setPage(Page<T> page) {
        this.page = page;
    }

    public List<String> getErrorList() {
        return errorList;
    }

    public void setErrorList(List<String> errorList) {
        this.errorList = errorList;
    }
}