package com.zlk.user.service;

import com.zlk.user.entity.User;
/*接口*/
public interface UserService {
    /*验证账号密码*/
    User selectUser(User user);
}
