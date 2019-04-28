package com.mmall.vo;

import java.math.BigDecimal;
import java.util.List;

/**
 * Create By dingchao
 * on 2019/4/14 0014
 */
public class CartVo {

    List<CartProductVo> cartProductVoList;
    private BigDecimal carttotalPrice;
    private boolean allChecked;//是否全部选中
    private String imageHost;

    public List<CartProductVo> getCartProductVoList() {
        return cartProductVoList;
    }

    public void setCartProductVoList(List<CartProductVo> cartProductVoList) {
        this.cartProductVoList = cartProductVoList;
    }

    public BigDecimal getCarttotalPrice() {
        return carttotalPrice;
    }

    public void setCarttotalPrice(BigDecimal carttotalPrice) {
        this.carttotalPrice = carttotalPrice;
    }

    public boolean isAllChecked() {
        return allChecked;
    }

    public void setAllChecked(boolean allChecked) {
        this.allChecked = allChecked;
    }

    public String getImageHost() {
        return imageHost;
    }

    public void setImageHost(String imageHost) {
        this.imageHost = imageHost;
    }
}
