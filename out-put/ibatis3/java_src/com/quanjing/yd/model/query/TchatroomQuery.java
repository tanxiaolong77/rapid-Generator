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


public class TchatroomQuery extends BaseQuery implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//columns START
		/** id **/
		private java.lang.Long id;
		/** 聊天室名称 **/
		private java.lang.String name;
		/** 1：offer，2：活动，3：速配 **/
		private java.lang.Integer sourceType;
		/** 来源id **/
		private java.lang.Long sourceId;
		/** 0：有效，1：无效 **/
		private java.lang.Integer status;
		/** createTime **/
		private java.util.Date createTime;
		//columns END


		public void setId(java.lang.Long value) {
			this.id = value;
		}
		
		public java.lang.Long getId() {
			return this.id;
		}

		public void setName(java.lang.String value) {
			this.name = value;
		}
		
		public java.lang.String getName() {
			return this.name;
		}

		public void setSourceType(java.lang.Integer value) {
			this.sourceType = value;
		}
		
		public java.lang.Integer getSourceType() {
			return this.sourceType;
		}

		public void setSourceId(java.lang.Long value) {
			this.sourceId = value;
		}
		
		public java.lang.Long getSourceId() {
			return this.sourceId;
		}

		public void setStatus(java.lang.Integer value) {
			this.status = value;
		}
		
		public java.lang.Integer getStatus() {
			return this.status;
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
				.append("Name",getName())
				.append("SourceType",getSourceType())
				.append("SourceId",getSourceId())
				.append("Status",getStatus())
				.append("CreateTime",getCreateTime())
				.toString();
		}
		
		public int hashCode() {
			return new HashCodeBuilder()
				.append(getId())
				.toHashCode();
		}
		
		public boolean equals(Object obj) {
			if(obj instanceof Tchatroom == false) return false;
			if(this == obj) return true;
			TchatroomQuery other = (TchatroomQuery)obj;
			return new EqualsBuilder()
				.append(getId(),other.getId())
				.isEquals();
		}
	}

