package com.company.electriccar.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/")
public class HomeController {
    private static final String INDEX_VIEW = "index";
    public static final String HOME = "redirect:/";


    @RequestMapping
    public String home(ModelMap map,HttpServletRequest request){
        return INDEX_VIEW;
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(String userId, String pwd,ModelMap map,HttpSession session) {

        return HOME;
    }
}