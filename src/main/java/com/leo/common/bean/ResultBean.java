package com.leo.common.bean;

import com.alibaba.fastjson.JSON;
import com.leo.common.util.ErrorCode;

import java.io.Serializable;

/**
 * 用于统一ajax请求返回格式
 *
 * @author LiuChao
 */
public class ResultBean implements Serializable {
    /**
     * 状态码
     */
    private Integer code;
    /**
     * 数据
     */
    private Object data;
    /**
     * 错误
     */
    private String error;
    /**
     * 分页
     */
    private Object page;

    public ResultBean() {
        code = 200;
    }

    public ResultBean(Object data) {
        this();
        this.data = data;
    }

    public ResultBean(Object data, Object page) {
        this(data);
        this.page = page;
    }

    public ResultBean(ErrorCode errorCode) {
        this.code = errorCode.getCode();
        this.error = errorCode.getMsg();
    }

    public ResultBean(ErrorCode errorCode, Object data) {
        this(errorCode);
        this.data = data;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public Object getPage() {
        return page;
    }

    public void setPage(Object page) {
        this.page = page;
    }

    public void setError(ErrorCode errorCode) {
        this.code = errorCode.getCode();
        this.error = errorCode.getMsg();
    }

    @Override
    public String toString() {
        return JSON.toJSONString(this);
    }
}