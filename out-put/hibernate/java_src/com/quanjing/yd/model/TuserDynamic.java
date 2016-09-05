/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2016
 */

package com.quanjing.yd.model;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

import javax.validation.constraints.*;
import org.hibernate.validator.constraints.*;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import java.util.List;



import com.quanjing.yd.model.*;
import com.quanjing.yd.vo.query.*;

/**
 * @author xiaolong.tan
 * @version 1.0
 * @since 1.0
 */


@Entity
@Table(name = "t_user_dynamic")
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
	
	@Id @GeneratedValue(generator="custom-id")
	@GenericGenerator(name="custom-id", strategy = "increment")
	@Column(name = "id", unique = true, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getId() {
		return this.id;
	}
	
	@Column(name = "user_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getUserId() {
		return this.userId;
	}
	
	public void setUserId(java.lang.Long value) {
		this.userId = value;
	}
	
	@Column(name = "act", unique = false, nullable = true, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getAct() {
		return this.act;
	}
	
	public void setAct(java.lang.Integer value) {
		this.act = value;
	}
	
	@Column(name = "data_type", unique = false, nullable = true, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getDataType() {
		return this.dataType;
	}
	
	public void setDataType(java.lang.Integer value) {
		this.dataType = value;
	}
	
	@Column(name = "content", unique = false, nullable = false, insertable = true, updatable = true, length = 3000)
	public java.lang.String getContent() {
		return this.content;
	}
	
	public void setContent(java.lang.String value) {
		this.content = value;
	}
	
	@Transient
	public String getCreateTimeString() {
		return DateConvertUtils.format(getCreateTime(), FORMAT_CREATE_TIME);
	}
	public void setCreateTimeString(String value) {
		setCreateTime(DateConvertUtils.parse(value, FORMAT_CREATE_TIME,java.util.Date.class));
	}
	
	@Column(name = "create_time", unique = false, nullable = true, insertable = true, updatable = true, length = 0)
	public java.util.Date getCreateTime() {
		return this.createTime;
	}
	
	public void setCreateTime(java.util.Date value) {
		this.createTime = value;
	}
	
	@Column(name = "address", unique = false, nullable = true, insertable = true, updatable = true, length = 100)
	public java.lang.String getAddress() {
		return this.address;
	}
	
	public void setAddress(java.lang.String value) {
		this.address = value;
	}
	
	@Column(name = "longitude", unique = false, nullable = true, insertable = true, updatable = true, length = 12)
	public java.lang.Float getLongitude() {
		return this.longitude;
	}
	
	public void setLongitude(java.lang.Float value) {
		this.longitude = value;
	}
	
	@Column(name = "latitude", unique = false, nullable = true, insertable = true, updatable = true, length = 12)
	public java.lang.Float getLatitude() {
		return this.latitude;
	}
	
	public void setLatitude(java.lang.Float value) {
		this.latitude = value;
	}
	

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
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
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof TuserDynamic == false) return false;
		if(this == obj) return true;
		TuserDynamic other = (TuserDynamic)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

