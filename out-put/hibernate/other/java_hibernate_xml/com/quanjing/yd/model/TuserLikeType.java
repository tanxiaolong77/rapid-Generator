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


public class TuserLikeType extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "TuserLikeType";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_USER_ID = "userId";
	public static final String ALIAS_TYPE = "type";
	public static final String ALIAS_TYPE_TEXT = "typeText";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@NotNull 
	private java.lang.Long userId;
	
	private java.lang.Integer type;
	@Length(max=30)
	private java.lang.String typeText;
	//columns END

	public TuserLikeType(){
	}

	public TuserLikeType(
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
	public void setUserId(java.lang.Long value) {
		this.userId = value;
	}
	
	public java.lang.Long getUserId() {
		return this.userId;
	}
	public void setType(java.lang.Integer value) {
		this.type = value;
	}
	
	public java.lang.Integer getType() {
		return this.type;
	}
	public void setTypeText(java.lang.String value) {
		this.typeText = value;
	}
	
	public java.lang.String getTypeText() {
		return this.typeText;
	}

	public String toString() {
		return new ToStringBuilder(this)
			.append("Id",getId())
			.append("UserId",getUserId())
			.append("Type",getType())
			.append("TypeText",getTypeText())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUserId())
			.append(getType())
			.append(getTypeText())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof TuserLikeType == false) return false;
		if(this == obj) return true;
		TuserLikeType other = (TuserLikeType)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUserId(),other.getUserId())
			.append(getType(),other.getType())
			.append(getTypeText(),other.getTypeText())
			.isEquals();
	}
}

