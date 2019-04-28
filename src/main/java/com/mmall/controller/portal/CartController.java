package com.mmall.controller.portal;

import com.mmall.common.Const;
import com.mmall.common.ResponseCode;
import com.mmall.common.ServerResponse;
import com.mmall.pojo.User;
import com.mmall.service.ICartservice;
import com.mmall.service.IUSerService;
import com.mmall.vo.CartVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * Create By dingchao
 * on 2019/4/14 0014
 */
@Controller
@RequestMapping("/cart/")
public class CartController {
    @Autowired
    private IUSerService iUserService;
    @Autowired
    private ICartservice iCartservice;

    @RequestMapping(value = "add.do" ,method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<CartVo> add(HttpSession session,Integer productId,Integer count) {
        User user = (User) session.getAttribute(Const.CURRENT_USER);
        if (user == null) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.NEED_LOGIN.getCode(), ResponseCode.ILLEGAL_ARGUMENT.getDesc());
        }
        return iCartservice.add(user.getId(), productId, count);
    }


    @RequestMapping(value = "update.do" ,method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<CartVo> update(HttpSession session, Integer count, Integer productId) {
        User user = (User) session.getAttribute(Const.CURRENT_USER);
        if (user == null) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(), "用户未登录，请登录");
        }
    return iCartservice.update(user.getId(),count,productId);
    }

    @RequestMapping(value = "deleteProduct.do" ,method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<CartVo> deleteProduct(HttpSession session,String  productIds) {
        User user = (User) session.getAttribute(Const.CURRENT_USER);
        if (user == null) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(), "用户未登录，请登录");
        }
        return iCartservice.deleteProduct(user.getId(),productIds);
    }
    @RequestMapping(value = "list.do" ,method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<CartVo> list(HttpSession session) {
        User user = (User) session.getAttribute(Const.CURRENT_USER);
        if (user == null) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(), "用户未登录，请登录");
        }
        return iCartservice.list(user.getId());
    }

    //全选
    @RequestMapping(value = "selectAll.do" ,method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<CartVo> selectAll(HttpSession session) {
        User user = (User) session.getAttribute(Const.CURRENT_USER);
        if (user == null) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(), "用户未登录，请登录");
        }
        return iCartservice.selectOrUnSelect(user.getId(),null,Const.Cart.CHECKED);
    }
    //全反选
    @RequestMapping(value = "unSelectAll.do" ,method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<CartVo> unSelectAll(HttpSession session) {
        User user = (User) session.getAttribute(Const.CURRENT_USER);
        if (user == null) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(), "用户未登录，请登录");
        }
        return iCartservice.selectOrUnSelect(user.getId(),null,Const.Cart.UN_CHECKED);
    }
    //单独选
    @RequestMapping(value = "select.do" ,method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<CartVo> Select(HttpSession session,Integer productId) {
        User user = (User) session.getAttribute(Const.CURRENT_USER);
        if (user == null) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(), "用户未登录，请登录");
        }
        return iCartservice.selectOrUnSelect(user.getId(),productId,Const.Cart.CHECKED);
    }
    //单独反选
    @RequestMapping(value = "unSelect.do" ,method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<CartVo> unSelect(HttpSession session,Integer productId) {
        User user = (User) session.getAttribute(Const.CURRENT_USER);
        if (user == null) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(), "用户未登录，请登录");
        }
        return iCartservice.selectOrUnSelect(user.getId(),productId,Const.Cart.UN_CHECKED);
    }
    //查询当前用户的购物车里面产品的数量，如果一个产品有10个，那么数量就是10。
    @RequestMapping(value = "getCartProductCount.do" ,method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<Integer> getCartProductCount(HttpSession session) {
        User user = (User) session.getAttribute(Const.CURRENT_USER);
        if (user == null) {
            return ServerResponse.createBySuccess(0);
        }
        return iCartservice.getCartProductCount(user.getId());
    }
}
