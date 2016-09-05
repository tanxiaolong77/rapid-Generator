<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TactivityJoin.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<s:form action="/pages/TactivityJoin/list.do" method="get" theme="simple">
		<input type="button" value="返回列表" onclick="window.location='${ctx}/pages/TactivityJoin/list.do'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<s:hidden name="id" id="id" value="%{model.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=TactivityJoin.ALIAS_ACTIVITY_ID%></td>	
				<td><s:property value="%{model.activityId}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TactivityJoin.ALIAS_TEAM_ID%></td>	
				<td><s:property value="%{model.teamId}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TactivityJoin.ALIAS_CREATE_TIME%></td>	
				<td><s:property value="%{model.createTimeString}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TactivityJoin.ALIAS_END_TIME%></td>	
				<td><s:property value="%{model.endTimeString}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TactivityJoin.ALIAS_CREATOR_ID%></td>	
				<td><s:property value="%{model.creatorId}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TactivityJoin.ALIAS_USER_ID%></td>	
				<td><s:property value="%{model.userId}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TactivityJoin.ALIAS_STATUS%></td>	
				<td><s:property value="%{model.status}" /></td>
			</tr>
		</table>
	</s:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>