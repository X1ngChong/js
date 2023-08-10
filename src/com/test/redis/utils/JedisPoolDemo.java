package com.test.redis.utils;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

/**
 * 通过连接池来获取jedis对象
 */
public class JedisPoolDemo {
    private static String host = "192.168.0.101";
    //连接池的配置信息的对象
    private static JedisPoolConfig config = null;

    private static JedisPool jedisPool =null;

    static{
        config = new JedisPoolConfig();

        config.setMaxTotal(30);//最大连接数
        config.setMaxIdle(10);//最大空闲连接数,在没有客户端来获取连接的时候,最多可以有10个空闲的连接等待获取

        /**
         * 设置获取连接的最大等待时间,毫秒
         * 如果超时,就抛异常
         * 默认 -1,永不超时,一直等待获取连接
         */
        config.setMaxWaitMillis(2000);

        config.setTestOnBorrow(false);//在获取连接时是否检查有效性,是boolean值,默认是false
        config.setTestOnReturn(false);//在获取返回结果时是否检查有效性,是boolean值,默认是false

        jedisPool = new JedisPool(config,host,6379);
    }

    public static Jedis getJedis(){
        //通过连接池获取jedis对象
        Jedis jedis = jedisPool.getResource();
        //如果要认证
        jedis.auth("111111");

        return jedis;
    }

}
