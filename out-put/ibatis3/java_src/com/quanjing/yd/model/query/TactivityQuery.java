/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2016
 */

package com.quanjing.yd.model;
import com.quanjing.util.framework.BaseQuery;

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


public class TactivityQuery extends BaseQuery implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//columns START
		/** id **/
		private java.lang.Long id;
		/** 创建者的Id **/
		private java.lang.Long creatorId;
		/** userId **/
		private java.lang.Long userId;
		/** teamId **/
		private java.lang.Long teamId;
		/** 学校2:社会1 **/
		private java.lang.Integer type;
		/** title **/
		private java.lang.String title;
		/** introduce **/
		private java.lang.String introduce;
		/** link **/
		private java.lang.String link;
		/** 城市Id **/
		private java.lang.Long cityId;
		/** 活动地址 **/
		private java.lang.String address;
		/** require **/
		private java.lang.String require;
		/** 开始时间 **/
		private java.util.Date startTime;
		/** createTime **/
		private java.util.Date createTime;
		/** 结束时间 **/
		private java.util.Date endTime;
		/** 费用说明 **/
		private java.lang.String fee;
		/** 浏览数 **/
		private java.lang.Long viewCount;
		/** 活动状态: -1活动已经满员 ,1正在进行 0活动结束,200已见面 **/
		private java.lang.Integer status;
		/** 经度 **/
		private java.lang.Float lng;
		/** 纬度 **/
		private java.lang.Float lat;
		/** 是否请客0 : 不请客 1 : 请客 **/
		private java.lang.Integer payType;
		/** 活动性别,男:1,女:2 **/
		private java.lang.Integer gender;
		//columns END


		public void setId(java.lang.Long value) {
			this.id = value;
		}
		
		public java.lang.Long getId() {
			return this.id;
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

		public void setTeamId(java.lang.Long value) {
			this.teamId = value;
		}
		
		public java.lang.Long getTeamId() {
			return this.teamId;
		}

		public void setType(java.lang.Integer value) {
			this.type = value;
		}
		
		public java.lang.Integer getType() {
			return this.type;
		}

		public void setTitle(java.lang.String value) {
			this.title = value;
		}
		
		public java.lang.String getTitle() {
			return this.title;
		}

		public void setIntroduce(java.lang.String value) {
			this.introduce = value;
		}
		
		public java.lang.String getIntroduce() {
			return this.introduce;
		}

		public void setLink(java.lang.String value) {
			this.link = value;
		}
		
		public java.lang.String getLink() {
			return this.link;
		}

		public void setCityId(java.lang.Long value) {
			this.cityId = value;
		}
		
		public java.lang.Long getCityId() {
			return this.cityId;
		}

		public void setAddress(java.lang.String value) {
			this.address = value;
		}
		
		public java.lang.String getAddress() {
			return this.address;
		}

		public void setRequire(java.lang.String value) {
			this.require = value;
		}
		
		public java.lang.String getRequire() {
			return this.require;
		}

		public void setStartTime(java.util.Date value) {
			this.startTime = value;
		}
		
		public java.util.Date getStartTime() {
			return this.startTime;
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

		public void setFee(java.lang.String value) {
			this.fee = value;
		}
		
		public java.lang.String getFee() {
			return this.fee;
		}

		public void setViewCount(java.lang.Long value) {
			this.viewCount = value;
		}
		
		public java.lang.Long getViewCount() {
			return this.viewCount;
		}

		public void setStatus(java.lang.Integer value) {
			this.status = value;
		}
		
		public java.lang.Integer getStatus() {
			return this.status;
		}

		public void setLng(java.lang.Float value) {
			this.lng = value;
		}
		
		public java.lang.Float getLng() {
			return this.lng;
		}

		public void setLat(java.lang.Float value) {
			this.lat = value;
		}
		
		public java.lang.Float getLat() {
			return this.lat;
		}

		public void setPayType(java.lang.Integer value) {
			this.payType = value;
		}
		
		public java.lang.Integer getPayType() {
			return this.payType;
		}

		public void setGender(java.lang.Integer value) {
			this.gender = value;
		}
		
		public java.lang.Integer getGender() {
			return this.gender;
		}

		public String toString() {
			return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
				.append("Id",getId())
				.append("CreatorId",getCreatorId())
				.append("UserId",getUserId())
				.append("TeamId",getTeamId())
				.append("Type",getType())
				.append("Title",getTitle())
				.append("Introduce",getIntroduce())
				.append("Link",getLink())
				.append("CityId",getCityId())
				.append("Address",getAddress())
				.append("Require",getRequire())
				.append("StartTime",getStartTime())
				.append("CreateTime",getCreateTime())
				.append("EndTime",getEndTime())
				.append("Fee",getFee())
				.append("ViewCount",getViewCount())
				.append("Status",getStatus())
				.append("Lng",getLng())
				.append("Lat",getLat())
				.append("PayType",getPayType())
				.append("Gender",getGender())
				.toString();
		}
		
		public int hashCode() {
			return new HashCodeBuilder()
				.append(getId())
				.toHashCode();
		}
		
		public boolean equals(Object obj) {
			if(obj instanceof Tactivity == false) return false;
			if(this == obj) return true;
			TactivityQuery other = (TactivityQuery)obj;
			return new EqualsBuilder()
				.append(getId(),other.getId())
				.isEquals();
		}
	}

