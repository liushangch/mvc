package com.leo.common.bean;

import java.util.ArrayList;
import java.util.List;

/**
 * 验证错误信息
 *
 * @author LiuChao
 * @date 2018/9/13
 */
public class ValidationError {
    private List<Error> errors;

    public List<Error> getErrors() {
        if (errors == null) {
            errors = new ArrayList<>();
        }
        return errors;
    }

    public void setErrors(List<Error> errors) {
        this.errors = errors;
    }

    public boolean hasErrors() {
        return errors != null && errors.size() > 0;
    }

    public class Error {
        /**
         * 错误属性
         */
        private String attribute;
        /**
         * 错误消息
         */
        private String message;

        public Error() {
        }

        public Error(String attribute, String message) {
            this.attribute = attribute;
            this.message = message;
        }

        public String getAttribute() {
            return attribute;
        }

        public void setAttribute(String attribute) {
            this.attribute = attribute;
        }

        public String getMessage() {
            return message;
        }

        public void setMessage(String message) {
            this.message = message;
        }
    }
}
