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
@Table(name = "t_activity_join")
public class TactivityJoin extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "TactivityJoin";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_ACTIVITY_ID = "关联活动的Id";
	public static final String ALIAS_TEAM_ID = "想要参加活动的TeamId";
	public static final String ALIAS_CREATE_TIME = "创建时间:点击加入的时间";
	public static final String ALIAS_END_TIME = "活动结束时间";
	public static final String ALIAS_CREATOR_ID = "creatorId";
	public static final String ALIAS_USER_ID = "创建用户id";
	public static final String ALIAS_STATUS = "0：待确认 1：已确认 -1:拒绝  300已评价";
	
	//date formats
	public static final String FORMAT_CREATE_TIME = DATE_FORMAT;
	public static final String FORMAT_END_TIME = DATE_FORMAT;
	

	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@NotNull 
	private java.lang.Long activityId;
	
	private java.lang.Long teamId;
	@NotNull 
	private java.util.Date createTime;
	
	private java.util.Date endTime;
	
	private java.lang.Long creatorId;
	
	private java.lang.Long userId;
	@NotNull 
	private java.lang.Integer status;
	//columns END


	public TactivityJoin(){
	}

	public TactivityJoin(
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
	
	@Column(name = "activity_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getActivityId() {
		return this.activityId;
	}
	
	public void setActivityId(java.lang.Long value) {
		this.activityId = value;
	}
	
	@Column(name = "team_id", unique = false, nullable = true, insertable = true, updatable = true, length = 19)
	public java.lang.Long getTeamId() {
		return this.teamId;
	}
	
	public void setTeamId(java.lang.Long value) {
		this.teamId = value;
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
	
	@Transient
	public String getEndTimeString() {
		return DateConvertUtils.format(getEndTime(), FORMAT_END_TIME);
	}
	public void setEndTimeString(String value) {
		setEndTime(DateConvertUtils.parse(value, FORMAT_END_TIME,java.util.Date.class));
	}
	
	@Column(name = "end_time", unique = false, nullable = true, insertable = true, updatable = true, length = 0)
	public java.util.Date getEndTime() {
		return this.endTime;
	}
	
	public void setEndTime(java.util.Date value) {
		this.endTime = value;
	}
	
	@Column(name = "creator_id", unique = false, nullable = true, insertable = true, updatable = true, length = 19)
	public java.lang.Long getCreatorId() {
		return this.creatorId;
	}
	
	public void setCreatorId(java.lang.Long value) {
		this.creatorId = value;
	}
	
	@Column(name = "user_id", unique = false, nullable = true, insertable = true, updatable = true, length = 19)
	public java.lang.Long getUserId() {
		return this.userId;
	}
	
	public void setUserId(java.lang.Long value) {
		this.userId = value;
	}
	
	@Column(name = "status", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getStatus() {
		return this.status;
	}
	
	public void setStatus(java.lang.Integer value) {
		this.status = value;
	}
	

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("ActivityId",getActivityId())
			.append("TeamId",getTeamId())
			.append("CreateTime",getCreateTime())
			.append("EndTime",getEndTime())
			.append("CreatorId",getCreatorId())
			.append("UserId",getUserId())
			.append("Status",getStatus())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof TactivityJoin == false) return false;
		if(this == obj) return true;
		TactivityJoin other = (TactivityJoin)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

