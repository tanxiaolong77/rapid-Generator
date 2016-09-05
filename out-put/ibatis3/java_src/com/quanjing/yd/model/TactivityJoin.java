/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2016
 */

package com.quanjing.yd.model;

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


public class TactivityJoin implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	/** id **/
	private java.lang.Long id;
	/** 关联活动的Id **/
	private java.lang.Long activityId;
	/** 想要参加活动的TeamId **/
	private java.lang.Long teamId;
	/** 创建时间:点击加入的时间 **/
	private java.util.Date createTime;
	/** 活动结束时间 **/
	private java.util.Date endTime;
	/** creatorId **/
	private java.lang.Long creatorId;
	/** 创建用户id **/
	private java.lang.Long userId;
	/** 0：待确认 1：已确认 -1:拒绝  300已评价 **/
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
	
	public java.lang.Long getId() {
		return this.id;
	}

	public void setActivityId(java.lang.Long value) {
		this.activityId = value;
	}
	
	public java.lang.Long getActivityId() {
		return this.activityId;
	}

	public void setTeamId(java.lang.Long value) {
		this.teamId = value;
	}
	
	public java.lang.Long getTeamId() {
		return this.teamId;
	}

	public void setCreateTime(java.util.Date value) {
		this.createTime = value;
	}
	
	public java.util.Date getCreateTime() {
		return this.createTime;
	}

	public void setEndTime(java.util.Date value) {
		this.endTime = value;
	}
	
	public java.util.Date getEndTime() {
		return this.endTime;
	}

	public void setCreatorId(java.lang.Long value) {
		this.creatorId = value;
	}
	
	public java.lang.Long getCreatorId() {
		return this.creatorId;
	}

	public void setUserId(java.lang.Long value) {
		this.userId = value;
	}
	
	public java.lang.Long getUserId() {
		return this.userId;
	}

	public void setStatus(java.lang.Integer value) {
		this.status = value;
	}
	
	public java.lang.Integer getStatus() {
		return this.status;
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

