/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2016
 */

package com.quanjing.yd.dao;

import java.util.List;



import com.quanjing.yd.model.*;
import com.quanjing.yd.vo.query.*;

/**
 * @author xiaolong.tan
 * @version 1.0
 * @since 1.0
 */


import org.springframework.stereotype.Repository;

@Repository
public class TinvitationDao extends BaseHibernateDao<Tinvitation,java.lang.Long>{

	public Class getEntityClass() {
		return Tinvitation.class;
	}
	
	public Page findPage(TinvitationQuery query) {
        //XsqlBuilder syntax,please see http://code.google.com/p/rapid-xsqlbuilder
        // [column]为字符串拼接, {column}为使用占位符. [column]为使用字符串拼接,如username='[username]',偷懒时可以使用字符串拼接 
        // [column] 为PageRequest的属性
		String sql = "select t from Tinvitation t where 1=1 "
			  	+ "/~ and t.sendId = {sendId} ~/"
			  	+ "/~ and t.receiveId = {receiveId} ~/"
			  	+ "/~ and t.type = {type} ~/"
			  	+ "/~ and t.status = {status} ~/"
				+ "/~ and t.createTime >= {createTimeBegin} ~/"
				+ "/~ and t.createTime <= {createTimeEnd} ~/"
				+ "/~ order by [sortColumns] ~/";
		return pageQuery(sql,query);
	}
	

}
