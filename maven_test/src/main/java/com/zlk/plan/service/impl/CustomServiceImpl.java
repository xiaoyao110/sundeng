package com.zlk.plan.service.impl;

import com.zlk.plan.entity.Custom;
import com.zlk.plan.entity.Orders;
import com.zlk.plan.entity.Pagination;
import com.zlk.plan.entity.Product;
import com.zlk.plan.mapper.CustomMapper;
import com.zlk.plan.service.CustomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import java.util.List;
@Service
public class CustomServiceImpl implements CustomService
{
    @Autowired/*加载外部资源*/
    private CustomMapper customMapper;

    @Override/*查询所有客户信息*/
    public List<Custom> selectCustomAll(Pagination pagination){
        /*实体类中page赋值给page常量*/
        Integer page=pagination.getPage();
        /*实体类中limit赋值给limit常量*/
        Integer limit=pagination.getLimit();
        /*把初始页算出来*/
        Integer startPage=(page-1)*limit;
        /*三个参数方法pagination实体类里面*/
        pagination.setStartPage(startPage);

        List<Custom> customList=customMapper.selectCustomAll(pagination);
        return customList;

    }

    @Override/*查询总条数*/
    public Integer findCurrent(Pagination pagination) {
        return customMapper.findCurrent(pagination);
    }
    @Override/*添加*/
    public Integer addCustom(Custom custom){
        return customMapper.addCustom(custom);
    }
    @Override/*删除*/
    public Integer deleteCustomById(Integer cid){
        return customMapper.deleteCustomById(cid);
    }
    @Override/*修改*/
    public Integer updateCustomById(Custom custom){
        return customMapper.updateCustomById(custom);
    }
    @Override/*查询*/
    public List<Custom> findOne(Integer cid){
        return customMapper.findOne(cid);
    }

    @Override/*模糊查询*/
    public List<Custom> dimCustom(String cname) {
        return customMapper.dimCustom(cname);
    }

    @Override/*查询Orders表所有客户信息*/
    public List<Orders> selectOrdersAll(Pagination pagination){
        Integer page=pagination.getPage();
        Integer limit=pagination.getLimit();
        Integer startPage=(page-1)*limit;
        pagination.setStartPage(startPage);
        List<Orders> orderslist=customMapper.selectOrdersAll(pagination);
        return orderslist;
    }

    @Override/*查询总页数*/
    public Integer finOrders(Pagination pagination) {
        return customMapper.finOrders(pagination);
    }
    @Override/*添加*/
    public Integer addOrders(Orders orders){
        return customMapper.addOrders(orders);
    }
    @Override/*删除*/
    public Integer deleteOrders(Integer oid){
        return customMapper.deleteOrders(oid);
    }
    @Override/*修改*/
    public Integer updateOrdersById(Orders orders){
        return customMapper.updateOrdersById(orders);
    }

    @Override/*查询Product表所有的值*/
    public List<Product> selectProductAll(Pagination pagination){
        Integer page=pagination.getPage();
        Integer limit=pagination.getLimit();
        Integer startPage=(page-1)*limit;
        List<Product> productlist=customMapper.selectProductAll(pagination);
        return productlist;
    }
    @Override
    public Integer finProduct(Pagination pagination){
        return customMapper.finProduct(pagination);
    }
}
