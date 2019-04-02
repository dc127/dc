package com.mmall.common;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.codehaus.jackson.map.annotate.JsonSerialize;

import java.io.Serializable;

/**
 * Create By dingchao
 * on 2019/3/29 0029
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
/*保证序列化jeson的时候，如果为null的对象，key也会消失(当数据为空时，不序列化，例如status不为空，msg为空，则返回时只序列化status)*/
public class ServerResponse<T> implements Serializable{
    private int status;
    private String msg;
    private T data;
    private ServerResponse(int status){
        this.status=status;
    }
    private ServerResponse(int status,T data){
        this.status=status;
        this.data=data;
    }
    private ServerResponse(int status,String msg,T data){
        this.status = status;
        this.msg = msg;
        this.data =data;
    }
    private ServerResponse(int status,String msg){
        this.status = status;
        this.msg = msg;
    }
    @JsonIgnore
    //使之不在jeson序列化结果当中
    public boolean isSuccess(){
        return this.status == ResponseCode.SUCCESS.getCode();
    }
    public int getStatus(){
        return status;
    }

    public String getMsg() {
        return msg;
    }

    public T getData() {
        return data;
    }

    /**
     * ResponseCode为枚举类型
     * package com.mmall.common;
     * @param <T>
     * @return 调用私有构造器返回
     */
    public static <T> ServerResponse<T> createBySuccess(){
        return new ServerResponse<T>(ResponseCode.SUCCESS.getCode());
    }

    public static <T> ServerResponse<T> createBySuccessMessage(String msg){
        return new ServerResponse<T>(ResponseCode.SUCCESS.getCode(),msg);
    }

    public static <T> ServerResponse<T> createBySuccess(T data){
        return new ServerResponse<T>(ResponseCode.SUCCESS.getCode(),data);
    }

    public static <T> ServerResponse<T> createBySuccess(String msg,T data){
        return new ServerResponse<T>(ResponseCode.SUCCESS.getCode(),msg,data);
    }

    public static <T> ServerResponse<T> createByError(){
        return new ServerResponse<T>(ResponseCode.ERROR.getCode(),ResponseCode.ERROR.getDesc());
    }

    public static <T> ServerResponse<T> createByErrorMessage(String errormessgae){
        return new ServerResponse<T>(ResponseCode.ERROR.getCode(),errormessgae);
    }
    public static <T> ServerResponse<T> createByErrorCodeMessage(int errorcode,String errormessgae){
        return new ServerResponse<T>(errorcode,errormessgae);
    }
}
