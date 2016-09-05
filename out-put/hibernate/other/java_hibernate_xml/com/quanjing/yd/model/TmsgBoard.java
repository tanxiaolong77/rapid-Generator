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


public class TmsgBoard extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "TmsgBoard";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_TEAM1_ID = "team1Id";
	public static final String ALIAS_TEAM2_ID = "team2Id";
	public static final String ALIAS_CONTENT = "content";
	public static final String ALIAS_CREATE_TIME = "createTime";
	public static final String ALIAS_CREATOR = "creator";
	public static final String ALIAS_OFFER_ID = "offerId";
	public static final String ALIAS_ACTIVITY_JOIN_ID = "activityJoinId";
	
	//date formats
	public static final String FORMAT_CREATE_TIME = DATE_FORMAT;
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@NotNull 
	private java.lang.Long team1Id;
	@NotNull 
	private java.lang.Long team2Id;
	@Length(max=3000)
	private java.lang.String content;
	@NotNull 
	private java.util.Date createTime;
	@NotNull 
	private java.lang.Long creator;
	
	private java.lang.Long offerId;
	
	private java.lang.Long activityJoinId;
	//columns END

	public TmsgBoard(){
	}

	public TmsgBoard(
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
	public void setTeam1Id(java.lang.Long value) {
		this.team1Id = value;
	}
	
	public java.lang.Long getTeam1Id() {
		return this.team1Id;
	}
	public void setTeam2Id(java.lang.Long value) {
		this.team2Id = value;
	}
	
	public java.lang.Long getTeam2Id() {
		return this.team2Id;
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
	public void setCreator(java.lang.Long value) {
		this.creator = value;
	}
	
	public java.lang.Long getCreator() {
		return this.creator;
	}
	public void setOfferId(java.lang.Long value) {
		this.offerId = value;
	}
	
	public java.lang.Long getOfferId() {
		return this.offerId;
	}
	public void setActivityJoinId(java.lang.Long value) {
		this.activityJoinId = value;
	}
	
	public java.lang.Long getActivityJoinId() {
		return this.activityJoinId;
	}

	public String toString() {
		return new ToStringBuilder(this)
			.append("Id",getId())
			.append("Team1Id",getTeam1Id())
			.append("Team2Id",getTeam2Id())
			.append("Content",getContent())
			.append("CreateTime",getCreateTime())
			.append("Creator",getCreator())
			.append("OfferId",getOfferId())
			.append("ActivityJoinId",getActivityJoinId())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getTeam1Id())
			.append(getTeam2Id())
			.append(getContent())
			.append(getCreateTime())
			.append(getCreator())
			.append(getOfferId())
			.append(getActivityJoinId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof TmsgBoard == false) return false;
		if(this == obj) return true;
		TmsgBoard other = (TmsgBoard)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getTeam1Id(),other.getTeam1Id())
			.append(getTeam2Id(),other.getTeam2Id())
			.append(getContent(),other.getContent())
			.append(getCreateTime(),other.getCreateTime())
			.append(getCreator(),other.getCreator())
			.append(getOfferId(),other.getOfferId())
			.append(getActivityJoinId(),other.getActivityJoinId())
			.isEquals();
	}
}

