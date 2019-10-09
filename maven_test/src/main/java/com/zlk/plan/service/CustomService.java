package com.zlk.plan.service;

import com.zlk.plan.entity.Custom;
import com.zlk.plan.entity.Orders;
import com.zlk.plan.entity.Pagination;
import com.zlk.plan.entity.Product;

import java.util.List;
/*接口*/
public interface CustomService {
    /*查询custom表所有用户方法 返回分页类*/
    List<Custom> selectCustomAll(Pagination pagination);
    /*分页查询*/
    Integer findCurrent(Pagination pagination);
    /*添加*/
    Integer addCustom(Custom custom);
    /*删除*/
    Integer deleteCustomById(Integer cid);
    /*修改*/
    Integer updateCustomById(Custom custom);
    /*根据Id查询*/
    List<Custom> findOne(Integer cid);
    /*模糊查询*/
    List<Custom> dimCustom(String cname);

    /*查询orders表所有用户方法*/
    List<Orders> selectOrdersAll(Pagination pagination);
    /*分页查询*/
    Integer finOrders(Pagination pagination);
    /*添加*/
    Integer addOrders(Orders orders);
    /*删除*/
    Integer deleteOrders(Integer oid);
    /*修改*/
    Integer updateOrdersById(Orders orders);

    /*查询Product表*/
    List<Product> selectProductAll(Pagination pagination);
    /*分页查询*/
    Integer finProduct(Pagination pagination);
}
