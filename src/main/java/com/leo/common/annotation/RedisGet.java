package com.leo.common.annotation;

import java.lang.annotation.*;

import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.ElementType.TYPE;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

/**
 * RedisCatch
 *
 * @author LiuChao
 * @date 2018/10/26
 */
@Documented
@Target({METHOD, TYPE})
@Retention(RUNTIME)
@Inherited
public @interface RedisGet {
    /**
     * 命名空间
     */
    String nameSpace() default "";

    /**
     * Redis Key
     */
    String key() default "";

    /**
     * 数据类型
     */
    Class<?> clazz();
}
