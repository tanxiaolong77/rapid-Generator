/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2016
 */

package com.quanjing.yd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.quanjing.platform.service.base.EntityDao;
import	com.quanjing.platform.service.base.EntityService;
import java.util.List;



import com.quanjing.yd.model.*;
import com.quanjing.yd.vo.query.*;

/**
 * @author xiaolong.tan
 * @version 1.0
 * @since 1.0
 */



@Service("TopenAppLogService")
public class TopenAppLogServiceImpl extends BaseService<TopenAppLog,java.lang.Long> implements TopenAppLogService {
	
	@Autowired
	private TopenAppLogDao TopenAppLogDao;
	
	public EntityDao getEntityDao() {
		return this.TopenAppLogDao;
	}
	
	public PageInfo findPage(TopenAppLogQuery query){
		PageHelper.startPage(query);
		return new PageInfo(TopenAppLogDao.findPage(query));
	}

}
