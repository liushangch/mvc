package com.leo.admin.bean;

import com.leo.common.bean.BaseBean;

/**
 * SysTable
 *
 * @author LiuChao
 * @date 2018/9/12
 */
public class SysTable extends BaseBean<SysMenu> {
    /**
     * 主键
     */
    private Integer tableId;
    /**
     * 表名
     */
    private String tableName;
    /**
     * 注释
     */
    private String tableSchema;
    /**
     * 显示名称
     */
    private String showName;
    /**
     * 实体类名
     */
    private String beanName;
    /**
     * 功能注释
     */
    private String beanSchema;
    /**
     * 作者
     */
    private String beanAuthor;

    public SysTable() {
    }

    public SysTable(Integer tableId) {
        this.tableId = tableId;
    }

    @Override
    public String toString() {
        return "SysTable{" +
                "tableId=" + tableId +
                ", tableName='" + tableName + '\'' +
                ", tableSchema='" + tableSchema + '\'' +
                ", showName='" + showName + '\'' +
                ", beanName='" + beanName + '\'' +
                ", beanSchema='" + beanSchema + '\'' +
                ", beanAuthor='" + beanAuthor + '\'' +
                '}';
    }

    public Integer getTableId() {
        return tableId;
    }

    public void setTableId(Integer tableId) {
        this.tableId = tableId;
    }

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public String getTableSchema() {
        return tableSchema;
    }

    public void setTableSchema(String tableSchema) {
        this.tableSchema = tableSchema;
    }

    public String getShowName() {
        return showName;
    }

    public void setShowName(String showName) {
        this.showName = showName;
    }

    public String getBeanName() {
        return beanName;
    }

    public void setBeanName(String beanName) {
        this.beanName = beanName;
    }

    public String getBeanSchema() {
        return beanSchema;
    }

    public void setBeanSchema(String beanSchema) {
        this.beanSchema = beanSchema;
    }

    public String getBeanAuthor() {
        return beanAuthor;
    }

    public void setBeanAuthor(String beanAuthor) {
        this.beanAuthor = beanAuthor;
    }
}
