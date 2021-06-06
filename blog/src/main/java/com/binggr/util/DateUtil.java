package com.binggr.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 时间格式化输出
 * @author: bing
 * @date: 2020/9/24 15:16
 *
 */
public class DateUtil {
    public static String formatDate(Date date,String format){
        String result="";
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        if(date!=null){
           result=sdf.format(date);
        }
        return result;
    }
}
