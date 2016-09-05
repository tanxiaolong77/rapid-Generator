<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${toffer.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Toffer.ALIAS_CREATOR_ID%>:
		</td>		
		<td>
		<form:input path="creatorId" id="creatorId" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="creatorId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Toffer.ALIAS_TEAM1_ID%>:
		</td>		
		<td>
		<form:input path="team1Id" id="team1Id" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="team1Id"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Toffer.ALIAS_TEAM2_ID%>:
		</td>		
		<td>
		<form:input path="team2Id" id="team2Id" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="team2Id"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Toffer.ALIAS_STATUS%>:
		</td>		
		<td>
		<form:input path="status" id="status" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="status"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Toffer.ALIAS_CREATE_TIME%>:
		</td>		
		<td>
		<input value="${toffer.createTimeString}" onclick="WdatePicker({dateFmt:'<%=Toffer.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="" />
		<font color='red'><form:errors path="createTime"/></font>
		</td>
	</tr>	
	
		