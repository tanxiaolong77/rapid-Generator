<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.quanjing.yd.model.TnonUserInvitation@ALIAS_SEND_ID}" key="sendId" value="%{model.sendId}" cssClass="required validate-integer " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TnonUserInvitation@ALIAS_RECEIVE_PHONE}" key="receivePhone" value="%{model.receivePhone}" cssClass="required " required="true" />
	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TnonUserInvitation.ALIAS_CREATE_TIME%>:
		</td>	
		<td>
		<input value="${model.createTimeString}" onclick="WdatePicker({dateFmt:'<%=TnonUserInvitation.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="required " />
		</td>
	</tr>
	
