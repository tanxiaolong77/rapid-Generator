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
public class TestDao extends BaseHibernateDao<Test,java.lang.Integer>{

	public Class getEntityClass() {
		return Test.class;
	}
	
	public Page findPage(TestQuery query) {
        //XsqlBuilder syntax,please see http://code.google.com/p/rapid-xsqlbuilder
        // [column]为字符串拼接, {column}为使用占位符. [column]为使用字符串拼接,如username='[username]',偷懒时可以使用字符串拼接 
        // [column] 为PageRequest的属性
		String sql = "select t from Test t where 1=1 "
			  	+ "/~ and t.name = {name} ~/"
			  	+ "/~ and t.pnt = {pnt} ~/"
			  	+ "/~ and t.line = {line} ~/"
			  	+ "/~ and t.pgn = {pgn} ~/"
				+ "/~ order by [sortColumns] ~/";
		return pageQuery(sql,query);
	}
	

}
