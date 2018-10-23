package com.leo.common.util;

/**
 * 返回错误代码
 *
 * @author LiuChao
 */
public enum ErrorCode {
    /**
     * 返回错误状态码
     */
    EXCEPTION(400001, "服务器异常！"),
    NO_DATA(400002, "没有数据！"),
    ARG_ERROR(400003, "请求参数错误！"),
    FORMAT_ERROR(400004, "请求格式错误！"),
    AUTHORIZATION_ERROR(400005, "权限验证失败！"),
    REPEAT_DATA(400006, "数据重复！"),
    NO_FILE(400007, "文件不存在！"),
    INSERT_ERROR(400011, "新增失败！"),
    DELETE_ERROR(400012, "删除失败！"),
    UPDATE_ERROR(400013, "修改失败！"),
    SELECT_ERROR(400014, "查询失败！"),

    NO_USER(400101, "账户不存在"),
    PHONE_EXISTED(400102, "手机号码已被绑定"),
    PASSWORD_ERROR(400103, "密码不正确"),
    CODE_ERROR(400104, "验证码错误"),
    PASSWORD_FMT_ERROR(400105, "请输入正确格式密码"),
    OLD_PASSWORD_ERROR(400107, "旧密码不正确"),
    NO_PHONE(400112, "手机号不存在"),

    NO_TEAM(400401, "没有团队"),

    OPTIONS_ERROR(400901, "选项矛盾，请重新选择！"),
    ERR_999(400999, "");


    ErrorCode(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    private int code;
    private String msg;

    public int getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }
}