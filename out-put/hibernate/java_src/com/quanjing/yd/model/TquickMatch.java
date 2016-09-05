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
@Table(name = "t_quick_match")
public class TquickMatch extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "TquickMatch";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_TEAM1_ID = "team1Id";
	public static final String ALIAS_TEAM2_ID = "team2Id";
	public static final String ALIAS_CREATE_TIME = "createTime";
	public static final String ALIAS_CREATOR = "creator";
	public static final String ALIAS_STATUS = "status";
	
	//date formats
	public static final String FORMAT_CREATE_TIME = DATE_FORMAT;
	

	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@NotNull 
	private java.lang.Long team1Id;
	@NotNull 
	private java.lang.Long team2Id;
	
	private java.util.Date createTime;
	
	private java.lang.Long creator;
	
	private java.lang.Integer status;
	//columns END


	public TquickMatch(){
	}

	public TquickMatch(
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
	
	@Column(name = "team1_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getTeam1Id() {
		return this.team1Id;
	}
	
	public void setTeam1Id(java.lang.Long value) {
		this.team1Id = value;
	}
	
	@Column(name = "team2_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getTeam2Id() {
		return this.team2Id;
	}
	
	public void setTeam2Id(java.lang.Long value) {
		this.team2Id = value;
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
	
	@Column(name = "creator", unique = false, nullable = true, insertable = true, updatable = true, length = 19)
	public java.lang.Long getCreator() {
		return this.creator;
	}
	
	public void setCreator(java.lang.Long value) {
		this.creator = value;
	}
	
	@Column(name = "status", unique = false, nullable = true, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getStatus() {
		return this.status;
	}
	
	public void setStatus(java.lang.Integer value) {
		this.status = value;
	}
	

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("Team1Id",getTeam1Id())
			.append("Team2Id",getTeam2Id())
			.append("CreateTime",getCreateTime())
			.append("Creator",getCreator())
			.append("Status",getStatus())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof TquickMatch == false) return false;
		if(this == obj) return true;
		TquickMatch other = (TquickMatch)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

