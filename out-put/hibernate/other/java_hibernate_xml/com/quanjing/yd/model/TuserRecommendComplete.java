/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2016
 */

package com.quanjing.yd.model;

import javax.validation.constraints.*;
import org.hibernate.validator.constraints.*;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;

import java.util.List;



import com.quanjing.yd.model.*;
import com.quanjing.yd.vo.query.*;

/**
 * @author xiaolong.tan
 * @version 1.0
 * @since 1.0
 */


public class TuserRecommendComplete extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "TuserRecommendComplete";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_USER_ID = "userId";
	public static final String ALIAS_RECOMMEND_RULE_ID = "recommendRuleId";
	public static final String ALIAS_CREATE_TIME = "createTime";
	
	//date formats
	public static final String FORMAT_CREATE_TIME = DATE_FORMAT;
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@NotNull 
	private java.lang.Long userId;
	@NotNull 
	private java.lang.Integer recommendRuleId;
	@NotNull 
	private java.util.Date createTime;
	//columns END

	public TuserRecommendComplete(){
	}

	public TuserRecommendComplete(
		java.lang.Long id
	){
		this.id = id;
	}

	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	public java.lang.Long getId() {
		return this.id;
	}
	public void setUserId(java.lang.Long value) {
		this.userId = value;
	}
	
	public java.lang.Long getUserId() {
		return this.userId;
	}
	public void setRecommendRuleId(java.lang.Integer value) {
		this.recommendRuleId = value;
	}
	
	public java.lang.Integer getRecommendRuleId() {
		return this.recommendRuleId;
	}
	public String getCreateTimeString() {
		return DateConvertUtils.format(getCreateTime(), FORMAT_CREATE_TIME);
	}
	public void setCreateTimeString(String value) {
		setCreateTime(DateConvertUtils.parse(value, FORMAT_CREATE_TIME,java.util.Date.class));
	}
	
	public void setCreateTime(java.util.Date value) {
		this.createTime = value;
	}
	
	public java.util.Date getCreateTime() {
		return this.createTime;
	}

	public String toString() {
		return new ToStringBuilder(this)
			.append("Id",getId())
			.append("UserId",getUserId())
			.append("RecommendRuleId",getRecommendRuleId())
			.append("CreateTime",getCreateTime())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUserId())
			.append(getRecommendRuleId())
			.append(getCreateTime())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof TuserRecommendComplete == false) return false;
		if(this == obj) return true;
		TuserRecommendComplete other = (TuserRecommendComplete)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUserId(),other.getUserId())
			.append(getRecommendRuleId(),other.getRecommendRuleId())
			.append(getCreateTime(),other.getCreateTime())
			.isEquals();
	}
}

