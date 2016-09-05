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
@Table(name = "t_activity")
public class Tactivity extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "Tactivity";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_CREATOR_ID = "创建者的Id";
	public static final String ALIAS_USER_ID = "userId";
	public static final String ALIAS_TEAM_ID = "teamId";
	public static final String ALIAS_TYPE = "学校2:社会1";
	public static final String ALIAS_TITLE = "title";
	public static final String ALIAS_INTRODUCE = "introduce";
	public static final String ALIAS_LINK = "link";
	public static final String ALIAS_CITY_ID = "城市Id";
	public static final String ALIAS_ADDRESS = "活动地址";
	public static final String ALIAS_REQUIRE = "require";
	public static final String ALIAS_START_TIME = "开始时间";
	public static final String ALIAS_CREATE_TIME = "createTime";
	public static final String ALIAS_END_TIME = "结束时间";
	public static final String ALIAS_FEE = "费用说明";
	public static final String ALIAS_VIEW_COUNT = "浏览数";
	public static final String ALIAS_STATUS = "活动状态: -1活动已经满员 ,1正在进行 0活动结束,200已见面";
	public static final String ALIAS_LNG = "经度";
	public static final String ALIAS_LAT = "纬度";
	public static final String ALIAS_PAY_TYPE = "是否请客0 : 不请客 1 : 请客";
	public static final String ALIAS_GENDER = "活动性别,男:1,女:2";
	
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
	
	@Id @GeneratedValue(generator="custom-id")
	@GenericGenerator(name="custom-id", strategy = "increment")
	@Column(name = "id", unique = true, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getId() {
		return this.id;
	}
	
	@Column(name = "creator_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
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
	
	@Column(name = "team_id", unique = false, nullable = true, insertable = true, updatable = true, length = 19)
	public java.lang.Long getTeamId() {
		return this.teamId;
	}
	
	public void setTeamId(java.lang.Long value) {
		this.teamId = value;
	}
	
	@Column(name = "type", unique = false, nullable = true, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getType() {
		return this.type;
	}
	
	public void setType(java.lang.Integer value) {
		this.type = value;
	}
	
	@Column(name = "title", unique = false, nullable = true, insertable = true, updatable = true, length = 50)
	public java.lang.String getTitle() {
		return this.title;
	}
	
	public void setTitle(java.lang.String value) {
		this.title = value;
	}
	
	@Column(name = "introduce", unique = false, nullable = true, insertable = true, updatable = true, length = 300)
	public java.lang.String getIntroduce() {
		return this.introduce;
	}
	
	public void setIntroduce(java.lang.String value) {
		this.introduce = value;
	}
	
	@Column(name = "link", unique = false, nullable = true, insertable = true, updatable = true, length = 200)
	public java.lang.String getLink() {
		return this.link;
	}
	
	public void setLink(java.lang.String value) {
		this.link = value;
	}
	
	@Column(name = "city_id", unique = false, nullable = true, insertable = true, updatable = true, length = 19)
	public java.lang.Long getCityId() {
		return this.cityId;
	}
	
	public void setCityId(java.lang.Long value) {
		this.cityId = value;
	}
	
	@Column(name = "address", unique = false, nullable = true, insertable = true, updatable = true, length = 100)
	public java.lang.String getAddress() {
		return this.address;
	}
	
	public void setAddress(java.lang.String value) {
		this.address = value;
	}
	
	@Column(name = "require", unique = false, nullable = true, insertable = true, updatable = true, length = 400)
	public java.lang.String getRequire() {
		return this.require;
	}
	
	public void setRequire(java.lang.String value) {
		this.require = value;
	}
	
	@Transient
	public String getStartTimeString() {
		return DateConvertUtils.format(getStartTime(), FORMAT_START_TIME);
	}
	public void setStartTimeString(String value) {
		setStartTime(DateConvertUtils.parse(value, FORMAT_START_TIME,java.util.Date.class));
	}
	
	@Column(name = "start_time", unique = false, nullable = true, insertable = true, updatable = true, length = 0)
	public java.util.Date getStartTime() {
		return this.startTime;
	}
	
	public void setStartTime(java.util.Date value) {
		this.startTime = value;
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
	
	@Column(name = "fee", unique = false, nullable = true, insertable = true, updatable = true, length = 100)
	public java.lang.String getFee() {
		return this.fee;
	}
	
	public void setFee(java.lang.String value) {
		this.fee = value;
	}
	
	@Column(name = "view_count", unique = false, nullable = true, insertable = true, updatable = true, length = 19)
	public java.lang.Long getViewCount() {
		return this.viewCount;
	}
	
	public void setViewCount(java.lang.Long value) {
		this.viewCount = value;
	}
	
	@Column(name = "status", unique = false, nullable = true, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getStatus() {
		return this.status;
	}
	
	public void setStatus(java.lang.Integer value) {
		this.status = value;
	}
	
	@Column(name = "lng", unique = false, nullable = true, insertable = true, updatable = true, length = 20)
	public java.lang.Float getLng() {
		return this.lng;
	}
	
	public void setLng(java.lang.Float value) {
		this.lng = value;
	}
	
	@Column(name = "lat", unique = false, nullable = true, insertable = true, updatable = true, length = 20)
	public java.lang.Float getLat() {
		return this.lat;
	}
	
	public void setLat(java.lang.Float value) {
		this.lat = value;
	}
	
	@Column(name = "pay_type", unique = false, nullable = true, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getPayType() {
		return this.payType;
	}
	
	public void setPayType(java.lang.Integer value) {
		this.payType = value;
	}
	
	@Column(name = "gender", unique = false, nullable = true, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getGender() {
		return this.gender;
	}
	
	public void setGender(java.lang.Integer value) {
		this.gender = value;
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
		Tactivity other = (Tactivity)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

