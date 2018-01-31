package cn.sharetimes.service.impl;

import cn.sharetimes.mapper.UserMapper;
import cn.sharetimes.pojo.User;
import cn.sharetimes.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import static com.sun.tools.javac.jvm.ByteCodes.ret;
import static org.apache.shiro.web.filter.mgt.DefaultFilter.user;

/**
 * Created by sharetimes on 2017/11/3.
 */
@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserMapper userMapper;

    @Override
    public User findUser(String username, String password) {
        if(username == null || password == null) {
            return null;
        }
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        User u = this.userMapper.selectByUser(user);
        return u;
    }
}
