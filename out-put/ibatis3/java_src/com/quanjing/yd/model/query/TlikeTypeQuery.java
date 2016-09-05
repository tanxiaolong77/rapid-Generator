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


public class TlikeTypeQuery extends BaseQuery implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//columns START
		/** id **/
		private java.lang.Long id;
		/** typeText **/
		private java.lang.String typeText;
		/** createTime **/
		private java.util.Date createTime;
		//columns END


		public void setId(java.lang.Long value) {
			this.id = value;
		}
		
		public java.lang.Long getId() {
			return this.id;
		}

		public void setTypeText(java.lang.String value) {
			this.typeText = value;
		}
		
		public java.lang.String getTypeText() {
			return this.typeText;
		}

		public void setCreateTime(java.util.Date value) {
			this.createTime = value;
		}
		
		public java.util.Date getCreateTime() {
			return this.createTime;
		}

		public String toString() {
			return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
				.append("Id",getId())
				.append("TypeText",getTypeText())
				.append("CreateTime",getCreateTime())
				.toString();
		}
		
		public int hashCode() {
			return new HashCodeBuilder()
				.append(getId())
				.toHashCode();
		}
		
		public boolean equals(Object obj) {
			if(obj instanceof TlikeType == false) return false;
			if(this == obj) return true;
			TlikeTypeQuery other = (TlikeTypeQuery)obj;
			return new EqualsBuilder()
				.append(getId(),other.getId())
				.isEquals();
		}
	}

