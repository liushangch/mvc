package ${packagePath}.service.${packageName}.${objectNameLower};

import com.fh.util.StringUtil;
import com.fh.util.Tools;
import com.ihealthtek.ed.common.util.CommonUtil;
import org.springframework.stereotype.Service;

import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.util.PageData;

import javax.annotation.Resource;
import java.util.*;

@Service("${objectNameLower}Service")
public class ${objectName}Service {
	@Resource(name = "daoSupport")
	private DaoSupport dao;

	/**
	 * 新增
	 */
	public void save(PageData pd) throws Exception {
pd.put("id", StringUtil.isNullOrEmpty(pd.getString("id")) ? CommonUtil.nextId() : pd.getString("id"));
        pd.put("create_time", Tools.date2Str(new Date()));    //创建时间
        pd.put("update_time", Tools.date2Str(new Date()));    //修改时间
		dao.save("${objectName}Mapper.save", pd);
	}

	/**
	 * 删除
	 */
	public void delete(PageData pd) throws Exception {
		dao.delete("${objectName}Mapper.delete", pd);
	}

	/**
	 * 修改
	 */
	public void edit(PageData pd) throws Exception {
        pd.put("update_time", Tools.date2Str(new Date()));    //修改时间
		dao.update("${objectName}Mapper.edit", pd);
	}

	/**
	 * 列表
	 */
	public List<PageData> list(Page page) throws Exception {
		return (List<PageData>) dao.findForList("${objectName}Mapper.datalistPage", page);
	}

	/**
	 * 列表(全部)
	 */
	public List<PageData> listAll(PageData pd) throws Exception {
		return (List<PageData>) dao.findForList("${objectName}Mapper.listAll", pd);
	}

	/**
	 * 通过id获取数据
	 */
	public PageData findById(PageData pd) throws Exception {
		return (PageData) dao.findForObject("${objectName}Mapper.findById", pd);
	}

	/**
	 * 批量删除
	 */
	public void deleteAll(String[] ids) throws Exception {
		dao.delete("${objectName}Mapper.deleteAll", ids);
	}

    /**
     * 补入字典类型
     */
    public PageData addDictionaryType(PageData pd) throws Exception {
    	if (pd != null) {
    		Map<String, Object> mapValue = new HashMap<>(16);
            //----------补入医生----------
            //redisService.getRedisName(pd, mapValue, "key_key", "keyKey", DoctorInfoService.commonBean);
            //----------补入现住址-地区字典----------
            //mapValue.put("keyKey", DictionriesCache.getComDicStr(pd.getString("key_key")));
    		pd.put("mapValue", mapValue);
    	}
    	return pd;
    }

    /**
     * 补入字典类型
     */
    public List<PageData> addDictionaryType(List<PageData> pdList) throws Exception {
    	for (PageData pd : pdList) {
        	addDictionaryType(pd);
    	}
        return pdList;
    }
}

