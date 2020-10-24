package com.zyzd.dao;

import com.zyzd.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author 王凯
 */
public interface UserDao {

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
    List<User> loginUser(@Param("jobNum")String jobNum,@Param("userPassword") String userPassword);

    /**
     * 查询所有用户信息
     * @return
     */
    List<User> queryAllUser(@Param("startNo")Integer startNo,@Param("endNo")Integer endNo);

    /**
     * 查询员工总数量
     * @return
     */
    Integer findAllUserCount();
}
