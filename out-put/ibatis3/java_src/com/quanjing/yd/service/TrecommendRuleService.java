/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2016
 */

package com.quanjing.yd.service;

import java.util.List;



import com.quanjing.yd.model.*;
import com.quanjing.yd.vo.query.*;

/**
 * @author xiaolong.tan
 * @version 1.0
 * @since 1.0
 */

import	com.quanjing.platform.service.base.EntityService;
import com.github.pagehelper.PageInfo;


public interface TrecommendRuleService extends EntityService<TrecommendRule,java.lang.Integer>{
	
	
	public PageInfo findPage(TrecommendRuleQuery query);
	

}
