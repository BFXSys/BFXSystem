package com.zyzd.service.impl;

import com.zyzd.dao.UserDao;
import com.zyzd.entity.User;
import com.zyzd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 王凯
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    /**
     * 用户注册
     * @param user
     * @return
     */
    @Override
    public int registerUser(User user) {
        return userDao.registerUser(user);
    }

    /**
     *
     * @return
     */
    @Override
    public int selectNewWorkNo() {
        return userDao.selectNewWorkNo();
    }

    /**
     * 用户登录
     * @param jobNum
     * @param userPassword
     * @return
     */
    @Override
    public List<User> loginUser(String jobNum, String userPassword) {
        return userDao.loginUser(jobNum,userPassword);
    }

    @Override
    public List<User> queryAllUser(Integer limit, Integer offset) {
        return userDao.queryAllUser(limit, offset);
    }

    @Override
    public Integer findAllUserCount() {
        return userDao.findAllUserCount();
    }

    /**
     * 查询所有用户信息
     * @return
     */

}
