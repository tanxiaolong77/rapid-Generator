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


public class TquickMatchQuery extends BaseQuery implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//columns START
		/** id **/
		private java.lang.Long id;
		/** team1Id **/
		private java.lang.Long team1Id;
		/** team2Id **/
		private java.lang.Long team2Id;
		/** createTime **/
		private java.util.Date createTime;
		/** creator **/
		private java.lang.Long creator;
		/** status **/
		private java.lang.Integer status;
		//columns END


		public void setId(java.lang.Long value) {
			this.id = value;
		}
		
		public java.lang.Long getId() {
			return this.id;
		}

		public void setTeam1Id(java.lang.Long value) {
			this.team1Id = value;
		}
		
		public java.lang.Long getTeam1Id() {
			return this.team1Id;
		}

		public void setTeam2Id(java.lang.Long value) {
			this.team2Id = value;
		}
		
		public java.lang.Long getTeam2Id() {
			return this.team2Id;
		}

		public void setCreateTime(java.util.Date value) {
			this.createTime = value;
		}
		
		public java.util.Date getCreateTime() {
			return this.createTime;
		}

		public void setCreator(java.lang.Long value) {
			this.creator = value;
		}
		
		public java.lang.Long getCreator() {
			return this.creator;
		}

		public void setStatus(java.lang.Integer value) {
			this.status = value;
		}
		
		public java.lang.Integer getStatus() {
			return this.status;
		}

		public String toString() {
			return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
				.append("Id",getId())
				.append("Team1Id",getTeam1Id())
				.append("Team2Id",getTeam2Id())
				.append("CreateTime",getCreateTime())
				.append("Creator",getCreator())
				.append("Status",getStatus())
				.toString();
		}
		
		public int hashCode() {
			return new HashCodeBuilder()
				.append(getId())
				.toHashCode();
		}
		
		public boolean equals(Object obj) {
			if(obj instanceof TquickMatch == false) return false;
			if(this == obj) return true;
			TquickMatchQuery other = (TquickMatchQuery)obj;
			return new EqualsBuilder()
				.append(getId(),other.getId())
				.isEquals();
		}
	}

