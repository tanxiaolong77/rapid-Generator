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


public class TuserEvaluation implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	/** id **/
	private java.lang.Long id;
	/** 发出评价的用户 **/
	private java.lang.Long userId;
	/** 被评价用户 **/
	private java.lang.Long evaluatedUserId;
	/** 评价时间 **/
	private java.util.Date createTime;
	/** 评价类型 1:活动评价 2:offer评价 **/
	private java.lang.Integer type;
	/** 评价状态: 0:待评价 1已评价 **/
	private java.lang.Integer status;
	/** 活动Id **/
	private java.lang.Long activityId;
	/** offerId **/
	private java.lang.Long offerId;
	/** 评分分值 **/
	private Long star;
	/** truthInfoStar **/
	private Long truthInfoStar;
	/** friendlyStar **/
	private Long friendlyStar;
	/** appearStar **/
	private Long appearStar;
	/** evaluation **/
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
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
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
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof TuserEvaluation == false) return false;
		if(this == obj) return true;
		TuserEvaluation other = (TuserEvaluation)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

