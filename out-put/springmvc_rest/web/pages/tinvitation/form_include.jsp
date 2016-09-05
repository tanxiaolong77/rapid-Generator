<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tinvitation.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tinvitation.ALIAS_SEND_ID%>:
		</td>		
		<td>
		<form:input path="sendId" id="sendId" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="sendId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tinvitation.ALIAS_RECEIVE_ID%>:
		</td>		
		<td>
		<form:input path="receiveId" id="receiveId" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="receiveId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tinvitation.ALIAS_TYPE%>:
		</td>		
		<td>
		<form:input path="type" id="type" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="type"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tinvitation.ALIAS_STATUS%>:
		</td>		
		<td>
		<form:input path="status" id="status" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="status"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tinvitation.ALIAS_CREATE_TIME%>:
		</td>		
		<td>
		<input value="${tinvitation.createTimeString}" onclick="WdatePicker({dateFmt:'<%=Tinvitation.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="" />
		<font color='red'><form:errors path="createTime"/></font>
		</td>
	</tr>	
	
		