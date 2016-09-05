<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tactivityJoin.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TactivityJoin.ALIAS_ACTIVITY_ID%>:
		</td>		
		<td>
		<form:input path="activityId" id="activityId" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="activityId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TactivityJoin.ALIAS_TEAM_ID%>:
		</td>		
		<td>
		<form:input path="teamId" id="teamId" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="teamId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TactivityJoin.ALIAS_CREATE_TIME%>:
		</td>		
		<td>
		<input value="${tactivityJoin.createTimeString}" onclick="WdatePicker({dateFmt:'<%=TactivityJoin.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="required " />
		<font color='red'><form:errors path="createTime"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TactivityJoin.ALIAS_END_TIME%>:
		</td>		
		<td>
		<input value="${tactivityJoin.endTimeString}" onclick="WdatePicker({dateFmt:'<%=TactivityJoin.FORMAT_END_TIME%>'})" id="endTimeString" name="endTimeString"  maxlength="0" class="" />
		<font color='red'><form:errors path="endTime"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TactivityJoin.ALIAS_CREATOR_ID%>:
		</td>		
		<td>
		<form:input path="creatorId" id="creatorId" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="creatorId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TactivityJoin.ALIAS_USER_ID%>:
		</td>		
		<td>
		<form:input path="userId" id="userId" cssClass="validate-integer " maxlength="19" />
		<font color='red'><form:errors path="userId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TactivityJoin.ALIAS_STATUS%>:
		</td>		
		<td>
		<form:input path="status" id="status" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="status"/></font>
		</td>
	</tr>	
	
		