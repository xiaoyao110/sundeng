package com.zlk.user.mapper;

import com.zlk.user.entity.User;
/*接口*/
public interface UserMapper {
    /*验证账号密码方法*/
    User selectUser(User user);
}
