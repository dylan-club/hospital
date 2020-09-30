package com.nicklaus.controller;

import com.nicklaus.pojo.User;
import com.nicklaus.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    @ResponseBody
    public User login(User user, HttpServletRequest request){

        User loginUser = userService.findLoginUser(user);

        HttpSession session = request.getSession();
        session.setAttribute("loginUser",loginUser);

        return loginUser;
    }

    @RequestMapping("/quit")
    public String quit(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.removeAttribute("loginUser");
        session.removeAttribute("diagnosingPatient");

        return "redirect:/index.jsp";
    }
}
