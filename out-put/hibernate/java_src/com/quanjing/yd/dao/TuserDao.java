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
public class TuserDao extends BaseHibernateDao<Tuser,java.lang.Long>{

	public Class getEntityClass() {
		return Tuser.class;
	}
	
	public Page findPage(TuserQuery query) {
        //XsqlBuilder syntax,please see http://code.google.com/p/rapid-xsqlbuilder
        // [column]为字符串拼接, {column}为使用占位符. [column]为使用字符串拼接,如username='[username]',偷懒时可以使用字符串拼接 
        // [column] 为PageRequest的属性
		String sql = "select t from Tuser t where 1=1 "
			  	+ "/~ and t.nickName = {nickName} ~/"
			  	+ "/~ and t.username = {username} ~/"
			  	+ "/~ and t.password = {password} ~/"
			  	+ "/~ and t.phone = {phone} ~/"
			  	+ "/~ and t.name = {name} ~/"
			  	+ "/~ and t.gender = {gender} ~/"
			  	+ "/~ and t.type = {type} ~/"
			  	+ "/~ and t.schoolId = {schoolId} ~/"
			  	+ "/~ and t.schoolName = {schoolName} ~/"
			  	+ "/~ and t.subject = {subject} ~/"
			  	+ "/~ and t.industry = {industry} ~/"
			  	+ "/~ and t.company = {company} ~/"
			  	+ "/~ and t.position = {position} ~/"
				+ "/~ and t.birthday >= {birthdayBegin} ~/"
				+ "/~ and t.birthday <= {birthdayEnd} ~/"
			  	+ "/~ and t.avatar = {avatar} ~/"
			  	+ "/~ and t.emotional = {emotional} ~/"
			  	+ "/~ and t.signature = {signature} ~/"
			  	+ "/~ and t.homeTown = {homeTown} ~/"
			  	+ "/~ and t.interest = {interest} ~/"
			  	+ "/~ and t.star = {star} ~/"
			  	+ "/~ and t.truthInfoStar = {truthInfoStar} ~/"
			  	+ "/~ and t.friendlyStar = {friendlyStar} ~/"
			  	+ "/~ and t.appearStar = {appearStar} ~/"
				+ "/~ and t.createTime >= {createTimeBegin} ~/"
				+ "/~ and t.createTime <= {createTimeEnd} ~/"
			  	+ "/~ and t.status = {status} ~/"
				+ "/~ and t.lastLoginTime >= {lastLoginTimeBegin} ~/"
				+ "/~ and t.lastLoginTime <= {lastLoginTimeEnd} ~/"
				+ "/~ order by [sortColumns] ~/";
		return pageQuery(sql,query);
	}
	
	public Tuser getByUsername(java.lang.String v) {
		return (Tuser) findByProperty("username",v);
	}	

}
