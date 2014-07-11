package com.company.electriccar.service.product;

import com.company.electriccar.domain.CHANPIN_INFO;
import com.company.modules.dao.BaseDao;
import com.company.modules.dao.SqlParameter;
import com.company.modules.upload.UpLoadContext;
import com.company.modules.upload.UploadResource;
import com.company.modules.utils.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by zxl on 14-6-22.
 */
@Service
public class ProductService {
    @Autowired
    private BaseDao baseDao;

    public void add(CHANPIN_INFO user, MultipartHttpServletRequest request) {
        if (StringUtil.isBlank(user.getId())) {

        user.setCreate_time(new Date().getTime());
        }
        MultipartFile attaFile = request.getFile("atta");
        if (attaFile != null && !attaFile.isEmpty()) {
            UpLoadContext upLoad = new UpLoadContext(
                    new UploadResource());
            String url = upLoad.uploadFile(attaFile, null);
            String fileName = attaFile.getOriginalFilename();
            user.setAtta_name(fileName);
            user.setAtta_path(url);
        }
        user.insertOrUpdate();

        List<MultipartFile>  mFiles = request.getFiles("file");
        List<SqlParameter> sqlParameters = new ArrayList<SqlParameter>();
        for(MultipartFile mFile:mFiles) {
            SqlParameter sqlParameter = new SqlParameter();
            if (mFile != null && !mFile.isEmpty()) {
                UpLoadContext upLoad = new UpLoadContext(
                        new UploadResource());
                String url = upLoad.uploadFile(mFile, null);
                String fileName = mFile.getOriginalFilename();
                sqlParameter.addValue("name", fileName).addValue("url",url)
                        .addValue("chanpin_id",user.getId()).addValue("id",StringUtil.getUUID());
                sqlParameters.add(sqlParameter);
            }
        }


        if (!sqlParameters.isEmpty()) {
            baseDao.executeBatch("insert into chanpin_file(id,path,name,chanpin_id) values(:id,:url,:name,:chanpin_id)", sqlParameters);
        }

    }

    public Map selectByPk(String id) {
        return
        baseDao.queryForMap("select * from CHANPIN_INFO where id ='" + id + "'");
    }

    public void deleteById(String id) {
        CHANPIN_INFO zhuanlan = new CHANPIN_INFO();
        zhuanlan.setId(id);
        zhuanlan.deleteById();
    }

    public Map find(CHANPIN_INFO zhuan, HttpServletRequest request) {
        StringBuffer buffer = new StringBuffer("select * from CHANPIN_INFO where 1=1 ");
        if (StringUtil.isNotBlank(zhuan.getName())) {
            buffer.append(" and name like '%").append(zhuan.getName()).append("%'");
        }
        if (StringUtil.isNotBlank(zhuan.getFenlei_id())) {
            buffer.append(" and fenlei_id = '").append(zhuan.getFenlei_id()).append("'");
        }
        buffer.append(" order by order_no,create_time desc");
        Map resultMap= baseDao.queryForDataGrid(request,buffer.toString(), new SqlParameter());
        return resultMap;
    }

    public String getLastestPic() {
        String sql = "SELECT atta_path FROM chanpin_info WHERE create_time=(SELECT MAX(create_time) FROM chanpin_info)";
        return baseDao.queryForString(sql);
    }

    public List<Map> findProduct(String id) {
        List<Map> mapList = baseDao.queryForList("select id,name from chanpin_fenlei where up_id='" + id + "' order by order_no,create_time desc");
        for (Map map : mapList) {
           List<Map> chanList = baseDao.queryForList("select id,name,des from chanpin_info where fenlei_id='" + map.get("id") + "'");
            map.put("chird", chanList);
        }
        return mapList;
    }

    public List<Map> selectFiles(String id) {
        return baseDao.queryForList("select * from chanpin_file where chanpin_id ='"+id+"'");
    }
}
