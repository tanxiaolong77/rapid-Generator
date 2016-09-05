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


public class TdynamicCommentQuery extends BaseQuery implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//columns START
		/** id **/
		private java.lang.Long id;
		/** dynamicId **/
		private java.lang.Long dynamicId;
		/** userId **/
		private java.lang.Long userId;
		/** comment **/
		private java.lang.String comment;
		/** createTime **/
		private java.util.Date createTime;
		/** ip **/
		private java.lang.String ip;
		//columns END


		public void setId(java.lang.Long value) {
			this.id = value;
		}
		
		public java.lang.Long getId() {
			return this.id;
		}

		public void setDynamicId(java.lang.Long value) {
			this.dynamicId = value;
		}
		
		public java.lang.Long getDynamicId() {
			return this.dynamicId;
		}

		public void setUserId(java.lang.Long value) {
			this.userId = value;
		}
		
		public java.lang.Long getUserId() {
			return this.userId;
		}

		public void setComment(java.lang.String value) {
			this.comment = value;
		}
		
		public java.lang.String getComment() {
			return this.comment;
		}

		public void setCreateTime(java.util.Date value) {
			this.createTime = value;
		}
		
		public java.util.Date getCreateTime() {
			return this.createTime;
		}

		public void setIp(java.lang.String value) {
			this.ip = value;
		}
		
		public java.lang.String getIp() {
			return this.ip;
		}

		public String toString() {
			return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
				.append("Id",getId())
				.append("DynamicId",getDynamicId())
				.append("UserId",getUserId())
				.append("Comment",getComment())
				.append("CreateTime",getCreateTime())
				.append("Ip",getIp())
				.toString();
		}
		
		public int hashCode() {
			return new HashCodeBuilder()
				.append(getId())
				.toHashCode();
		}
		
		public boolean equals(Object obj) {
			if(obj instanceof TdynamicComment == false) return false;
			if(this == obj) return true;
			TdynamicCommentQuery other = (TdynamicCommentQuery)obj;
			return new EqualsBuilder()
				.append(getId(),other.getId())
				.isEquals();
		}
	}

