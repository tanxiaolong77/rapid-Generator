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


public class TrecommendRule extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "TrecommendRule";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_NAME = "name";
	public static final String ALIAS_OPEN_NUM = "openNum";
	public static final String ALIAS_CONDITION_NUM = "conditionNum";
	public static final String ALIAS_BTN_EXPLAIN = "btnExplain";
	public static final String ALIAS_TYPE = "type";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Integer id;
	@NotBlank @Length(max=100)
	private java.lang.String name;
	@NotNull 
	private java.lang.Integer openNum;
	@NotNull 
	private java.lang.Integer conditionNum;
	@Length(max=20)
	private java.lang.String btnExplain;
	
	private java.lang.Integer type;
	//columns END

	public TrecommendRule(){
	}

	public TrecommendRule(
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
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	public java.lang.String getName() {
		return this.name;
	}
	public void setOpenNum(java.lang.Integer value) {
		this.openNum = value;
	}
	
	public java.lang.Integer getOpenNum() {
		return this.openNum;
	}
	public void setConditionNum(java.lang.Integer value) {
		this.conditionNum = value;
	}
	
	public java.lang.Integer getConditionNum() {
		return this.conditionNum;
	}
	public void setBtnExplain(java.lang.String value) {
		this.btnExplain = value;
	}
	
	public java.lang.String getBtnExplain() {
		return this.btnExplain;
	}
	public void setType(java.lang.Integer value) {
		this.type = value;
	}
	
	public java.lang.Integer getType() {
		return this.type;
	}

	public String toString() {
		return new ToStringBuilder(this)
			.append("Id",getId())
			.append("Name",getName())
			.append("OpenNum",getOpenNum())
			.append("ConditionNum",getConditionNum())
			.append("BtnExplain",getBtnExplain())
			.append("Type",getType())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getName())
			.append(getOpenNum())
			.append(getConditionNum())
			.append(getBtnExplain())
			.append(getType())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof TrecommendRule == false) return false;
		if(this == obj) return true;
		TrecommendRule other = (TrecommendRule)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getName(),other.getName())
			.append(getOpenNum(),other.getOpenNum())
			.append(getConditionNum(),other.getConditionNum())
			.append(getBtnExplain(),other.getBtnExplain())
			.append(getType(),other.getType())
			.isEquals();
	}
}

