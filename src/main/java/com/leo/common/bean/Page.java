package com.leo.common.bean;

import com.leo.common.util.ConfigUtils;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * 分页信息
 *
 * @author Leo
 */
@Component
public class Page<T> {
    /**
     * 页码，默认是第一页
     */
    private int pageNo = 1;
    /**
     * 每页显示的记录数
     */
    private int pageSize = ConfigUtils.getConfigProperties().getInt("page.pageSize");
    /**
     * 总记录数
     */
    private int totalRecord;
    /**
     * 总页码数
     */
    private Integer totalPage;
    /**
     * 返回结果
     */
    private List<T> list = new ArrayList<>();

    public Page() {
        int totalPage = totalRecord % pageSize == 0 ? totalRecord / pageSize : totalRecord / pageSize + 1;
    }

    public int getPageNo() {
        return pageNo;
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalRecord() {
        return totalRecord;
    }

    public void setTotalRecord(int totalRecord) {
        this.totalRecord = totalRecord;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    public String getHtml() {
        totalPage = totalPage == null ? 1 : totalPage;
        StringBuilder html = new StringBuilder();
        html.append("<ul class='pagination pagination-sm'>")
                .append("<li><a>共<strong class='text-primary'>").append(totalRecord).append("</strong>条</a></li>")
                .append("<li><input type='number' class='form-control input-sm pull-left text-center' placeholder='页码' min='1' style='width: 64px;'/></li>")
                .append("<li><button type='button' class='btn btn-success btn-sm pull-left' style='border-Radius:0;'>跳转</button></li>")
                .append(1 == pageNo ? "<li class='disabled'>" : "<li>").append("<a href='#'><span>首页</span></a></li>")
                .append(1 == pageNo ? "<li class='disabled'>" : "<li>").append("<a href='#'><span>上一页</span></a></li>");
        for (int i = 1; i <= totalPage; i++) {
            html.append(i == pageNo ? "<li class='active'>" : "<li>").append("<a href='#'>").append(i).append("</a></li>");
        }
        html.append(pageNo == totalPage ? "<li class='disabled'>" : "<li>").append("<a href='#'><span>下一页</span></a></li>")
                .append(pageNo == totalPage ? "<li class='disabled'>" : "<li>").append("<a href='#'><span>尾页</span></a></li>")
                .append("<li><a><span>共<strong class='text-primary'>").append(totalPage).append("</strong>页</span></a></li>")
                .append("<li><input type='number' class='form-control input-sm pull-left text-center' style='width: 64px;' placeholder='页数' min='10' value='").append(pageSize).append("'/></li>")
                .append("</ul>");
        return html.toString();
    }
}
