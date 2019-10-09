package com.zlk.user.controller;

import com.zlk.user.entity.User;
import com.zlk.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
@RequestMapping(value = "/user")
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping(value = "toLogin")
    public String index()throws Exception{
        return "login";
    }
    @RequestMapping(value = "/home")
    public ModelAndView login(User user, Model model, HttpServletRequest request)throws Exception{
        User userl=userService.selectUser(user);
        if(userl != null){
            request.getSession().setAttribute("userl",userl);
            ModelAndView mv=new ModelAndView();
            mv.setViewName("homepage");
            return mv;
        }else{
            ModelAndView mv=new ModelAndView();
            mv.addObject("msg","用户名或密码错误！");
            mv.setViewName("login");
            return mv;
        }
    }
}









