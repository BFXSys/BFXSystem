package com.zyzd.service;

import com.zyzd.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @author 王凯
 */
public interface UserService {

    /**
     * 用户注册
     * @param user
     * @return
     */
    int registerUser(User user);

    /**
     * 查询最大ID
     * @return
     */
    int selectNewWorkNo();

    /**
     * 用户登录
     * @param jobNum
     * @param userPassword
     * @return
     */
    List<User> loginUser(@Param("jobNum")String jobNum, @Param("userPassword") String userPassword);

    /**
     * 查询所有用户信息
     * @return
     */
    List<User> queryAllUser(Integer limit, Integer offset);

    /**
     * 查询员工总数量
     * @return
     */
    Integer findAllUserCount();


}
