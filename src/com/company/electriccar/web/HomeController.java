package com.company.electriccar.web;

import com.company.electriccar.domain.FANGAN_INFO;
import com.company.electriccar.domain.NEW_INFO;
import com.company.electriccar.service.news.NewsService;
import com.company.electriccar.service.product.ProductService;
import com.company.electriccar.service.solution.SolutionService;
import com.company.modules.displayTag.PaginationHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
@RequestMapping("/")
public class HomeController {
    @Autowired
    NewsService newsService;
    @Autowired
    ProductService productService;

    @Autowired
    SolutionService solutionService;
    private static final String INDEX_VIEW = "index";
    public static final String HOME = "redirect:/";


    @RequestMapping
    public String home(ModelMap map,HttpServletRequest request){
        //查询新闻信息
        NEW_INFO info = new NEW_INFO();
        map.put("newList", newsService.find(info, 10));
        //查询5个解决方案
        FANGAN_INFO fangan = new FANGAN_INFO();
        map.put("head_solutionList", solutionService.find(fangan, 10));
        //产品
        map.put("head_pic", productService.getLastestPic());
        return INDEX_VIEW;
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(String userId, String pwd,ModelMap map,HttpSession session) {

        return HOME;
    }
}