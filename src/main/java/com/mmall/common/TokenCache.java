package com.mmall.common;

import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LoadingCache;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.concurrent.TimeUnit;

/**
 * Create By dingchao
 * on 2019/4/1 0001
 */
public class TokenCache {
    private static Logger logger = LoggerFactory.getLogger(TokenCache.class);

    public static final String TOKEN_PREFIX = "token_";
    //Guava是一种基于开源的Java库,这个库是为了方便编码，并减少编码错误
    /**
     * 通过本地的Guava缓存做一个Token（调用链模式）
     * initialCapacity 初始化缓存容量
     * maximumSize  最大缓存容量
     * 当超过最大缓存容量，Guava缓存会采用LRU算法，即最小使用算法来移除缓存项
     * expireAfterAccess 缓存有效期
     * build为抽象类，匿名实现（默认加载方法）
     */
    private  static LoadingCache<String,String> localCache = CacheBuilder.newBuilder().initialCapacity(1000).maximumSize(10000).expireAfterAccess(12, TimeUnit.HOURS).build(new CacheLoader<String, String>() {
        @Override
        //默认的加载实现，当调用get取值时，如果key没有对应的值，就调用这个方法进行加载。
        public String load(String s) throws Exception {
            return "null";//避免null.xx();空指针异常
        }
    });
    public static void setKey(String key,String value){
        localCache.put(key,value);
    }

    public static String getKey(String key){
        String value = null;
        try {
            value = localCache.get(key);
            if("null".equals(value)){
                return null;
            }
            return value;
        }catch (Exception e){
            logger.error("localCache get error",e);
        }
        return null;
    }
}
