package com.zhanglinchun;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
public class LoginController {

    @RequestMapping("/doLogin")
    public String doLogin(Map<String,Object> map, HttpServletRequest request,
                          @RequestParam("username")String username,
                          @RequestParam("password")String password){
        System.out.println("doLogin===>username:" + username);
        System.out.println("doLogin===>password" + password);

        map.put("username",username);
        map.put("password",password);
        map.put("ReturnURL",request.getContextPath());
        return "login";
    }


    @ResponseBody
    @RequestMapping("/login")
    public Map login(){
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("success","ok");
        System.out.println("............");
        return map;
    }
}
