package com.leo.core.cache;

import lombok.extern.slf4j.Slf4j;
import org.springframework.cache.Cache;
import org.springframework.cache.support.SimpleValueWrapper;
import org.springframework.data.redis.core.RedisCallback;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.util.SerializationUtils;

import javax.annotation.Resource;
import java.util.concurrent.Callable;

/**
 * RedisCacheManager
 *
 * @author LiuChao
 * @date 2018/10/12
 */
@Slf4j
public class RedisCacheManager implements Cache {
    @Resource
    private RedisTemplate<String, Object> redisTemplate;
    private String name;

    public RedisTemplate<String, Object> getRedisTemplate() {
        return redisTemplate;
    }

    public void setRedisTemplate(RedisTemplate<String, Object> redisTemplate) {
        this.redisTemplate = redisTemplate;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public Object getNativeCache() {
        return null;
    }

    @Override
    public ValueWrapper get(Object o) {
        final String key = o.toString();
        log.info("获取缓存，{}", key);
        Object object = redisTemplate.execute((RedisCallback<Object>) connection -> {
            byte[] value = connection.get(key.getBytes());
            if (value == null) {
                return null;
            }
            return SerializationUtils.deserialize(value);
        });
        return object == null ? null : new SimpleValueWrapper(object);
    }

    @Override
    public <T> T get(Object o, Class<T> aClass) {
        return null;
    }

    @Override
    public <T> T get(Object o, Callable<T> callable) {
        return null;
    }

    @Override
    public void put(Object o, Object o1) {
        if (o == null || o1 == null) {
            log.warn("添加缓存失败");
            return;
        }
        final String key = o.toString();
        final Object value = o1;
        log.info("添加缓存，{}", key);
        redisTemplate.execute((RedisCallback<Boolean>) redisConnection -> redisConnection.set(key.getBytes(), SerializationUtils.serialize(value)));
    }

    @Override
    public ValueWrapper putIfAbsent(Object o, Object o1) {
        return null;
    }

    @Override
    public void evict(Object o) {
        final String key = o.toString();
        log.info("移除缓存，{}", key);
        redisTemplate.execute((RedisCallback<Long>) connection -> connection.del(key.getBytes()));
    }

    @Override
    public void clear() {
        log.info("清除全部缓存");
        redisTemplate.execute((RedisCallback<Boolean>) redisConnection -> {
            redisConnection.flushDb();
            return true;
        });
    }
}
