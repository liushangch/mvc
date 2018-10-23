package com.leo.common.util;

import com.leo.common.bean.ValidationError;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 验证框架
 *
 * @author LiuChao
 * @date 2018/6/28 14:05
 */
public class ValidationUtils {
    private static Validator validator = Validation.buildDefaultValidatorFactory().getValidator();
    /**
     * 整数
     */
    private static final String V_INTEGER = "^-?[1-9]\\d*$";
    /**
     * 正整数
     */
    private static final String V_Z_INDEX = "^[1-9]\\d*$";
    Pattern pattern = Pattern.compile("");

    private static boolean match(String regex, String str) {
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(str);
        return matcher.matches();
    }

    /**
     * 对象验证
     *
     * @param t   需要验证的对象
     * @param <T> 类型
     * @return 返回验证信息
     */
    public static <T> ValidationError validation(T t) {
        ValidationError error = new ValidationError();
        Set<ConstraintViolation<T>> constraintViolations = validator.validate(t);
        if (constraintViolations.size() > 0) {
            for (ConstraintViolation<T> cv : constraintViolations) {
                error.getErrors().add(error.new Error(cv.getPropertyPath().toString(), cv.getMessage()));
            }
        }
        return error;
    }
}