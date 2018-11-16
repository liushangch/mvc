package com.leo.core.cache;

import com.alibaba.fastjson.JSONObject;
import com.leo.common.annotation.RedisDel;
import com.leo.common.annotation.RedisGet;
import com.leo.common.annotation.RedisPut;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.core.LocalVariableTableParameterNameDiscoverer;
import org.springframework.data.redis.core.RedisCallback;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.expression.EvaluationContext;
import org.springframework.expression.Expression;
import org.springframework.expression.ExpressionParser;
import org.springframework.expression.spel.standard.SpelExpressionParser;
import org.springframework.expression.spel.support.StandardEvaluationContext;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.lang.reflect.Method;

/**
 * RedisCacheAspect
 *
 * @author LiuChao
 * @date 2018/10/30
 */
@Aspect
@Component
@Slf4j
public class RedisCacheAspect {
    private ExpressionParser parser = new SpelExpressionParser();
    private LocalVariableTableParameterNameDiscoverer discoverer = new LocalVariableTableParameterNameDiscoverer();
    @Resource
    private RedisTemplate<String, Object> redisTemplate;

    /**
     * RedisGet切入点
     */
    @Pointcut("@annotation(com.leo.common.annotation.RedisGet)")
    private void redisGetPointcut() {

    }

    /**
     * RedisPut切入点
     */
    @Pointcut("@annotation(com.leo.common.annotation.RedisPut)")
    private void redisPutPointcut() {

    }

    /**
     * RedisDel切入点
     */
    @Pointcut("@annotation(com.leo.common.annotation.RedisDel)")
    private void redisDelPointcut() {

    }

    /**
     * RedisGet环绕通知
     */
    @Around(value = "redisGetPointcut() && @annotation(redisGet)")
    public Object aroundMethod(ProceedingJoinPoint joinPoint, RedisGet redisGet) {
        Object object = null;
        try {
            EvaluationContext context = getContext(joinPoint);
            String spELValue = getSpELValue(redisGet.key(), context);
            String key = redisGet.nameSpace() + spELValue;
            object = get(key, redisGet.clazz());
            if (object == null) {
                object = joinPoint.proceed();
                put(key, object);
            }
        } catch (Throwable throwable) {
            throwable.printStackTrace();
        }
        return object;
    }

    /**
     * RedisPut环绕通知
     */
    @Around(value = "redisPutPointcut() && @annotation(redisPut)")
    public Object aroundMethod(ProceedingJoinPoint joinPoint, RedisPut redisPut) {
        Object object = null;
        try {
            object = joinPoint.proceed();
            EvaluationContext context = getContext(joinPoint);
            String spELValue = getSpELValue(redisPut.key(), context);
            put(redisPut.nameSpace() + spELValue, object);
        } catch (Throwable throwable) {
            throwable.printStackTrace();
        }
        return object;
    }

    /**
     * RedisDel环绕通知
     */
    @Around(value = "redisDelPointcut() && @annotation(redisDel)")
    public Object aroundMethod(ProceedingJoinPoint joinPoint, RedisDel redisDel) {
        Object object = null;
        try {
            object = joinPoint.proceed();
            EvaluationContext context = getContext(joinPoint);
            for (String k : redisDel.key()) {
                String spELValue = getSpELValue(k, context);
                del(redisDel.nameSpace() + spELValue);
            }
        } catch (Throwable throwable) {
            throwable.printStackTrace();
        }
        return object;
    }

    public Object get(final String key, Class<?> clazz) {
        log.info("获取缓存，{}", key);
        Object object = redisTemplate.execute((RedisCallback<Object>) connection -> {
            byte[] value = connection.get(key.getBytes());
            if (value == null) {
                return null;
            }
            return new String(value);
        });
        return object == null ? null : JSONObject.parseObject(object.toString(), clazz);
    }

    public Boolean put(final String key, final Object valueObject) {
        log.info("添加缓存，{}", key);
        return redisTemplate.execute((RedisCallback<Boolean>) redisConnection -> {
            String value = JSONObject.toJSONString(valueObject);
            Boolean flag = redisConnection.set(key.getBytes(), value.getBytes());
            redisConnection.expire(key.getBytes(), 60 * 60 * 24);
            return flag;
        });
    }

    public Long del(final String key) {
        log.info("删除缓存，{}", key);
        return redisTemplate.delete(redisTemplate.keys(key));
    }

    /**
     * 数据组装
     */
    private EvaluationContext getContext(ProceedingJoinPoint joinPoint) {
        Method method = ((MethodSignature) joinPoint.getSignature()).getMethod();
        Object[] objects = joinPoint.getArgs();
        String[] params = discoverer.getParameterNames(method);
        EvaluationContext context = new StandardEvaluationContext();
        if (params != null) {
            for (int i = 0; i < params.length; i++) {
                context.setVariable(params[i], objects[i]);
            }
        }
        return context;
    }

    private String getSpELValue(String spKey, EvaluationContext context) {
        Expression expression = parser.parseExpression(spKey);
        return String.valueOf(expression.getValue(context));
    }
}