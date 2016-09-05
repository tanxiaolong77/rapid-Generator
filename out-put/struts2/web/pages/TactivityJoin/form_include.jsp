<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.quanjing.yd.model.TactivityJoin@ALIAS_ACTIVITY_ID}" key="activityId" value="%{model.activityId}" cssClass="required validate-integer " required="true" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TactivityJoin@ALIAS_TEAM_ID}" key="teamId" value="%{model.teamId}" cssClass="validate-integer " required="false" />
	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TactivityJoin.ALIAS_CREATE_TIME%>:
		</td>	
		<td>
		<input value="${model.createTimeString}" onclick="WdatePicker({dateFmt:'<%=TactivityJoin.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="required " />
		</td>
	</tr>
	
	
	<tr>	
		<td class="tdLabel">
			<%=TactivityJoin.ALIAS_END_TIME%>:
		</td>	
		<td>
		<input value="${model.endTimeString}" onclick="WdatePicker({dateFmt:'<%=TactivityJoin.FORMAT_END_TIME%>'})" id="endTimeString" name="endTimeString"  maxlength="0" class="" />
		</td>
	</tr>
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TactivityJoin@ALIAS_CREATOR_ID}" key="creatorId" value="%{model.creatorId}" cssClass="validate-integer " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TactivityJoin@ALIAS_USER_ID}" key="userId" value="%{model.userId}" cssClass="validate-integer " required="false" />
	
	
	<s:textfield label="%{@com.quanjing.yd.model.TactivityJoin@ALIAS_STATUS}" key="status" value="%{model.status}" cssClass="required validate-integer max-value-2147483647" required="true" />
	
