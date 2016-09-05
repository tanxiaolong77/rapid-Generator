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
@Table(name = "t_recommend_rule")
public class TrecommendRule extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "TrecommendRule";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_NAME = "规则名称";
	public static final String ALIAS_OPEN_NUM = "开放推荐数量";
	public static final String ALIAS_CONDITION_NUM = "完成条件数";
	public static final String ALIAS_BTN_EXPLAIN = "按钮文本";
	public static final String ALIAS_TYPE = "0:不需要跳转,1:完善资料,2:邀请好友,3:实名认证";
	
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
	
	@Id @GeneratedValue(generator="custom-id")
	@GenericGenerator(name="custom-id", strategy = "increment")
	@Column(name = "id", unique = true, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getId() {
		return this.id;
	}
	
	@Column(name = "name", unique = false, nullable = false, insertable = true, updatable = true, length = 100)
	public java.lang.String getName() {
		return this.name;
	}
	
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	@Column(name = "open_num", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getOpenNum() {
		return this.openNum;
	}
	
	public void setOpenNum(java.lang.Integer value) {
		this.openNum = value;
	}
	
	@Column(name = "condition_num", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getConditionNum() {
		return this.conditionNum;
	}
	
	public void setConditionNum(java.lang.Integer value) {
		this.conditionNum = value;
	}
	
	@Column(name = "btn_explain", unique = false, nullable = true, insertable = true, updatable = true, length = 20)
	public java.lang.String getBtnExplain() {
		return this.btnExplain;
	}
	
	public void setBtnExplain(java.lang.String value) {
		this.btnExplain = value;
	}
	
	@Column(name = "type", unique = false, nullable = true, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getType() {
		return this.type;
	}
	
	public void setType(java.lang.Integer value) {
		this.type = value;
	}
	

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
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
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof TrecommendRule == false) return false;
		if(this == obj) return true;
		TrecommendRule other = (TrecommendRule)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

