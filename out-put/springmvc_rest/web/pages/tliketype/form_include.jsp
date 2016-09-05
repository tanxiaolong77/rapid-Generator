<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tlikeType.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TlikeType.ALIAS_TYPE_TEXT%>:
		</td>		
		<td>
		<form:input path="typeText" id="typeText" cssClass="required " maxlength="30" />
		<font color='red'><form:errors path="typeText"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TlikeType.ALIAS_CREATE_TIME%>:
		</td>		
		<td>
		<input value="${tlikeType.createTimeString}" onclick="WdatePicker({dateFmt:'<%=TlikeType.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="required " />
		<font color='red'><form:errors path="createTime"/></font>
		</td>
	</tr>	
	
		