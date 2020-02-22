package com.web.controller;

import com.web.mapper.OracleMapper;
import com.web.model.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by conan on 2020/2/7.
 */
@Controller
@RequestMapping(value = "/user")
public class LoginController
{
    @Autowired
    public OracleMapper oracleMapper;

    @RequestMapping(value = "/login")
    public void login(UserInfo userInfo, HttpServletRequest request, HttpServletResponse response) throws Exception {
        System.out.println(request.getRequestURI());
        //登录成功
        boolean flag = true;

        List<UserInfo> userInfos = new ArrayList<UserInfo>();
        userInfos = oracleMapper.getUserInfo();

        //查询账号是否存在
        List<UserInfo> result = null;
        result = userInfos.stream().filter((UserInfo ui) ->
                (userInfo.getUserName().equals(ui.getUserName()) && userInfo.getPassword().equals(ui.getPassword())))
                .collect(Collectors.toList());
        if (result == null || result.size() == 0)
        {
            flag = false;
        }

        //登录成功
        if(flag){
            //将用户写入session
            request.getSession().setAttribute("_session_user", userInfo);
        }

        response.sendRedirect("/user/main");
    }
}
