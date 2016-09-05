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


public class TuserDynamic extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "TuserDynamic";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_USER_ID = "userId";
	public static final String ALIAS_ACT = "act";
	public static final String ALIAS_DATA_TYPE = "dataType";
	public static final String ALIAS_CONTENT = "content";
	public static final String ALIAS_CREATE_TIME = "createTime";
	public static final String ALIAS_ADDRESS = "address";
	public static final String ALIAS_LONGITUDE = "longitude";
	public static final String ALIAS_LATITUDE = "latitude";
	
	//date formats
	public static final String FORMAT_CREATE_TIME = DATE_FORMAT;
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@NotNull 
	private java.lang.Long userId;
	
	private java.lang.Integer act;
	
	private java.lang.Integer dataType;
	@NotBlank @Length(max=3000)
	private java.lang.String content;
	
	private java.util.Date createTime;
	@Length(max=100)
	private java.lang.String address;
	
	private java.lang.Float longitude;
	
	private java.lang.Float latitude;
	//columns END

	public TuserDynamic(){
	}

	public TuserDynamic(
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
	public void setAct(java.lang.Integer value) {
		this.act = value;
	}
	
	public java.lang.Integer getAct() {
		return this.act;
	}
	public void setDataType(java.lang.Integer value) {
		this.dataType = value;
	}
	
	public java.lang.Integer getDataType() {
		return this.dataType;
	}
	public void setContent(java.lang.String value) {
		this.content = value;
	}
	
	public java.lang.String getContent() {
		return this.content;
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
	public void setAddress(java.lang.String value) {
		this.address = value;
	}
	
	public java.lang.String getAddress() {
		return this.address;
	}
	public void setLongitude(java.lang.Float value) {
		this.longitude = value;
	}
	
	public java.lang.Float getLongitude() {
		return this.longitude;
	}
	public void setLatitude(java.lang.Float value) {
		this.latitude = value;
	}
	
	public java.lang.Float getLatitude() {
		return this.latitude;
	}

	public String toString() {
		return new ToStringBuilder(this)
			.append("Id",getId())
			.append("UserId",getUserId())
			.append("Act",getAct())
			.append("DataType",getDataType())
			.append("Content",getContent())
			.append("CreateTime",getCreateTime())
			.append("Address",getAddress())
			.append("Longitude",getLongitude())
			.append("Latitude",getLatitude())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUserId())
			.append(getAct())
			.append(getDataType())
			.append(getContent())
			.append(getCreateTime())
			.append(getAddress())
			.append(getLongitude())
			.append(getLatitude())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof TuserDynamic == false) return false;
		if(this == obj) return true;
		TuserDynamic other = (TuserDynamic)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUserId(),other.getUserId())
			.append(getAct(),other.getAct())
			.append(getDataType(),other.getDataType())
			.append(getContent(),other.getContent())
			.append(getCreateTime(),other.getCreateTime())
			.append(getAddress(),other.getAddress())
			.append(getLongitude(),other.getLongitude())
			.append(getLatitude(),other.getLatitude())
			.isEquals();
	}
}

