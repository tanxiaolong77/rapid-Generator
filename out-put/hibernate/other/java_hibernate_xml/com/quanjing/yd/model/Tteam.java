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


public class Tteam extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "Tteam";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_USER1_ID = "user1Id";
	public static final String ALIAS_USER2_ID = "user2Id";
	public static final String ALIAS_TYPE = "type";
	public static final String ALIAS_CITY_ID = "cityId";
	public static final String ALIAS_ADDRESS = "address";
	public static final String ALIAS_PAY_TYPE = "payType";
	public static final String ALIAS_FREE_TIME = "freeTime";
	public static final String ALIAS_HAUNT = "haunt";
	public static final String ALIAS_STATUS = "status";
	public static final String ALIAS_CREATE_TIME = "createTime";
	public static final String ALIAS_STAR = "star";
	public static final String ALIAS_TEMP = "temp";
	public static final String ALIAS_SIGNATURE = "signature";
	public static final String ALIAS_FREE_DAY = "freeDay";
	public static final String ALIAS_FOOD = "food";
	public static final String ALIAS_ALCOHOL = "alcohol";
	public static final String ALIAS_TEAM_GENDER = "teamGender";
	public static final String ALIAS_PARTY_TIME = "partyTime";
	public static final String ALIAS_FEE = "fee";
	public static final String ALIAS_PAL_PURPOSE = "palPurpose";
	
	//date formats
	public static final String FORMAT_CREATE_TIME = DATE_FORMAT;
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@NotNull 
	private java.lang.Long user1Id;
	@NotNull 
	private java.lang.Long user2Id;
	
	private java.lang.Integer type;
	
	private java.lang.Long cityId;
	@Length(max=100)
	private java.lang.String address;
	
	private java.lang.Integer payType;
	@Length(max=100)
	private java.lang.String freeTime;
	@Length(max=200)
	private java.lang.String haunt;
	
	private java.lang.Integer status;
	
	private java.util.Date createTime;
	
	private java.lang.Float star;
	@NotNull 
	private java.lang.Integer temp;
	@Length(max=200)
	private java.lang.String signature;
	@Length(max=200)
	private java.lang.String freeDay;
	@Length(max=200)
	private java.lang.String food;
	@Length(max=200)
	private java.lang.String alcohol;
	@NotNull 
	private java.lang.Integer teamGender;
	@Length(max=200)
	private java.lang.String partyTime;
	@Length(max=200)
	private java.lang.String fee;
	@Length(max=200)
	private java.lang.String palPurpose;
	//columns END

	public Tteam(){
	}

	public Tteam(
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
		return new ToStringBuilder(this)
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
			.append(getUser1Id())
			.append(getUser2Id())
			.append(getType())
			.append(getCityId())
			.append(getAddress())
			.append(getPayType())
			.append(getFreeTime())
			.append(getHaunt())
			.append(getStatus())
			.append(getCreateTime())
			.append(getStar())
			.append(getTemp())
			.append(getSignature())
			.append(getFreeDay())
			.append(getFood())
			.append(getAlcohol())
			.append(getTeamGender())
			.append(getPartyTime())
			.append(getFee())
			.append(getPalPurpose())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Tteam == false) return false;
		if(this == obj) return true;
		Tteam other = (Tteam)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUser1Id(),other.getUser1Id())
			.append(getUser2Id(),other.getUser2Id())
			.append(getType(),other.getType())
			.append(getCityId(),other.getCityId())
			.append(getAddress(),other.getAddress())
			.append(getPayType(),other.getPayType())
			.append(getFreeTime(),other.getFreeTime())
			.append(getHaunt(),other.getHaunt())
			.append(getStatus(),other.getStatus())
			.append(getCreateTime(),other.getCreateTime())
			.append(getStar(),other.getStar())
			.append(getTemp(),other.getTemp())
			.append(getSignature(),other.getSignature())
			.append(getFreeDay(),other.getFreeDay())
			.append(getFood(),other.getFood())
			.append(getAlcohol(),other.getAlcohol())
			.append(getTeamGender(),other.getTeamGender())
			.append(getPartyTime(),other.getPartyTime())
			.append(getFee(),other.getFee())
			.append(getPalPurpose(),other.getPalPurpose())
			.isEquals();
	}
}

