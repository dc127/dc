package com.mmall.service;

import com.mmall.common.ServerResponse;
import com.mmall.vo.CartVo;

/**
 * Create By dingchao
 * on 2019/4/14 0014
 */
public interface ICartservice {
    ServerResponse<CartVo> add(Integer userId,Integer productId,Integer count);

    ServerResponse<CartVo> update(Integer userId,Integer count, Integer productId);

    ServerResponse<CartVo> deleteProduct(Integer userId,String productIds);

    ServerResponse<CartVo> list(Integer userId);

    ServerResponse<CartVo> selectOrUnSelect(Integer userId,Integer productId,Integer checked);

    ServerResponse<Integer> getCartProductCount(Integer userId);

}
