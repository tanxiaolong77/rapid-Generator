<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TmsgBoard.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<s:form action="/pages/TmsgBoard/list.do" method="get" theme="simple">
		<input type="button" value="返回列表" onclick="window.location='${ctx}/pages/TmsgBoard/list.do'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<s:hidden name="id" id="id" value="%{model.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=TmsgBoard.ALIAS_TEAM1_ID%></td>	
				<td><s:property value="%{model.team1Id}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TmsgBoard.ALIAS_TEAM2_ID%></td>	
				<td><s:property value="%{model.team2Id}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TmsgBoard.ALIAS_CONTENT%></td>	
				<td><s:property value="%{model.content}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TmsgBoard.ALIAS_CREATE_TIME%></td>	
				<td><s:property value="%{model.createTimeString}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TmsgBoard.ALIAS_CREATOR%></td>	
				<td><s:property value="%{model.creator}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TmsgBoard.ALIAS_OFFER_ID%></td>	
				<td><s:property value="%{model.offerId}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TmsgBoard.ALIAS_ACTIVITY_JOIN_ID%></td>	
				<td><s:property value="%{model.activityJoinId}" /></td>
			</tr>
		</table>
	</s:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>