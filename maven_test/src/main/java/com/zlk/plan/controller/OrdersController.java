package com.zlk.plan.controller;

import com.zlk.plan.entity.Orders;
import com.zlk.plan.entity.Pagination;
import com.zlk.plan.service.CustomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/Orderss")
public class OrdersController {
    @Autowired/*自动注入*/
    private CustomService customService;

    @RequestMapping(value = "/oList")//*转发*//*
    public String olist() throws Exception {
        return "orderform";
    }

    @RequestMapping(value = "/ordersList")//*orders表格分页读取*//*
    @ResponseBody
    public Map<String, Object> ordersList(Pagination pagination) throws Exception {
        List<Orders> list = customService.selectOrdersAll(pagination);
        Integer count = customService.finOrders(pagination);
        Map<String, Object> map = new HashMap<>();
        map.put("code", "0");
        map.put("count", count);
        map.put("data", list);
        return map;
    }
    /*添加*/
    @RequestMapping(value = "/add")
    public ModelAndView addOrders(Orders orders){
        Integer flag=customService.addOrders(orders);
        ModelAndView mv=new ModelAndView();
        if(flag==1){
            mv.setViewName("orderform");
            return mv;
        }else{
            return null;
        }
    }
    /*删除*/
    @RequestMapping(value = "/dele")
    @ResponseBody
    public String deleteOrders(Integer oid){
        Integer flag = customService.deleteOrders(oid);
        if (flag == 1) {
            return "删除成功";
        }else {
            return "删除失败";
        }
    }
    /*修改*/
    @RequestMapping(value = "/upda")
    @ResponseBody
    public ModelAndView updateOrdersById(Orders orders){
        Integer update=customService.updateOrdersById(orders);
        ModelAndView mv=new ModelAndView();
        if(update==1){
            customService.updateOrdersById(orders);
            mv.setViewName("orderform");
            return mv;
        }else{
            return null;
        }
    }

}

































