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


public class TopenAppLog extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "TopenAppLog";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_USER_ID = "userId";
	public static final String ALIAS_CREATE_TIME = "createTime";
	public static final String ALIAS_DATE = "date";
	
	//date formats
	public static final String FORMAT_CREATE_TIME = DATE_FORMAT;
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@NotNull 
	private java.lang.Long userId;
	@NotNull 
	private java.util.Date createTime;
	@NotBlank @Length(max=25)
	private java.lang.String date;
	//columns END

	public TopenAppLog(){
	}

	public TopenAppLog(
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
	public void setDate(java.lang.String value) {
		this.date = value;
	}
	
	public java.lang.String getDate() {
		return this.date;
	}

	public String toString() {
		return new ToStringBuilder(this)
			.append("Id",getId())
			.append("UserId",getUserId())
			.append("CreateTime",getCreateTime())
			.append("Date",getDate())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUserId())
			.append(getCreateTime())
			.append(getDate())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof TopenAppLog == false) return false;
		if(this == obj) return true;
		TopenAppLog other = (TopenAppLog)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUserId(),other.getUserId())
			.append(getCreateTime(),other.getCreateTime())
			.append(getDate(),other.getDate())
			.isEquals();
	}
}

