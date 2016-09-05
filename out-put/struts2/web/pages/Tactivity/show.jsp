<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Tactivity.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<s:form action="/pages/Tactivity/list.do" method="get" theme="simple">
		<input type="button" value="返回列表" onclick="window.location='${ctx}/pages/Tactivity/list.do'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<s:hidden name="id" id="id" value="%{model.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_CREATOR_ID%></td>	
				<td><s:property value="%{model.creatorId}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_USER_ID%></td>	
				<td><s:property value="%{model.userId}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_TEAM_ID%></td>	
				<td><s:property value="%{model.teamId}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_TYPE%></td>	
				<td><s:property value="%{model.type}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_TITLE%></td>	
				<td><s:property value="%{model.title}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_INTRODUCE%></td>	
				<td><s:property value="%{model.introduce}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_LINK%></td>	
				<td><s:property value="%{model.link}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_CITY_ID%></td>	
				<td><s:property value="%{model.cityId}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_ADDRESS%></td>	
				<td><s:property value="%{model.address}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_REQUIRE%></td>	
				<td><s:property value="%{model.require}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_START_TIME%></td>	
				<td><s:property value="%{model.startTimeString}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_CREATE_TIME%></td>	
				<td><s:property value="%{model.createTimeString}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_END_TIME%></td>	
				<td><s:property value="%{model.endTimeString}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_FEE%></td>	
				<td><s:property value="%{model.fee}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_VIEW_COUNT%></td>	
				<td><s:property value="%{model.viewCount}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_STATUS%></td>	
				<td><s:property value="%{model.status}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_LNG%></td>	
				<td><s:property value="%{model.lng}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_LAT%></td>	
				<td><s:property value="%{model.lat}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_PAY_TYPE%></td>	
				<td><s:property value="%{model.payType}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_GENDER%></td>	
				<td><s:property value="%{model.gender}" /></td>
			</tr>
		</table>
	</s:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>