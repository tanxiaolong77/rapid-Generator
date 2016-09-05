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
@Table(name = "t_open_user")
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
	
	@Id @GeneratedValue(generator="custom-id")
	@GenericGenerator(name="custom-id", strategy = "increment")
	@Column(name = "id", unique = true, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getId() {
		return this.id;
	}
	
	@Column(name = "open_id", unique = false, nullable = false, insertable = true, updatable = true, length = 100)
	public java.lang.String getOpenId() {
		return this.openId;
	}
	
	public void setOpenId(java.lang.String value) {
		this.openId = value;
	}
	
	@Column(name = "union_id", unique = false, nullable = true, insertable = true, updatable = true, length = 100)
	public java.lang.String getUnionId() {
		return this.unionId;
	}
	
	public void setUnionId(java.lang.String value) {
		this.unionId = value;
	}
	
	@Column(name = "platform", unique = false, nullable = false, insertable = true, updatable = true, length = 20)
	public java.lang.String getPlatform() {
		return this.platform;
	}
	
	public void setPlatform(java.lang.String value) {
		this.platform = value;
	}
	
	@Column(name = "user_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getUserId() {
		return this.userId;
	}
	
	public void setUserId(java.lang.Long value) {
		this.userId = value;
	}
	

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
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
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof TopenUser == false) return false;
		if(this == obj) return true;
		TopenUser other = (TopenUser)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

