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


public class Tuser implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	/** id **/
	private java.lang.Long id;
	/** nickName **/
	private java.lang.String nickName;
	/** username **/
	private java.lang.String username;
	/** password **/
	private java.lang.String password;
	/** phone **/
	private java.lang.String phone;
	/** name **/
	private java.lang.String name;
	/** 0:未知  1：男 2：女 **/
	private java.lang.Integer gender;
	/** 1：职场 2：学生 **/
	private java.lang.Integer type;
	/** schoolId **/
	private java.lang.Long schoolId;
	/** schoolName **/
	private java.lang.String schoolName;
	/** 专业 **/
	private java.lang.String subject;
	/** 行业 **/
	private java.lang.String industry;
	/** company **/
	private java.lang.String company;
	/** position **/
	private java.lang.String position;
	/** birthday **/
	private java.util.Date birthday;
	/** avatar **/
	private java.lang.String avatar;
	/** 情感状态 **/
	private java.lang.String emotional;
	/** 签名 **/
	private java.lang.String signature;
	/** 家乡城市 **/
	private java.lang.Long homeTown;
	/** 兴趣json串 **/
	private java.lang.String interest;
	/** 综合分数 **/
	private Long star;
	/** 信息真实度评分 **/
	private Long truthInfoStar;
	/** 亲切友好度评分 **/
	private Long friendlyStar;
	/** 颜值分数 **/
	private Long appearStar;
	/** createTime **/
	private java.util.Date createTime;
	/** status **/
	private java.lang.Integer status;
	/** lastLoginTime **/
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

	public void setLastLoginTime(java.util.Date value) {
		this.lastLoginTime = value;
	}
	
	public java.util.Date getLastLoginTime() {
		return this.lastLoginTime;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
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
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Tuser == false) return false;
		if(this == obj) return true;
		Tuser other = (Tuser)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

