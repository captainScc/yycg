package cn.sharetimes.service;

import cn.sharetimes.pojo.User;

/**
 * Created by sharetimes on 2017/11/3.
 */
public interface UserService {
    User findUser(String username, String password);
}
