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


public class Tuser extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "Tuser";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_NICK_NAME = "nickName";
	public static final String ALIAS_USERNAME = "username";
	public static final String ALIAS_PASSWORD = "password";
	public static final String ALIAS_PHONE = "phone";
	public static final String ALIAS_NAME = "name";
	public static final String ALIAS_GENDER = "gender";
	public static final String ALIAS_TYPE = "type";
	public static final String ALIAS_SCHOOL_ID = "schoolId";
	public static final String ALIAS_SCHOOL_NAME = "schoolName";
	public static final String ALIAS_SUBJECT = "subject";
	public static final String ALIAS_INDUSTRY = "industry";
	public static final String ALIAS_COMPANY = "company";
	public static final String ALIAS_POSITION = "position";
	public static final String ALIAS_BIRTHDAY = "birthday";
	public static final String ALIAS_AVATAR = "avatar";
	public static final String ALIAS_EMOTIONAL = "emotional";
	public static final String ALIAS_SIGNATURE = "signature";
	public static final String ALIAS_HOME_TOWN = "homeTown";
	public static final String ALIAS_INTEREST = "interest";
	public static final String ALIAS_STAR = "star";
	public static final String ALIAS_TRUTH_INFO_STAR = "truthInfoStar";
	public static final String ALIAS_FRIENDLY_STAR = "friendlyStar";
	public static final String ALIAS_APPEAR_STAR = "appearStar";
	public static final String ALIAS_CREATE_TIME = "createTime";
	public static final String ALIAS_STATUS = "status";
	public static final String ALIAS_LAST_LOGIN_TIME = "lastLoginTime";
	
	//date formats
	public static final String FORMAT_BIRTHDAY = DATE_FORMAT;
	public static final String FORMAT_CREATE_TIME = DATE_FORMAT;
	public static final String FORMAT_LAST_LOGIN_TIME = DATE_FORMAT;
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@Length(max=50)
	private java.lang.String nickName;
	@NotBlank @Length(max=40)
	private java.lang.String username;
	@NotBlank @Length(max=60)
	private java.lang.String password;
	@NotBlank @Length(max=20)
	private java.lang.String phone;
	@Length(max=10)
	private java.lang.String name;
	
	private java.lang.Integer gender;
	
	private java.lang.Integer type;
	
	private java.lang.Long schoolId;
	@Length(max=50)
	private java.lang.String schoolName;
	@Length(max=50)
	private java.lang.String subject;
	@Length(max=50)
	private java.lang.String industry;
	@Length(max=50)
	private java.lang.String company;
	@Length(max=50)
	private java.lang.String position;
	
	private java.util.Date birthday;
	@Length(max=150)
	private java.lang.String avatar;
	@Length(max=20)
	private java.lang.String emotional;
	@Length(max=200)
	private java.lang.String signature;
	
	private java.lang.Long homeTown;
	@Length(max=2000)
	private java.lang.String interest;
	
	private Long star;
	
	private Long truthInfoStar;
	
	private Long friendlyStar;
	
	private Long appearStar;
	@NotNull 
	private java.util.Date createTime;
	
	private java.lang.Integer status;
	
	private java.util.Date lastLoginTime;
	//columns END

	public Tuser(){
	}

	public Tuser(
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
	public void setNickName(java.lang.String value) {
		this.nickName = value;
	}
	
	public java.lang.String getNickName() {
		return this.nickName;
	}
	public void setUsername(java.lang.String value) {
		this.username = value;
	}
	
	public java.lang.String getUsername() {
		return this.username;
	}
	public void setPassword(java.lang.String value) {
		this.password = value;
	}
	
	public java.lang.String getPassword() {
		return this.password;
	}
	public void setPhone(java.lang.String value) {
		this.phone = value;
	}
	
	public java.lang.String getPhone() {
		return this.phone;
	}
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	public java.lang.String getName() {
		return this.name;
	}
	public void setGender(java.lang.Integer value) {
		this.gender = value;
	}
	
	public java.lang.Integer getGender() {
		return this.gender;
	}
	public void setType(java.lang.Integer value) {
		this.type = value;
	}
	
	public java.lang.Integer getType() {
		return this.type;
	}
	public void setSchoolId(java.lang.Long value) {
		this.schoolId = value;
	}
	
	public java.lang.Long getSchoolId() {
		return this.schoolId;
	}
	public void setSchoolName(java.lang.String value) {
		this.schoolName = value;
	}
	
	public java.lang.String getSchoolName() {
		return this.schoolName;
	}
	public void setSubject(java.lang.String value) {
		this.subject = value;
	}
	
	public java.lang.String getSubject() {
		return this.subject;
	}
	public void setIndustry(java.lang.String value) {
		this.industry = value;
	}
	
	public java.lang.String getIndustry() {
		return this.industry;
	}
	public void setCompany(java.lang.String value) {
		this.company = value;
	}
	
	public java.lang.String getCompany() {
		return this.company;
	}
	public void setPosition(java.lang.String value) {
		this.position = value;
	}
	
	public java.lang.String getPosition() {
		return this.position;
	}
	public String getBirthdayString() {
		return DateConvertUtils.format(getBirthday(), FORMAT_BIRTHDAY);
	}
	public void setBirthdayString(String value) {
		setBirthday(DateConvertUtils.parse(value, FORMAT_BIRTHDAY,java.util.Date.class));
	}
	
	public void setBirthday(java.util.Date value) {
		this.birthday = value;
	}
	
	public java.util.Date getBirthday() {
		return this.birthday;
	}
	public void setAvatar(java.lang.String value) {
		this.avatar = value;
	}
	
	public java.lang.String getAvatar() {
		return this.avatar;
	}
	public void setEmotional(java.lang.String value) {
		this.emotional = value;
	}
	
	public java.lang.String getEmotional() {
		return this.emotional;
	}
	public void setSignature(java.lang.String value) {
		this.signature = value;
	}
	
	public java.lang.String getSignature() {
		return this.signature;
	}
	public void setHomeTown(java.lang.Long value) {
		this.homeTown = value;
	}
	
	public java.lang.Long getHomeTown() {
		return this.homeTown;
	}
	public void setInterest(java.lang.String value) {
		this.interest = value;
	}
	
	public java.lang.String getInterest() {
		return this.interest;
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
	public void setStatus(java.lang.Integer value) {
		this.status = value;
	}
	
	public java.lang.Integer getStatus() {
		return this.status;
	}
	public String getLastLoginTimeString() {
		return DateConvertUtils.format(getLastLoginTime(), FORMAT_LAST_LOGIN_TIME);
	}
	public void setLastLoginTimeString(String value) {
		setLastLoginTime(DateConvertUtils.parse(value, FORMAT_LAST_LOGIN_TIME,java.util.Date.class));
	}
	
	public void setLastLoginTime(java.util.Date value) {
		this.lastLoginTime = value;
	}
	
	public java.util.Date getLastLoginTime() {
		return this.lastLoginTime;
	}

	public String toString() {
		return new ToStringBuilder(this)
			.append("Id",getId())
			.append("NickName",getNickName())
			.append("Username",getUsername())
			.append("Password",getPassword())
			.append("Phone",getPhone())
			.append("Name",getName())
			.append("Gender",getGender())
			.append("Type",getType())
			.append("SchoolId",getSchoolId())
			.append("SchoolName",getSchoolName())
			.append("Subject",getSubject())
			.append("Industry",getIndustry())
			.append("Company",getCompany())
			.append("Position",getPosition())
			.append("Birthday",getBirthday())
			.append("Avatar",getAvatar())
			.append("Emotional",getEmotional())
			.append("Signature",getSignature())
			.append("HomeTown",getHomeTown())
			.append("Interest",getInterest())
			.append("Star",getStar())
			.append("TruthInfoStar",getTruthInfoStar())
			.append("FriendlyStar",getFriendlyStar())
			.append("AppearStar",getAppearStar())
			.append("CreateTime",getCreateTime())
			.append("Status",getStatus())
			.append("LastLoginTime",getLastLoginTime())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getNickName())
			.append(getUsername())
			.append(getPassword())
			.append(getPhone())
			.append(getName())
			.append(getGender())
			.append(getType())
			.append(getSchoolId())
			.append(getSchoolName())
			.append(getSubject())
			.append(getIndustry())
			.append(getCompany())
			.append(getPosition())
			.append(getBirthday())
			.append(getAvatar())
			.append(getEmotional())
			.append(getSignature())
			.append(getHomeTown())
			.append(getInterest())
			.append(getStar())
			.append(getTruthInfoStar())
			.append(getFriendlyStar())
			.append(getAppearStar())
			.append(getCreateTime())
			.append(getStatus())
			.append(getLastLoginTime())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Tuser == false) return false;
		if(this == obj) return true;
		Tuser other = (Tuser)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getNickName(),other.getNickName())
			.append(getUsername(),other.getUsername())
			.append(getPassword(),other.getPassword())
			.append(getPhone(),other.getPhone())
			.append(getName(),other.getName())
			.append(getGender(),other.getGender())
			.append(getType(),other.getType())
			.append(getSchoolId(),other.getSchoolId())
			.append(getSchoolName(),other.getSchoolName())
			.append(getSubject(),other.getSubject())
			.append(getIndustry(),other.getIndustry())
			.append(getCompany(),other.getCompany())
			.append(getPosition(),other.getPosition())
			.append(getBirthday(),other.getBirthday())
			.append(getAvatar(),other.getAvatar())
			.append(getEmotional(),other.getEmotional())
			.append(getSignature(),other.getSignature())
			.append(getHomeTown(),other.getHomeTown())
			.append(getInterest(),other.getInterest())
			.append(getStar(),other.getStar())
			.append(getTruthInfoStar(),other.getTruthInfoStar())
			.append(getFriendlyStar(),other.getFriendlyStar())
			.append(getAppearStar(),other.getAppearStar())
			.append(getCreateTime(),other.getCreateTime())
			.append(getStatus(),other.getStatus())
			.append(getLastLoginTime(),other.getLastLoginTime())
			.isEquals();
	}
}

