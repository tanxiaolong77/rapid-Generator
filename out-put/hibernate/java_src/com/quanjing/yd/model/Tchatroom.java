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
@Table(name = "t_chatroom")
public class Tchatroom extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "Tchatroom";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_NAME = "聊天室名称";
	public static final String ALIAS_SOURCE_TYPE = "1：offer，2：活动，3：速配";
	public static final String ALIAS_SOURCE_ID = "来源id";
	public static final String ALIAS_STATUS = "0：有效，1：无效";
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
	
	@Id @GeneratedValue(generator="custom-id")
	@GenericGenerator(name="custom-id", strategy = "increment")
	@Column(name = "id", unique = true, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getId() {
		return this.id;
	}
	
	@Column(name = "name", unique = false, nullable = true, insertable = true, updatable = true, length = 30)
	public java.lang.String getName() {
		return this.name;
	}
	
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	@Column(name = "source_type", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getSourceType() {
		return this.sourceType;
	}
	
	public void setSourceType(java.lang.Integer value) {
		this.sourceType = value;
	}
	
	@Column(name = "source_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getSourceId() {
		return this.sourceId;
	}
	
	public void setSourceId(java.lang.Long value) {
		this.sourceId = value;
	}
	
	@Column(name = "status", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getStatus() {
		return this.status;
	}
	
	public void setStatus(java.lang.Integer value) {
		this.status = value;
	}
	
	@Transient
	public String getCreateTimeString() {
		return DateConvertUtils.format(getCreateTime(), FORMAT_CREATE_TIME);
	}
	public void setCreateTimeString(String value) {
		setCreateTime(DateConvertUtils.parse(value, FORMAT_CREATE_TIME,java.util.Date.class));
	}
	
	@Column(name = "create_time", unique = false, nullable = false, insertable = true, updatable = true, length = 0)
	public java.util.Date getCreateTime() {
		return this.createTime;
	}
	
	public void setCreateTime(java.util.Date value) {
		this.createTime = value;
	}
	

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
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
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Tchatroom == false) return false;
		if(this == obj) return true;
		Tchatroom other = (Tchatroom)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

