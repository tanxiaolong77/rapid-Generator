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


public class TinvitationQuery extends BaseQuery implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//columns START
		/** id **/
		private java.lang.Long id;
		/** sendId **/
		private java.lang.Long sendId;
		/** receiveId **/
		private java.lang.Long receiveId;
		/** 类型:1:好友邀请  2:搭档邀请 3:临时team邀请 **/
		private java.lang.Integer type;
		/** 0：未同意邀请  1：同意邀请 **/
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

		public void setSendId(java.lang.Long value) {
			this.sendId = value;
		}
		
		public java.lang.Long getSendId() {
			return this.sendId;
		}

		public void setReceiveId(java.lang.Long value) {
			this.receiveId = value;
		}
		
		public java.lang.Long getReceiveId() {
			return this.receiveId;
		}

		public void setType(java.lang.Integer value) {
			this.type = value;
		}
		
		public java.lang.Integer getType() {
			return this.type;
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
				.append("SendId",getSendId())
				.append("ReceiveId",getReceiveId())
				.append("Type",getType())
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
			if(obj instanceof Tinvitation == false) return false;
			if(this == obj) return true;
			TinvitationQuery other = (TinvitationQuery)obj;
			return new EqualsBuilder()
				.append(getId(),other.getId())
				.isEquals();
		}
	}

