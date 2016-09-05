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


public class TopenUser extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "TopenUser";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_OPEN_ID = "openId";
	public static final String ALIAS_UNION_ID = "unionId";
	public static final String ALIAS_PLATFORM = "platform";
	public static final String ALIAS_USER_ID = "userId";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@NotBlank @Length(max=100)
	private java.lang.String openId;
	@Length(max=100)
	private java.lang.String unionId;
	@NotBlank @Length(max=20)
	private java.lang.String platform;
	@NotNull 
	private java.lang.Long userId;
	//columns END

	public TopenUser(){
	}

	public TopenUser(
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
	public void setOpenId(java.lang.String value) {
		this.openId = value;
	}
	
	public java.lang.String getOpenId() {
		return this.openId;
	}
	public void setUnionId(java.lang.String value) {
		this.unionId = value;
	}
	
	public java.lang.String getUnionId() {
		return this.unionId;
	}
	public void setPlatform(java.lang.String value) {
		this.platform = value;
	}
	
	public java.lang.String getPlatform() {
		return this.platform;
	}
	public void setUserId(java.lang.Long value) {
		this.userId = value;
	}
	
	public java.lang.Long getUserId() {
		return this.userId;
	}

	public String toString() {
		return new ToStringBuilder(this)
			.append("Id",getId())
			.append("OpenId",getOpenId())
			.append("UnionId",getUnionId())
			.append("Platform",getPlatform())
			.append("UserId",getUserId())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getOpenId())
			.append(getUnionId())
			.append(getPlatform())
			.append(getUserId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof TopenUser == false) return false;
		if(this == obj) return true;
		TopenUser other = (TopenUser)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getOpenId(),other.getOpenId())
			.append(getUnionId(),other.getUnionId())
			.append(getPlatform(),other.getPlatform())
			.append(getUserId(),other.getUserId())
			.isEquals();
	}
}

