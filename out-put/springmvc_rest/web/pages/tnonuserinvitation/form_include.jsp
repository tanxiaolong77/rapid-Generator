<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tnonUserInvitation.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TnonUserInvitation.ALIAS_SEND_ID%>:
		</td>		
		<td>
		<form:input path="sendId" id="sendId" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="sendId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TnonUserInvitation.ALIAS_RECEIVE_PHONE%>:
		</td>		
		<td>
		<form:input path="receivePhone" id="receivePhone" cssClass="required " maxlength="50" />
		<font color='red'><form:errors path="receivePhone"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TnonUserInvitation.ALIAS_CREATE_TIME%>:
		</td>		
		<td>
		<input value="${tnonUserInvitation.createTimeString}" onclick="WdatePicker({dateFmt:'<%=TnonUserInvitation.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="required " />
		<font color='red'><form:errors path="createTime"/></font>
		</td>
	</tr>	
	
		