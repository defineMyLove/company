package com.company.electriccar.web.page;

import com.company.electriccar.domain.*;
import com.company.electriccar.service.lunwen.ZhishiService;
import com.company.electriccar.service.lunwen.ZhuanLanService;
import com.company.electriccar.service.mesboard.MesBoardService;
import com.company.electriccar.service.news.NewsService;
import com.company.electriccar.service.product.ProductService;
import com.company.electriccar.service.shipin.ShipinService;
import com.company.electriccar.service.work.WorkService;
import com.company.electriccar.service.yeji.YejiClassifyService;
import com.company.electriccar.service.yeji.YejiService;
import com.company.modules.displayTag.PaginationHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * Created by zxl on 14-6-29.
 */
@Controller
@RequestMapping("/page")
public class PageController {
    @Autowired
    private NewsService newsService;
    @Autowired
    private YejiClassifyService yejiClassifyService;
    @Autowired
    private YejiService yejiService;
    @Autowired
    private ShipinService shipinService;
    @Autowired
    private ZhuanLanService lunwenService;
    @Autowired
    private ProductService productService;
    @Autowired
    private MesBoardService mesBoardService;
    @Autowired
    private ZhishiService zhishiService;
    @Autowired
    private WorkService workService;

    /**
     * 新闻中心
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("news")
    public String news(ModelMap model,HttpServletRequest request) {
        NEW_INFO info = new NEW_INFO();
        PaginationHelper<Map> newList = PaginationHelper.createPagination(newsService.find(info,request));
        model.put("newList", newList);
        return "news";
    }

    /**
     * 公司资历
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("aboutque")
    public String aboutque(ModelMap model,HttpServletRequest request) {
        return "aboutque";
    }

    /**
     * 公司业绩-分类列表
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("aboutper")
    public String aboutper(ModelMap model,HttpServletRequest request) {
        YEJI_FENLEI fenlei = new YEJI_FENLEI();
        PaginationHelper<Map> classList = PaginationHelper.createPagination(yejiClassifyService.find(fenlei,request));
        model.put("classList", classList);
        return "aboutper";
    }

    /**
     * 公司业绩
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("yejilist")
    public String yejilist(ModelMap model,HttpServletRequest request) {
        String fenlei_id = request.getParameter("fenlei_id");
        YEJI_INFO info = new YEJI_INFO();
        info.setFenlei_id(fenlei_id);
        PaginationHelper<Map> newList = PaginationHelper.createPagination(yejiService.find(info, request));
        model.put("newList", newList);
        return "aboutperlist";
    }

    /**
     * 公司业绩
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("aboutvid")
    public String aboutvid(ModelMap model,HttpServletRequest request) {
        SHIPIN_INFO info = new SHIPIN_INFO();
        PaginationHelper<Map> newList = PaginationHelper.createPagination(shipinService.find(info, request));
        model.put("newList", newList);
        return "aboutvid";
    }

    /**
     * 论文专栏
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("paper")
    public String paper(ModelMap model,HttpServletRequest request) {
        TECH_ZHUANLAN info = new TECH_ZHUANLAN();
        PaginationHelper<Map> newList = PaginationHelper.createPagination(lunwenService.find(info, request));
        model.put("newList", newList);
        return "paper";
    }

    /**
     * 产品资料
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("data")
    public String data(ModelMap model,HttpServletRequest request) {
        return "data";
    }
    /**
     * 知识库
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("know")
    public String know(ModelMap model,HttpServletRequest request) {
        TECH_ZHISHI info = new TECH_ZHISHI();
        PaginationHelper<Map> newList = PaginationHelper.createPagination(zhishiService.find(info, request));
        model.put("newList", newList);
        return "know";
    }
    /**
     * 知识库
     * @param model
     * @return
     */
    @RequestMapping("lunwenDetail")
    public String lunwenDetail(ModelMap model,String id) {
        model.put("info",lunwenService.selectByPk(id));
        return "lunwenDetail";
    }

    /**
     * 知识库
     * @param model
     * @return
     */
    @RequestMapping("newDetail")
    public String newDetail(ModelMap model,String id) {
        model.put("info",newsService.selectByPk(id));
        return "newDetail";
    }

    /**
     * 知识库
     * @param model
     * @return
     */
    @RequestMapping("zhishiDetail")
    public String zhishiDetail(ModelMap model,String id) {
        model.put("info",zhishiService.selectByPk(id));
        return "zhishiDetail";
    }

    /**
     * 知识库
     * @param model
     * @return
     */
    @RequestMapping("job")
    public String job(ModelMap model,String id,HttpServletRequest request) {
        WORK_INFO info = new WORK_INFO();
        info.setId(id);
        model.put("info", workService.find(info,request));
        return "job";
    }

}
