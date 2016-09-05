<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TactivityJoin.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="tactivityjoin"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/tactivityjoin'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${tactivityJoin.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=TactivityJoin.ALIAS_ACTIVITY_ID%></td>	
				<td><c:out value='${tactivityJoin.activityId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TactivityJoin.ALIAS_TEAM_ID%></td>	
				<td><c:out value='${tactivityJoin.teamId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TactivityJoin.ALIAS_CREATE_TIME%></td>	
				<td><c:out value='${tactivityJoin.createTimeString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TactivityJoin.ALIAS_END_TIME%></td>	
				<td><c:out value='${tactivityJoin.endTimeString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TactivityJoin.ALIAS_CREATOR_ID%></td>	
				<td><c:out value='${tactivityJoin.creatorId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TactivityJoin.ALIAS_USER_ID%></td>	
				<td><c:out value='${tactivityJoin.userId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TactivityJoin.ALIAS_STATUS%></td>	
				<td><c:out value='${tactivityJoin.status}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>