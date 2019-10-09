package com.zlk.plan.mapper;

import com.zlk.plan.entity.Custom;
import com.zlk.plan.entity.Orders;
import com.zlk.plan.entity.Pagination;
import com.zlk.plan.entity.Product;

import java.util.List;

public interface CustomMapper {
    /*Custom查询表  属性是分页实体类*/
    List<Custom> selectCustomAll(Pagination pagination);
    /*总条数*/
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

    /*orders查询表  属性是分页实体类*/
    List<Orders> selectOrdersAll(Pagination pagination);
    /*总条数*/
    Integer finOrders(Pagination pagination);
    /*添加*/
    Integer addOrders(Orders orders);
    /*删除*/
    Integer deleteOrders(Integer oid);
    /*修改*/
    Integer updateOrdersById(Orders orders);

    /*product查询表*/
    List<Product> selectProductAll(Pagination pagination);
    /*总条数*/
    Integer finProduct(Pagination pagination);



}
