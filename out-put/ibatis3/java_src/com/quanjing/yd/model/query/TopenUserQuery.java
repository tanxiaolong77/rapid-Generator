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


public class TopenUserQuery extends BaseQuery implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//columns START
		/** id **/
		private java.lang.Long id;
		/** openId **/
		private java.lang.String openId;
		/** unionId **/
		private java.lang.String unionId;
		/** platform **/
		private java.lang.String platform;
		/** userId **/
		private java.lang.Long userId;
		//columns END


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
			TopenUserQuery other = (TopenUserQuery)obj;
			return new EqualsBuilder()
				.append(getId(),other.getId())
				.isEquals();
		}
	}

