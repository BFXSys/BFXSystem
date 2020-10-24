package com.zyzd.controller;

import com.zyzd.entity.User;
import com.zyzd.service.UserService;
import com.zyzd.util.MD5Util;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpSession;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


/**
 * @author 王凯
 */
@Controller
@RequestMapping("/userCenter")
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 前端Test
     * @return
     */
    @RequestMapping("/toIndex")
    public ModelAndView toIndex(){
        return new ModelAndView("main/index");
    }

    @RequestMapping("/toPicture")
    public ModelAndView toPicture(){
        return new ModelAndView("picture/showpicture");
    }

    @RequestMapping("/toAddEmail")
    public ModelAndView toAddEmail(){
        return new ModelAndView("addemail/add-email");
    }

    @RequestMapping("/toForm")
    public ModelAndView toForm(){
        return new ModelAndView("form/form");
    }

    @RequestMapping("/toTable")
    public ModelAndView toTable(){
        return new ModelAndView("table/table");
    }
    @RequestMapping("/toPersonInfo")
    public ModelAndView toPersonInfo(){
        return new ModelAndView("user/person");
    }

    @RequestMapping("/toRegisterUser")
    public ModelAndView toRegisterUser(){
        return new ModelAndView("user/user-register");
    }

    @RequestMapping("/toLoginUser")
    public ModelAndView toLoginUser(){
        return new ModelAndView("user/user-login");
    }

    @RequestMapping("/userRegister")
    public ModelAndView registerUser(User user){
        String userAddress = "JF";//工号前缀
        int maxID = userService.selectNewWorkNo();
        DecimalFormat decimalFormat = new DecimalFormat("000");
        String format = decimalFormat.format(maxID+1);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss");
        user.setJobNum(userAddress+format); //设置工号
        user.setCreateTime(simpleDateFormat.format(new Date())); //设置创建时间
        user.setEntryTime(simpleDateFormat.format(new Date())); //设置入职时间
        String userPassword = user.getUserPassword();
        String encryption = MD5Util.encryption(userPassword);
        String reencryption = MD5Util.reencryption(encryption);
        user.setUserPassword(reencryption);
        userService.registerUser(user);
        int maxsID = userService.selectNewWorkNo();
        DecimalFormat decimalFormats = new DecimalFormat("000");
        String formats = "JF"+decimalFormats.format(maxsID);
        return new ModelAndView("redirect:/userCenter/toLoginUser","formats",formats);
    }

    /**
     *
     * @param jobNum
     * @param userPassword
     * @return
     */
    @RequestMapping("/usrLogin")
    public ModelAndView loginUser(String jobNum,String userPassword,HttpSession session){
        if(jobNum!=null && userPassword!=null){
            String encryption = MD5Util.encryption(userPassword);
            String reencryption = MD5Util.reencryption(encryption);
            List<User> users = userService.loginUser(jobNum, reencryption);
            if(users.size()>0){
                String workerName = users.get(0).getWorkerName();
                session.setAttribute("workerName",workerName);
                return new ModelAndView("redirect:/userCenter/toIndex");
            }else{
                return new ModelAndView("redirect:/userCenter/toLoginUser");
            }
        }else {
            return new ModelAndView("redirect:/userCenter/toLoginUser");
        }
    }

    /**
     * 登出
     * @param session
     * @return
     */
    @RequestMapping("/logOutSystem")
    public ModelAndView logOutSystem(HttpSession session){
        session.invalidate();//清除所有session对象
        return new ModelAndView("user/user-login");
    }

    /**
     * 查询所有用户数据
     * @return
     */
    @ResponseBody
    @RequestMapping("/queryAllUserInfo")
    public List<User> queryAllUserInfo(@Param("startNo")Integer startNo, @Param("endNo")Integer endNo){
        List<User> users = userService.queryAllUser(startNo, endNo);
        return users;
    }





}
