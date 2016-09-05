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


public class Tactivity extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "Tactivity";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_CREATOR_ID = "creatorId";
	public static final String ALIAS_USER_ID = "userId";
	public static final String ALIAS_TEAM_ID = "teamId";
	public static final String ALIAS_TYPE = "type";
	public static final String ALIAS_TITLE = "title";
	public static final String ALIAS_INTRODUCE = "introduce";
	public static final String ALIAS_LINK = "link";
	public static final String ALIAS_CITY_ID = "cityId";
	public static final String ALIAS_ADDRESS = "address";
	public static final String ALIAS_REQUIRE = "require";
	public static final String ALIAS_START_TIME = "startTime";
	public static final String ALIAS_CREATE_TIME = "createTime";
	public static final String ALIAS_END_TIME = "endTime";
	public static final String ALIAS_FEE = "fee";
	public static final String ALIAS_VIEW_COUNT = "viewCount";
	public static final String ALIAS_STATUS = "status";
	public static final String ALIAS_LNG = "lng";
	public static final String ALIAS_LAT = "lat";
	public static final String ALIAS_PAY_TYPE = "payType";
	public static final String ALIAS_GENDER = "gender";
	
	//date formats
	public static final String FORMAT_START_TIME = DATE_FORMAT;
	public static final String FORMAT_CREATE_TIME = DATE_FORMAT;
	public static final String FORMAT_END_TIME = DATE_FORMAT;
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@NotNull 
	private java.lang.Long creatorId;
	
	private java.lang.Long userId;
	
	private java.lang.Long teamId;
	
	private java.lang.Integer type;
	@Length(max=50)
	private java.lang.String title;
	@Length(max=300)
	private java.lang.String introduce;
	@Length(max=200)
	private java.lang.String link;
	
	private java.lang.Long cityId;
	@Length(max=100)
	private java.lang.String address;
	@Length(max=400)
	private java.lang.String require;
	
	private java.util.Date startTime;
	
	private java.util.Date createTime;
	
	private java.util.Date endTime;
	@Length(max=100)
	private java.lang.String fee;
	
	private java.lang.Long viewCount;
	
	private java.lang.Integer status;
	
	private java.lang.Float lng;
	
	private java.lang.Float lat;
	
	private java.lang.Integer payType;
	
	private java.lang.Integer gender;
	//columns END

	public Tactivity(){
	}

	public Tactivity(
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
	public String getStartTimeString() {
		return DateConvertUtils.format(getStartTime(), FORMAT_START_TIME);
	}
	public void setStartTimeString(String value) {
		setStartTime(DateConvertUtils.parse(value, FORMAT_START_TIME,java.util.Date.class));
	}
	
	public void setStartTime(java.util.Date value) {
		this.startTime = value;
	}
	
	public java.util.Date getStartTime() {
		return this.startTime;
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
	public String getEndTimeString() {
		return DateConvertUtils.format(getEndTime(), FORMAT_END_TIME);
	}
	public void setEndTimeString(String value) {
		setEndTime(DateConvertUtils.parse(value, FORMAT_END_TIME,java.util.Date.class));
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
		return new ToStringBuilder(this)
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
			.append(getCreatorId())
			.append(getUserId())
			.append(getTeamId())
			.append(getType())
			.append(getTitle())
			.append(getIntroduce())
			.append(getLink())
			.append(getCityId())
			.append(getAddress())
			.append(getRequire())
			.append(getStartTime())
			.append(getCreateTime())
			.append(getEndTime())
			.append(getFee())
			.append(getViewCount())
			.append(getStatus())
			.append(getLng())
			.append(getLat())
			.append(getPayType())
			.append(getGender())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Tactivity == false) return false;
		if(this == obj) return true;
		Tactivity other = (Tactivity)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getCreatorId(),other.getCreatorId())
			.append(getUserId(),other.getUserId())
			.append(getTeamId(),other.getTeamId())
			.append(getType(),other.getType())
			.append(getTitle(),other.getTitle())
			.append(getIntroduce(),other.getIntroduce())
			.append(getLink(),other.getLink())
			.append(getCityId(),other.getCityId())
			.append(getAddress(),other.getAddress())
			.append(getRequire(),other.getRequire())
			.append(getStartTime(),other.getStartTime())
			.append(getCreateTime(),other.getCreateTime())
			.append(getEndTime(),other.getEndTime())
			.append(getFee(),other.getFee())
			.append(getViewCount(),other.getViewCount())
			.append(getStatus(),other.getStatus())
			.append(getLng(),other.getLng())
			.append(getLat(),other.getLat())
			.append(getPayType(),other.getPayType())
			.append(getGender(),other.getGender())
			.isEquals();
	}
}

