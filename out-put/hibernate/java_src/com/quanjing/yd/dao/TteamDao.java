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
public class TteamDao extends BaseHibernateDao<Tteam,java.lang.Long>{

	public Class getEntityClass() {
		return Tteam.class;
	}
	
	public Page findPage(TteamQuery query) {
        //XsqlBuilder syntax,please see http://code.google.com/p/rapid-xsqlbuilder
        // [column]为字符串拼接, {column}为使用占位符. [column]为使用字符串拼接,如username='[username]',偷懒时可以使用字符串拼接 
        // [column] 为PageRequest的属性
		String sql = "select t from Tteam t where 1=1 "
			  	+ "/~ and t.user1Id = {user1Id} ~/"
			  	+ "/~ and t.user2Id = {user2Id} ~/"
			  	+ "/~ and t.type = {type} ~/"
			  	+ "/~ and t.cityId = {cityId} ~/"
			  	+ "/~ and t.address = {address} ~/"
			  	+ "/~ and t.payType = {payType} ~/"
			  	+ "/~ and t.freeTime = {freeTime} ~/"
			  	+ "/~ and t.haunt = {haunt} ~/"
			  	+ "/~ and t.status = {status} ~/"
				+ "/~ and t.createTime >= {createTimeBegin} ~/"
				+ "/~ and t.createTime <= {createTimeEnd} ~/"
			  	+ "/~ and t.star = {star} ~/"
			  	+ "/~ and t.temp = {temp} ~/"
			  	+ "/~ and t.signature = {signature} ~/"
			  	+ "/~ and t.freeDay = {freeDay} ~/"
			  	+ "/~ and t.food = {food} ~/"
			  	+ "/~ and t.alcohol = {alcohol} ~/"
			  	+ "/~ and t.teamGender = {teamGender} ~/"
			  	+ "/~ and t.partyTime = {partyTime} ~/"
			  	+ "/~ and t.fee = {fee} ~/"
			  	+ "/~ and t.palPurpose = {palPurpose} ~/"
				+ "/~ order by [sortColumns] ~/";
		return pageQuery(sql,query);
	}
	

}
