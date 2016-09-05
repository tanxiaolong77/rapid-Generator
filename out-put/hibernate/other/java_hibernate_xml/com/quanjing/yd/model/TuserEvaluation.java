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


public class TuserEvaluation extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "TuserEvaluation";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_USER_ID = "userId";
	public static final String ALIAS_EVALUATED_USER_ID = "evaluatedUserId";
	public static final String ALIAS_CREATE_TIME = "createTime";
	public static final String ALIAS_TYPE = "type";
	public static final String ALIAS_STATUS = "status";
	public static final String ALIAS_ACTIVITY_ID = "activityId";
	public static final String ALIAS_OFFER_ID = "offerId";
	public static final String ALIAS_STAR = "star";
	public static final String ALIAS_TRUTH_INFO_STAR = "truthInfoStar";
	public static final String ALIAS_FRIENDLY_STAR = "friendlyStar";
	public static final String ALIAS_APPEAR_STAR = "appearStar";
	public static final String ALIAS_EVALUATION = "evaluation";
	
	//date formats
	public static final String FORMAT_CREATE_TIME = DATE_FORMAT;
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@NotNull 
	private java.lang.Long userId;
	@NotNull 
	private java.lang.Long evaluatedUserId;
	
	private java.util.Date createTime;
	
	private java.lang.Integer type;
	
	private java.lang.Integer status;
	
	private java.lang.Long activityId;
	
	private java.lang.Long offerId;
	
	private Long star;
	
	private Long truthInfoStar;
	
	private Long friendlyStar;
	
	private Long appearStar;
	@Length(max=255)
	private java.lang.String evaluation;
	//columns END

	public TuserEvaluation(){
	}

	public TuserEvaluation(
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
	public void setEvaluatedUserId(java.lang.Long value) {
		this.evaluatedUserId = value;
	}
	
	public java.lang.Long getEvaluatedUserId() {
		return this.evaluatedUserId;
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
	public void setActivityId(java.lang.Long value) {
		this.activityId = value;
	}
	
	public java.lang.Long getActivityId() {
		return this.activityId;
	}
	public void setOfferId(java.lang.Long value) {
		this.offerId = value;
	}
	
	public java.lang.Long getOfferId() {
		return this.offerId;
	}
	public void setStar(Long value) {
		this.star = value;
	}
	
	public Long getStar() {
		return this.star;
	}
	public void setTruthInfoStar(Long value) {
		this.truthInfoStar = value;
	}
	
	public Long getTruthInfoStar() {
		return this.truthInfoStar;
	}
	public void setFriendlyStar(Long value) {
		this.friendlyStar = value;
	}
	
	public Long getFriendlyStar() {
		return this.friendlyStar;
	}
	public void setAppearStar(Long value) {
		this.appearStar = value;
	}
	
	public Long getAppearStar() {
		return this.appearStar;
	}
	public void setEvaluation(java.lang.String value) {
		this.evaluation = value;
	}
	
	public java.lang.String getEvaluation() {
		return this.evaluation;
	}

	public String toString() {
		return new ToStringBuilder(this)
			.append("Id",getId())
			.append("UserId",getUserId())
			.append("EvaluatedUserId",getEvaluatedUserId())
			.append("CreateTime",getCreateTime())
			.append("Type",getType())
			.append("Status",getStatus())
			.append("ActivityId",getActivityId())
			.append("OfferId",getOfferId())
			.append("Star",getStar())
			.append("TruthInfoStar",getTruthInfoStar())
			.append("FriendlyStar",getFriendlyStar())
			.append("AppearStar",getAppearStar())
			.append("Evaluation",getEvaluation())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUserId())
			.append(getEvaluatedUserId())
			.append(getCreateTime())
			.append(getType())
			.append(getStatus())
			.append(getActivityId())
			.append(getOfferId())
			.append(getStar())
			.append(getTruthInfoStar())
			.append(getFriendlyStar())
			.append(getAppearStar())
			.append(getEvaluation())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof TuserEvaluation == false) return false;
		if(this == obj) return true;
		TuserEvaluation other = (TuserEvaluation)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUserId(),other.getUserId())
			.append(getEvaluatedUserId(),other.getEvaluatedUserId())
			.append(getCreateTime(),other.getCreateTime())
			.append(getType(),other.getType())
			.append(getStatus(),other.getStatus())
			.append(getActivityId(),other.getActivityId())
			.append(getOfferId(),other.getOfferId())
			.append(getStar(),other.getStar())
			.append(getTruthInfoStar(),other.getTruthInfoStar())
			.append(getFriendlyStar(),other.getFriendlyStar())
			.append(getAppearStar(),other.getAppearStar())
			.append(getEvaluation(),other.getEvaluation())
			.isEquals();
	}
}

