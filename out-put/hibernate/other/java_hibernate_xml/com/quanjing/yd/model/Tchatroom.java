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


public class Tchatroom extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "Tchatroom";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_NAME = "name";
	public static final String ALIAS_SOURCE_TYPE = "sourceType";
	public static final String ALIAS_SOURCE_ID = "sourceId";
	public static final String ALIAS_STATUS = "status";
	public static final String ALIAS_CREATE_TIME = "createTime";
	
	//date formats
	public static final String FORMAT_CREATE_TIME = DATE_FORMAT;
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@Length(max=30)
	private java.lang.String name;
	@NotNull 
	private java.lang.Integer sourceType;
	@NotNull 
	private java.lang.Long sourceId;
	@NotNull 
	private java.lang.Integer status;
	@NotNull 
	private java.util.Date createTime;
	//columns END

	public Tchatroom(){
	}

	public Tchatroom(
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
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	public java.lang.String getName() {
		return this.name;
	}
	public void setSourceType(java.lang.Integer value) {
		this.sourceType = value;
	}
	
	public java.lang.Integer getSourceType() {
		return this.sourceType;
	}
	public void setSourceId(java.lang.Long value) {
		this.sourceId = value;
	}
	
	public java.lang.Long getSourceId() {
		return this.sourceId;
	}
	public void setStatus(java.lang.Integer value) {
		this.status = value;
	}
	
	public java.lang.Integer getStatus() {
		return this.status;
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
			.append("Name",getName())
			.append("SourceType",getSourceType())
			.append("SourceId",getSourceId())
			.append("Status",getStatus())
			.append("CreateTime",getCreateTime())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getName())
			.append(getSourceType())
			.append(getSourceId())
			.append(getStatus())
			.append(getCreateTime())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Tchatroom == false) return false;
		if(this == obj) return true;
		Tchatroom other = (Tchatroom)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getName(),other.getName())
			.append(getSourceType(),other.getSourceType())
			.append(getSourceId(),other.getSourceId())
			.append(getStatus(),other.getStatus())
			.append(getCreateTime(),other.getCreateTime())
			.isEquals();
	}
}

