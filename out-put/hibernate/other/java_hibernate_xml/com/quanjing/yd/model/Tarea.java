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


public class Tarea extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "Tarea";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_CODE = "code";
	public static final String ALIAS_NAME = "name";
	public static final String ALIAS_LEVEL = "level";
	public static final String ALIAS_PARENT_ID = "parentId";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Integer id;
	@NotNull 
	private java.lang.Integer code;
	@NotBlank @Length(max=40)
	private java.lang.String name;
	
	private java.lang.Integer level;
	
	private java.lang.Integer parentId;
	//columns END

	public Tarea(){
	}

	public Tarea(
		java.lang.Integer id
	){
		this.id = id;
	}

	public void setId(java.lang.Integer value) {
		this.id = value;
	}
	
	public java.lang.Integer getId() {
		return this.id;
	}
	public void setCode(java.lang.Integer value) {
		this.code = value;
	}
	
	public java.lang.Integer getCode() {
		return this.code;
	}
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	public java.lang.String getName() {
		return this.name;
	}
	public void setLevel(java.lang.Integer value) {
		this.level = value;
	}
	
	public java.lang.Integer getLevel() {
		return this.level;
	}
	public void setParentId(java.lang.Integer value) {
		this.parentId = value;
	}
	
	public java.lang.Integer getParentId() {
		return this.parentId;
	}

	public String toString() {
		return new ToStringBuilder(this)
			.append("Id",getId())
			.append("Code",getCode())
			.append("Name",getName())
			.append("Level",getLevel())
			.append("ParentId",getParentId())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getCode())
			.append(getName())
			.append(getLevel())
			.append(getParentId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Tarea == false) return false;
		if(this == obj) return true;
		Tarea other = (Tarea)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getCode(),other.getCode())
			.append(getName(),other.getName())
			.append(getLevel(),other.getLevel())
			.append(getParentId(),other.getParentId())
			.isEquals();
	}
}

