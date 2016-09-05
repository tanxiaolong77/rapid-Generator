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
@Table(name = "test")
public class Test extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "Test";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_NAME = "name";
	public static final String ALIAS_PNT = "pnt";
	public static final String ALIAS_LINE = "line";
	public static final String ALIAS_PGN = "pgn";
	
	//date formats
	

	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Integer id;
	@NotBlank @Length(max=128)
	private java.lang.String name;
	@NotNull 
	private java.lang.Object pnt;
	
	private java.lang.Object line;
	
	private java.lang.Object pgn;
	//columns END


	public Test(){
	}

	public Test(
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
	
	@Column(name = "name", unique = false, nullable = false, insertable = true, updatable = true, length = 128)
	public java.lang.String getName() {
		return this.name;
	}
	
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	@Column(name = "pnt", unique = false, nullable = false, insertable = true, updatable = true, length = 0)
	public java.lang.Object getPnt() {
		return this.pnt;
	}
	
	public void setPnt(java.lang.Object value) {
		this.pnt = value;
	}
	
	@Column(name = "line", unique = false, nullable = true, insertable = true, updatable = true, length = 0)
	public java.lang.Object getLine() {
		return this.line;
	}
	
	public void setLine(java.lang.Object value) {
		this.line = value;
	}
	
	@Column(name = "pgn", unique = false, nullable = true, insertable = true, updatable = true, length = 0)
	public java.lang.Object getPgn() {
		return this.pgn;
	}
	
	public void setPgn(java.lang.Object value) {
		this.pgn = value;
	}
	

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("Name",getName())
			.append("Pnt",getPnt())
			.append("Line",getLine())
			.append("Pgn",getPgn())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Test == false) return false;
		if(this == obj) return true;
		Test other = (Test)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

