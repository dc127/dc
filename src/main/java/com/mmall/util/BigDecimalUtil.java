package com.mmall.util;

import java.math.BigDecimal;

/**
 * Create By dingchao
 * on 2019/4/14 0014
 */
public class BigDecimalUtil {
    private BigDecimalUtil(){

    }
    public static BigDecimal add(double v1,double v2){
        BigDecimal bl = new BigDecimal(Double.toString(v1));//调用BigDecimal的String构造器
        BigDecimal b2 = new BigDecimal(Double.toString(v2));
        return bl.add(b2);
    }
    public static BigDecimal sub(double v1,double v2){
        BigDecimal bl = new BigDecimal(Double.toString(v1));//调用BigDecimal的String构造器
        BigDecimal b2 = new BigDecimal(Double.toString(v2));
        return bl.subtract(b2);
    }
    public static BigDecimal mul(double v1,double v2){
        BigDecimal bl = new BigDecimal(Double.toString(v1));//调用BigDecimal的String构造器
        BigDecimal b2 = new BigDecimal(Double.toString(v2));
        return bl.multiply(b2);
    }
    public static BigDecimal div(double v1,double v2){
        BigDecimal bl = new BigDecimal(Double.toString(v1));//调用BigDecimal的String构造器
        BigDecimal b2 = new BigDecimal(Double.toString(v2));
        return bl.divide(b2,2,BigDecimal.ROUND_HALF_UP);//四舍五入，保留两位小数
    }
}
