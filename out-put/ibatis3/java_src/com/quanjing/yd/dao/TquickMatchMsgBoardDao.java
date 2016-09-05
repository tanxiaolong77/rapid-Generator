/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2016
 */

package com.quanjing.yd.dao;

import	com.quanjing.platform.service.base.EntityDao;
import org.springframework.stereotype.Repository;
import java.util.List;


public interface TquickMatchMsgBoardDao extends EntityDao<TquickMatchMsgBoard,java.lang.Long>{
	
	
	public List findPage(TquickMatchMsgBoardQuery query);
	

}
