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


public class Tschool extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "Tschool";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_PID = "pid";
	public static final String ALIAS_NAME = "name";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Integer id;
	@NotNull 
	private java.lang.Integer pid;
	@NotBlank @Length(max=255)
	private java.lang.String name;
	//columns END

	public Tschool(){
	}

	public Tschool(
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
	public void setPid(java.lang.Integer value) {
		this.pid = value;
	}
	
	public java.lang.Integer getPid() {
		return this.pid;
	}
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	public java.lang.String getName() {
		return this.name;
	}

	public String toString() {
		return new ToStringBuilder(this)
			.append("Id",getId())
			.append("Pid",getPid())
			.append("Name",getName())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getPid())
			.append(getName())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Tschool == false) return false;
		if(this == obj) return true;
		Tschool other = (Tschool)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getPid(),other.getPid())
			.append(getName(),other.getName())
			.isEquals();
	}
}

