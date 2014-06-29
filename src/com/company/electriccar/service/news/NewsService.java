package com.company.electriccar.service.news;

import com.company.electriccar.domain.NEW_INFO;
import com.company.modules.dao.BaseDao;
import com.company.modules.dao.SqlParameter;
import com.company.modules.utils.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.Map;

/**
 * Created by zxl on 14-6-22.
 */
@Service
public class NewsService {
    @Autowired
    private BaseDao baseDao;
    public void add(NEW_INFO user) {
        if (StringUtil.isBlank(user.getId())) {

        user.setCreate_time(new Date().getTime());
        }
        user.insertOrUpdate();
    }

    public Map selectByPk(String id) {
        return
        baseDao.queryForMap("select * from NEW_INFO where id ='" + id + "'");
    }

    public void deleteById(String id) {
        NEW_INFO zhuanlan = new NEW_INFO();
        zhuanlan.setId(id);
        zhuanlan.deleteById();
    }

    public Map find(NEW_INFO zhuan, HttpServletRequest request) {
        StringBuffer buffer = new StringBuffer("select * from NEW_INFO where 1=1 ");
        if (StringUtil.isNotBlank(zhuan.getTitle())) {
            buffer.append(" and title like '%").append(zhuan.getTitle()).append("%'");
        }
        Map resultMap= baseDao.queryForDataGrid(request,buffer.toString(), new SqlParameter());
        return resultMap;
    }
}
