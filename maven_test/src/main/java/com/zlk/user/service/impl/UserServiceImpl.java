package com.zlk.user.service.impl;

import com.zlk.user.entity.User;
import com.zlk.user.mapper.UserMapper;
import com.zlk.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired/*加载外部资源*/
    private UserMapper userMapper;
    @Override/*重写父类方法*/
    public User selectUser(User user){
        return userMapper.selectUser(user);
    }
}
