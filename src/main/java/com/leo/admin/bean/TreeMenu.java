package com.leo.admin.bean;

import java.util.List;

/**
 * ZTreeMenu
 *
 * @author LiuChao
 * @date 2018/9/6
 */
public class TreeMenu {
    private String id;
    private String name;
    private List<TreeMenu> children;

    public TreeMenu() {
    }

    public TreeMenu(String id, String name) {
        this.id = id;
        this.name = name;
    }

    @Override
    public String toString() {
        return "TreeMenu{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", children=" + children +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<TreeMenu> getChildren() {
        return children;
    }

    public void setChildren(List<TreeMenu> children) {
        this.children = children;
    }
}
