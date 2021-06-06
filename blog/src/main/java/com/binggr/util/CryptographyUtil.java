package com.binggr.util;

import org.apache.shiro.crypto.hash.Md2Hash;

/**
 * @author: bing
 * @date: 2020/9/14 21:16
 */
public class CryptographyUtil {
    /**
     * md5 加密
     * @param str
     * @param salt
     * @return
     */
    public static String md5(String str,String salt){
        return new Md2Hash(str,salt).toString();
    }

    /**
     * 用于简单测试
     * @param args
     */
    public static void main(String[] args) {
        System.out.println(md5("123456","binggr"));
    }
}
