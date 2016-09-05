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


public class Ttest extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "Ttest";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_LOCATION = "location";
	public static final String ALIAS_TITLE = "title";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@NotNull 
	private java.lang.Object location;
	@Length(max=200)
	private java.lang.String title;
	//columns END

	public Ttest(){
	}

	public Ttest(
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
	public void setLocation(java.lang.Object value) {
		this.location = value;
	}
	
	public java.lang.Object getLocation() {
		return this.location;
	}
	public void setTitle(java.lang.String value) {
		this.title = value;
	}
	
	public java.lang.String getTitle() {
		return this.title;
	}

	public String toString() {
		return new ToStringBuilder(this)
			.append("Id",getId())
			.append("Location",getLocation())
			.append("Title",getTitle())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getLocation())
			.append(getTitle())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Ttest == false) return false;
		if(this == obj) return true;
		Ttest other = (Ttest)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getLocation(),other.getLocation())
			.append(getTitle(),other.getTitle())
			.isEquals();
	}
}

