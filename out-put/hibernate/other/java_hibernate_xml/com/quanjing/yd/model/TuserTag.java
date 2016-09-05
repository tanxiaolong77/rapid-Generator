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


public class TuserTag extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "TuserTag";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_USER_ID = "userId";
	public static final String ALIAS_TAG = "tag";
	public static final String ALIAS_COUNT = "count";
	public static final String ALIAS_UPDATE_TIME = "updateTime";
	
	//date formats
	public static final String FORMAT_UPDATE_TIME = DATE_FORMAT;
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@NotNull 
	private java.lang.Long userId;
	@NotBlank @Length(max=20)
	private java.lang.String tag;
	@NotNull 
	private java.lang.Long count;
	
	private java.util.Date updateTime;
	//columns END

	public TuserTag(){
	}

	public TuserTag(
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
	public void setTag(java.lang.String value) {
		this.tag = value;
	}
	
	public java.lang.String getTag() {
		return this.tag;
	}
	public void setCount(java.lang.Long value) {
		this.count = value;
	}
	
	public java.lang.Long getCount() {
		return this.count;
	}
	public String getUpdateTimeString() {
		return DateConvertUtils.format(getUpdateTime(), FORMAT_UPDATE_TIME);
	}
	public void setUpdateTimeString(String value) {
		setUpdateTime(DateConvertUtils.parse(value, FORMAT_UPDATE_TIME,java.util.Date.class));
	}
	
	public void setUpdateTime(java.util.Date value) {
		this.updateTime = value;
	}
	
	public java.util.Date getUpdateTime() {
		return this.updateTime;
	}

	public String toString() {
		return new ToStringBuilder(this)
			.append("Id",getId())
			.append("UserId",getUserId())
			.append("Tag",getTag())
			.append("Count",getCount())
			.append("UpdateTime",getUpdateTime())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUserId())
			.append(getTag())
			.append(getCount())
			.append(getUpdateTime())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof TuserTag == false) return false;
		if(this == obj) return true;
		TuserTag other = (TuserTag)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUserId(),other.getUserId())
			.append(getTag(),other.getTag())
			.append(getCount(),other.getCount())
			.append(getUpdateTime(),other.getUpdateTime())
			.isEquals();
	}
}

