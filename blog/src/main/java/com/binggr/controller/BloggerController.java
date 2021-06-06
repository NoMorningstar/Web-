package com.binggr.controller;

import com.binggr.mapper.BlogMapper;
import com.binggr.service.BlogService;
import com.binggr.service.BloggerService;
import com.binggr.util.CryptographyUtil;
import com.binggr.model.Blogger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * @author: bing
 * @date: 2020/9/15 17:01
 */

/**
 * 博主相关
 */

@Controller
@RequestMapping("/blogger")
public class BloggerController {

    @Autowired
    BloggerService bloggerService;

    /**
     * 博主登录，通过shiro进行身份验证
     */
    @RequestMapping("/login")
    public String login(Blogger blogger, HttpServletRequest request){
        /**
         * 获取得到用户名和密码 密码加密
         */
        String userName = blogger.getUsername();
        String passWord = blogger.getPassword();
        String pw = CryptographyUtil.md5(passWord,"binggr");

        /**Subject**/
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(userName,pw);
        try {
            subject.login(token);
            return "admin/index";
        }catch (Exception e){
            e.printStackTrace();
            request.setAttribute("blogger", blogger);
            request.setAttribute("erroInfo","用户名或密码错误！");
        }
        return "login";
    }

    /**
     * 通过登录名查询博主信息
     * @param userName
     * @param model
     * @return
     */
    @RequestMapping("/selectByUserName")
    public String selectByUserName(String userName, Model model){
        Blogger blogger =  bloggerService.selectByUserName(userName);
        model.addAttribute("blogger",blogger);
        return "/admin/blogger-list";
    }

    /**
     * 通过id和博主信息动态更新博主信息
     * @param blogger
     * @return
     */
    @RequestMapping("/update")
    public String update(Blogger blogger){
        bloggerService.updateByUserId(blogger);
        return "/admin/blogger-list";
    }

    /**
     * 通过shiro退出登录
     * @return
     */
    @RequestMapping("/logout")
    public String logout(){
        SecurityUtils.getSubject().logout();
        return "redirect:/login.jsp";
    }
}
