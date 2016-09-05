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


public class Tinvitation extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "Tinvitation";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_SEND_ID = "sendId";
	public static final String ALIAS_RECEIVE_ID = "receiveId";
	public static final String ALIAS_TYPE = "type";
	public static final String ALIAS_STATUS = "status";
	public static final String ALIAS_CREATE_TIME = "createTime";
	
	//date formats
	public static final String FORMAT_CREATE_TIME = DATE_FORMAT;
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@NotNull 
	private java.lang.Long sendId;
	
	private java.lang.Long receiveId;
	
	private java.lang.Integer type;
	
	private java.lang.Integer status;
	
	private java.util.Date createTime;
	//columns END

	public Tinvitation(){
	}

	public Tinvitation(
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
	public void setSendId(java.lang.Long value) {
		this.sendId = value;
	}
	
	public java.lang.Long getSendId() {
		return this.sendId;
	}
	public void setReceiveId(java.lang.Long value) {
		this.receiveId = value;
	}
	
	public java.lang.Long getReceiveId() {
		return this.receiveId;
	}
	public void setType(java.lang.Integer value) {
		this.type = value;
	}
	
	public java.lang.Integer getType() {
		return this.type;
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
			.append("SendId",getSendId())
			.append("ReceiveId",getReceiveId())
			.append("Type",getType())
			.append("Status",getStatus())
			.append("CreateTime",getCreateTime())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getSendId())
			.append(getReceiveId())
			.append(getType())
			.append(getStatus())
			.append(getCreateTime())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Tinvitation == false) return false;
		if(this == obj) return true;
		Tinvitation other = (Tinvitation)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getSendId(),other.getSendId())
			.append(getReceiveId(),other.getReceiveId())
			.append(getType(),other.getType())
			.append(getStatus(),other.getStatus())
			.append(getCreateTime(),other.getCreateTime())
			.isEquals();
	}
}

