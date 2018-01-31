package cn.sharetimes.mapper;

import cn.sharetimes.pojo.User;
import com.github.abel533.mapper.Mapper;

/**
 * Created by sharetimes on 2017/11/3.
 */
public interface UserMapper extends Mapper<User>{
    User selectByUser(User user);
}
