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
public class TactivityDao extends BaseHibernateDao<Tactivity,java.lang.Long>{

	public Class getEntityClass() {
		return Tactivity.class;
	}
	
	public Page findPage(TactivityQuery query) {
        //XsqlBuilder syntax,please see http://code.google.com/p/rapid-xsqlbuilder
        // [column]为字符串拼接, {column}为使用占位符. [column]为使用字符串拼接,如username='[username]',偷懒时可以使用字符串拼接 
        // [column] 为PageRequest的属性
		String sql = "select t from Tactivity t where 1=1 "
			  	+ "/~ and t.creatorId = {creatorId} ~/"
			  	+ "/~ and t.userId = {userId} ~/"
			  	+ "/~ and t.teamId = {teamId} ~/"
			  	+ "/~ and t.type = {type} ~/"
			  	+ "/~ and t.title = {title} ~/"
			  	+ "/~ and t.introduce = {introduce} ~/"
			  	+ "/~ and t.link = {link} ~/"
			  	+ "/~ and t.cityId = {cityId} ~/"
			  	+ "/~ and t.address = {address} ~/"
			  	+ "/~ and t.require = {require} ~/"
				+ "/~ and t.startTime >= {startTimeBegin} ~/"
				+ "/~ and t.startTime <= {startTimeEnd} ~/"
				+ "/~ and t.createTime >= {createTimeBegin} ~/"
				+ "/~ and t.createTime <= {createTimeEnd} ~/"
				+ "/~ and t.endTime >= {endTimeBegin} ~/"
				+ "/~ and t.endTime <= {endTimeEnd} ~/"
			  	+ "/~ and t.fee = {fee} ~/"
			  	+ "/~ and t.viewCount = {viewCount} ~/"
			  	+ "/~ and t.status = {status} ~/"
			  	+ "/~ and t.lng = {lng} ~/"
			  	+ "/~ and t.lat = {lat} ~/"
			  	+ "/~ and t.payType = {payType} ~/"
			  	+ "/~ and t.gender = {gender} ~/"
				+ "/~ order by [sortColumns] ~/";
		return pageQuery(sql,query);
	}
	

}
