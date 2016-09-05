<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${topenAppLog.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TopenAppLog.ALIAS_USER_ID%>:
		</td>		
		<td>
		<form:input path="userId" id="userId" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="userId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TopenAppLog.ALIAS_CREATE_TIME%>:
		</td>		
		<td>
		<input value="${topenAppLog.createTimeString}" onclick="WdatePicker({dateFmt:'<%=TopenAppLog.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="required " />
		<font color='red'><form:errors path="createTime"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TopenAppLog.ALIAS_DATE%>:
		</td>		
		<td>
		<form:input path="date" id="date" cssClass="required " maxlength="25" />
		<font color='red'><form:errors path="date"/></font>
		</td>
	</tr>	
	
		