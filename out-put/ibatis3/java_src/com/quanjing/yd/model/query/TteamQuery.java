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


public class TteamQuery extends BaseQuery implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//columns START
		/** id **/
		private java.lang.Long id;
		/** 对于固定团队队长为user1队员为use2 **/
		private java.lang.Long user1Id;
		/** user2Id **/
		private java.lang.Long user2Id;
		/** 类型 1：staff 2：学生 **/
		private java.lang.Integer type;
		/** cityId **/
		private java.lang.Long cityId;
		/** 地址 **/
		private java.lang.String address;
		/** 是否请客0 : 不请客 1 : 请客 **/
		private java.lang.Integer payType;
		/** 什么时段有空 **/
		private java.lang.String freeTime;
		/** 经常去的地方 **/
		private java.lang.String haunt;
		/** 1:正常 -1:解散 **/
		private java.lang.Integer status;
		/** createTime **/
		private java.util.Date createTime;
		/** 星级 **/
		private java.lang.Float star;
		/** 是否为临时团队 : 0为固定团队 , 1为activity临时团队 10为速配的临时团队 **/
		private java.lang.Integer temp;
		/** 团队个性签名 **/
		private java.lang.String signature;
		/** 期望周几越 **/
		private java.lang.String freeDay;
		/** 喜欢的食物 **/
		private java.lang.String food;
		/** 喜欢的烟酒或是不抽烟不喝酒 **/
		private java.lang.String alcohol;
		/** 1:男2:女 **/
		private java.lang.Integer teamGender;
		/** 聚餐时间 **/
		private java.lang.String partyTime;
		/** 活动预算 **/
		private java.lang.String fee;
		/** 交友目的 **/
		private java.lang.String palPurpose;
		//columns END


		public void setId(java.lang.Long value) {
			this.id = value;
		}
		
		public java.lang.Long getId() {
			return this.id;
		}

		public void setUser1Id(java.lang.Long value) {
			this.user1Id = value;
		}
		
		public java.lang.Long getUser1Id() {
			return this.user1Id;
		}

		public void setUser2Id(java.lang.Long value) {
			this.user2Id = value;
		}
		
		public java.lang.Long getUser2Id() {
			return this.user2Id;
		}

		public void setType(java.lang.Integer value) {
			this.type = value;
		}
		
		public java.lang.Integer getType() {
			return this.type;
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

		public void setPayType(java.lang.Integer value) {
			this.payType = value;
		}
		
		public java.lang.Integer getPayType() {
			return this.payType;
		}

		public void setFreeTime(java.lang.String value) {
			this.freeTime = value;
		}
		
		public java.lang.String getFreeTime() {
			return this.freeTime;
		}

		public void setHaunt(java.lang.String value) {
			this.haunt = value;
		}
		
		public java.lang.String getHaunt() {
			return this.haunt;
		}

		public void setStatus(java.lang.Integer value) {
			this.status = value;
		}
		
		public java.lang.Integer getStatus() {
			return this.status;
		}

		public void setCreateTime(java.util.Date value) {
			this.createTime = value;
		}
		
		public java.util.Date getCreateTime() {
			return this.createTime;
		}

		public void setStar(java.lang.Float value) {
			this.star = value;
		}
		
		public java.lang.Float getStar() {
			return this.star;
		}

		public void setTemp(java.lang.Integer value) {
			this.temp = value;
		}
		
		public java.lang.Integer getTemp() {
			return this.temp;
		}

		public void setSignature(java.lang.String value) {
			this.signature = value;
		}
		
		public java.lang.String getSignature() {
			return this.signature;
		}

		public void setFreeDay(java.lang.String value) {
			this.freeDay = value;
		}
		
		public java.lang.String getFreeDay() {
			return this.freeDay;
		}

		public void setFood(java.lang.String value) {
			this.food = value;
		}
		
		public java.lang.String getFood() {
			return this.food;
		}

		public void setAlcohol(java.lang.String value) {
			this.alcohol = value;
		}
		
		public java.lang.String getAlcohol() {
			return this.alcohol;
		}

		public void setTeamGender(java.lang.Integer value) {
			this.teamGender = value;
		}
		
		public java.lang.Integer getTeamGender() {
			return this.teamGender;
		}

		public void setPartyTime(java.lang.String value) {
			this.partyTime = value;
		}
		
		public java.lang.String getPartyTime() {
			return this.partyTime;
		}

		public void setFee(java.lang.String value) {
			this.fee = value;
		}
		
		public java.lang.String getFee() {
			return this.fee;
		}

		public void setPalPurpose(java.lang.String value) {
			this.palPurpose = value;
		}
		
		public java.lang.String getPalPurpose() {
			return this.palPurpose;
		}

		public String toString() {
			return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
				.append("Id",getId())
				.append("User1Id",getUser1Id())
				.append("User2Id",getUser2Id())
				.append("Type",getType())
				.append("CityId",getCityId())
				.append("Address",getAddress())
				.append("PayType",getPayType())
				.append("FreeTime",getFreeTime())
				.append("Haunt",getHaunt())
				.append("Status",getStatus())
				.append("CreateTime",getCreateTime())
				.append("Star",getStar())
				.append("Temp",getTemp())
				.append("Signature",getSignature())
				.append("FreeDay",getFreeDay())
				.append("Food",getFood())
				.append("Alcohol",getAlcohol())
				.append("TeamGender",getTeamGender())
				.append("PartyTime",getPartyTime())
				.append("Fee",getFee())
				.append("PalPurpose",getPalPurpose())
				.toString();
		}
		
		public int hashCode() {
			return new HashCodeBuilder()
				.append(getId())
				.toHashCode();
		}
		
		public boolean equals(Object obj) {
			if(obj instanceof Tteam == false) return false;
			if(this == obj) return true;
			TteamQuery other = (TteamQuery)obj;
			return new EqualsBuilder()
				.append(getId(),other.getId())
				.isEquals();
		}
	}

