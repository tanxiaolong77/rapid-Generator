<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tquickMatchMsgBoard.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TquickMatchMsgBoard.ALIAS_TEAM1_ID%>:
		</td>		
		<td>
		<form:input path="team1Id" id="team1Id" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="team1Id"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TquickMatchMsgBoard.ALIAS_TEAM2_ID%>:
		</td>		
		<td>
		<form:input path="team2Id" id="team2Id" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="team2Id"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TquickMatchMsgBoard.ALIAS_CONTENT%>:
		</td>		
		<td>
		<form:input path="content" id="content" cssClass="" maxlength="3000" />
		<font color='red'><form:errors path="content"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TquickMatchMsgBoard.ALIAS_CREATE_TIME%>:
		</td>		
		<td>
		<input value="${tquickMatchMsgBoard.createTimeString}" onclick="WdatePicker({dateFmt:'<%=TquickMatchMsgBoard.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="required " />
		<font color='red'><form:errors path="createTime"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TquickMatchMsgBoard.ALIAS_CREATOR%>:
		</td>		
		<td>
		<form:input path="creator" id="creator" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="creator"/></font>
		</td>
	</tr>	
	
		