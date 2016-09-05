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
@Table(name = "t_team")
public class Tteam extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "Tteam";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_USER1_ID = "对于固定团队队长为user1队员为use2";
	public static final String ALIAS_USER2_ID = "user2Id";
	public static final String ALIAS_TYPE = "类型 1：staff 2：学生";
	public static final String ALIAS_CITY_ID = "cityId";
	public static final String ALIAS_ADDRESS = "地址";
	public static final String ALIAS_PAY_TYPE = "是否请客0 : 不请客 1 : 请客";
	public static final String ALIAS_FREE_TIME = "什么时段有空";
	public static final String ALIAS_HAUNT = "经常去的地方";
	public static final String ALIAS_STATUS = "1:正常 -1:解散";
	public static final String ALIAS_CREATE_TIME = "createTime";
	public static final String ALIAS_STAR = "星级";
	public static final String ALIAS_TEMP = "是否为临时团队 : 0为固定团队 , 1为activity临时团队 10为速配的临时团队";
	public static final String ALIAS_SIGNATURE = "团队个性签名";
	public static final String ALIAS_FREE_DAY = "期望周几越";
	public static final String ALIAS_FOOD = "喜欢的食物";
	public static final String ALIAS_ALCOHOL = "喜欢的烟酒或是不抽烟不喝酒";
	public static final String ALIAS_TEAM_GENDER = "1:男2:女";
	public static final String ALIAS_PARTY_TIME = "聚餐时间";
	public static final String ALIAS_FEE = "活动预算";
	public static final String ALIAS_PAL_PURPOSE = "交友目的";
	
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
	
	@Id @GeneratedValue(generator="custom-id")
	@GenericGenerator(name="custom-id", strategy = "increment")
	@Column(name = "id", unique = true, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getId() {
		return this.id;
	}
	
	@Column(name = "user1_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getUser1Id() {
		return this.user1Id;
	}
	
	public void setUser1Id(java.lang.Long value) {
		this.user1Id = value;
	}
	
	@Column(name = "user2_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getUser2Id() {
		return this.user2Id;
	}
	
	public void setUser2Id(java.lang.Long value) {
		this.user2Id = value;
	}
	
	@Column(name = "type", unique = false, nullable = true, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getType() {
		return this.type;
	}
	
	public void setType(java.lang.Integer value) {
		this.type = value;
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
	
	@Column(name = "pay_type", unique = false, nullable = true, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getPayType() {
		return this.payType;
	}
	
	public void setPayType(java.lang.Integer value) {
		this.payType = value;
	}
	
	@Column(name = "free_time", unique = false, nullable = true, insertable = true, updatable = true, length = 100)
	public java.lang.String getFreeTime() {
		return this.freeTime;
	}
	
	public void setFreeTime(java.lang.String value) {
		this.freeTime = value;
	}
	
	@Column(name = "haunt", unique = false, nullable = true, insertable = true, updatable = true, length = 200)
	public java.lang.String getHaunt() {
		return this.haunt;
	}
	
	public void setHaunt(java.lang.String value) {
		this.haunt = value;
	}
	
	@Column(name = "status", unique = false, nullable = true, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getStatus() {
		return this.status;
	}
	
	public void setStatus(java.lang.Integer value) {
		this.status = value;
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
	
	@Column(name = "star", unique = false, nullable = true, insertable = true, updatable = true, length = 12)
	public java.lang.Float getStar() {
		return this.star;
	}
	
	public void setStar(java.lang.Float value) {
		this.star = value;
	}
	
	@Column(name = "temp", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getTemp() {
		return this.temp;
	}
	
	public void setTemp(java.lang.Integer value) {
		this.temp = value;
	}
	
	@Column(name = "signature", unique = false, nullable = true, insertable = true, updatable = true, length = 200)
	public java.lang.String getSignature() {
		return this.signature;
	}
	
	public void setSignature(java.lang.String value) {
		this.signature = value;
	}
	
	@Column(name = "free_day", unique = false, nullable = true, insertable = true, updatable = true, length = 200)
	public java.lang.String getFreeDay() {
		return this.freeDay;
	}
	
	public void setFreeDay(java.lang.String value) {
		this.freeDay = value;
	}
	
	@Column(name = "food", unique = false, nullable = true, insertable = true, updatable = true, length = 200)
	public java.lang.String getFood() {
		return this.food;
	}
	
	public void setFood(java.lang.String value) {
		this.food = value;
	}
	
	@Column(name = "alcohol", unique = false, nullable = true, insertable = true, updatable = true, length = 200)
	public java.lang.String getAlcohol() {
		return this.alcohol;
	}
	
	public void setAlcohol(java.lang.String value) {
		this.alcohol = value;
	}
	
	@Column(name = "team_gender", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getTeamGender() {
		return this.teamGender;
	}
	
	public void setTeamGender(java.lang.Integer value) {
		this.teamGender = value;
	}
	
	@Column(name = "party_time", unique = false, nullable = true, insertable = true, updatable = true, length = 200)
	public java.lang.String getPartyTime() {
		return this.partyTime;
	}
	
	public void setPartyTime(java.lang.String value) {
		this.partyTime = value;
	}
	
	@Column(name = "fee", unique = false, nullable = true, insertable = true, updatable = true, length = 200)
	public java.lang.String getFee() {
		return this.fee;
	}
	
	public void setFee(java.lang.String value) {
		this.fee = value;
	}
	
	@Column(name = "pal_purpose", unique = false, nullable = true, insertable = true, updatable = true, length = 200)
	public java.lang.String getPalPurpose() {
		return this.palPurpose;
	}
	
	public void setPalPurpose(java.lang.String value) {
		this.palPurpose = value;
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
		Tteam other = (Tteam)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

