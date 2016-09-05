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
@Table(name = "t_msg_board_v2")
public class TmsgBoardV2 extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "TmsgBoardV2";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_USER_ID = "用户id";
	public static final String ALIAS_CHATROOM_ID = "聊天室id";
	public static final String ALIAS_CONTENT = "内容";
	public static final String ALIAS_TYPE = "0：普通内容，1：系统内容";
	public static final String ALIAS_CREATE_TIME = "createTime";
	
	//date formats
	public static final String FORMAT_CREATE_TIME = DATE_FORMAT;
	

	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Integer id;
	@NotNull 
	private java.lang.Long userId;
	@NotNull 
	private java.lang.Long chatroomId;
	@Length(max=3000)
	private java.lang.String content;
	@NotNull 
	private java.lang.Integer type;
	@NotNull 
	private java.util.Date createTime;
	//columns END


	public TmsgBoardV2(){
	}

	public TmsgBoardV2(
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
	
	@Column(name = "user_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getUserId() {
		return this.userId;
	}
	
	public void setUserId(java.lang.Long value) {
		this.userId = value;
	}
	
	@Column(name = "chatroom_id", unique = false, nullable = false, insertable = true, updatable = true, length = 19)
	public java.lang.Long getChatroomId() {
		return this.chatroomId;
	}
	
	public void setChatroomId(java.lang.Long value) {
		this.chatroomId = value;
	}
	
	@Column(name = "content", unique = false, nullable = true, insertable = true, updatable = true, length = 3000)
	public java.lang.String getContent() {
		return this.content;
	}
	
	public void setContent(java.lang.String value) {
		this.content = value;
	}
	
	@Column(name = "type", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getType() {
		return this.type;
	}
	
	public void setType(java.lang.Integer value) {
		this.type = value;
	}
	
	@Transient
	public String getCreateTimeString() {
		return DateConvertUtils.format(getCreateTime(), FORMAT_CREATE_TIME);
	}
	public void setCreateTimeString(String value) {
		setCreateTime(DateConvertUtils.parse(value, FORMAT_CREATE_TIME,java.util.Date.class));
	}
	
	@Column(name = "create_time", unique = false, nullable = false, insertable = true, updatable = true, length = 0)
	public java.util.Date getCreateTime() {
		return this.createTime;
	}
	
	public void setCreateTime(java.util.Date value) {
		this.createTime = value;
	}
	

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("UserId",getUserId())
			.append("ChatroomId",getChatroomId())
			.append("Content",getContent())
			.append("Type",getType())
			.append("CreateTime",getCreateTime())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof TmsgBoardV2 == false) return false;
		if(this == obj) return true;
		TmsgBoardV2 other = (TmsgBoardV2)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

