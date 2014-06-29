package com.company.electriccar.web;

import com.company.electriccar.common.syscontext.SystemContext;
import com.company.electriccar.domain.Account;
import com.company.electriccar.service.AccountService;
import com.company.modules.utils.PasswordUtil;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

/**
 * User: zxl
 * Date: 13-10-22
 * Time: 下午4:20
 */
@Controller
@RequestMapping("mainlogin")
public class MaintainController {
    @Autowired
    AccountService accountService;


    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(Account account, ModelMap map, HttpSession session) {
        boolean isLogin = false;
        if (StringUtils.isBlank(account.getUserId()) || StringUtils.isBlank(account.getPwd())) {
            map.put("error", "用户或密码不能空,请重试!");
            return "maintain/login";
        }
        account.setPwd(account.getPwd());
        Map accounts = accountService.findEntity(account);
        if (accounts!=null&&!accounts.isEmpty()) {
            SystemContext.setCurrentAccount(session, account);
        } else {
            map.put("error", "用户或密码错误,请重试!");
            return "maintain/login";
        }
        return "maintain/main";
    }

    @RequestMapping
    public String home(ModelMap map, HttpServletRequest request) {
        map.addAllAttributes(ToViewController.redirectParam(request));
        return "maintain/login";
    }
}