package com.leo.core.cache;

import org.springframework.data.redis.core.RedisTemplate;

import javax.annotation.Resource;

/**
 * RedisCache
 *
 * @author LiuChao
 * @date 2018/10/26
 */
public class RedisCacheUtils {
    @Resource
    private RedisTemplate<String, Object> redisTemplate;

}
