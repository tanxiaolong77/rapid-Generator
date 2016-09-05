/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2016
 */

package com.quanjing.yd.model;
import com.quanjing.util.framework.BaseQuery;

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


public class TrecommendRuleQuery extends BaseQuery implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//columns START
		/** id **/
		private java.lang.Integer id;
		/** 规则名称 **/
		private java.lang.String name;
		/** 开放推荐数量 **/
		private java.lang.Integer openNum;
		/** 完成条件数 **/
		private java.lang.Integer conditionNum;
		/** 按钮文本 **/
		private java.lang.String btnExplain;
		/** 0:不需要跳转,1:完善资料,2:邀请好友,3:实名认证 **/
		private java.lang.Integer type;
		//columns END


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
			TrecommendRuleQuery other = (TrecommendRuleQuery)obj;
			return new EqualsBuilder()
				.append(getId(),other.getId())
				.isEquals();
		}
	}

