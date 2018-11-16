package com.leo.common.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

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
@Target({TYPE})
@Retention(RUNTIME)
@Inherited
public @interface RedisCacheConfig {
    /**
     * 命名空间
     */
    String nameSpace() default "";
}
