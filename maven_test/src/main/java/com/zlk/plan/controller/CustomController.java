package com.zlk.plan.controller;

import com.sun.org.apache.regexp.internal.REUtil;
import com.zlk.plan.entity.Custom;
import com.zlk.plan.entity.Orders;
import com.zlk.plan.entity.Pagination;
import com.zlk.plan.service.CustomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/customs")
public class CustomController {

    @Autowired/*自动注入*/
    private CustomService customService;

    /*转发*/
   @RequestMapping(value = "/toCustomList")
   public String toList()throws Exception{
       return "main";
   }

    //分页查询所有客户信息
    @RequestMapping(value = "/customList")
    @ResponseBody
    public Map<String,Object> list(Pagination pagination) throws Exception{
       /*把pagination中的属性放到list集合中*/
        List<Custom> list = customService.selectCustomAll(pagination);
        /*创建查询总页数对象*/
        Integer count = customService.findCurrent(pagination);
        /*泛型  创建Map对象*/
        Map<String,Object> map = new HashMap<>();
        /*0 查询成功*/
        map.put("code","0");
        /*总页数*/
        map.put("count", count);
        /*查询到Custom对象的集合*/
        map.put("data",list);
        return map;
    }
    @RequestMapping(value = "/add")/*添加*/
    @ResponseBody
    public ModelAndView addCustom(Custom custom){
       Integer flag=customService.addCustom(custom);
       ModelAndView mv=new ModelAndView();
       if(flag==1){
           mv.setViewName("main");
           return mv;
       }else {
           return null;
       }
    }
    @RequestMapping(value = "/dele")/*删除*/
    @ResponseBody
    public String delete(Integer cid){
        customService.deleteCustomById(cid);
        return "customList";
    }

    @RequestMapping(value = "/upda")/*修改*/
    public String updateCustom(Custom custom){
        Integer update=customService.updateCustomById(custom);
        if(update==1) {
            customService.updateCustomById(custom);
            return "main";
        }else {
            return null;
        }
    }
    @RequestMapping(value = "dim")/*模糊查询*/
    public ModelAndView fimCustom(String dim)throws Exception{
        List<Custom> slist=customService.dimCustom(dim);
        ModelAndView mv=new ModelAndView();
        mv.addObject("slist",slist);
        mv.setViewName("main");
        return mv;
    }






}



















