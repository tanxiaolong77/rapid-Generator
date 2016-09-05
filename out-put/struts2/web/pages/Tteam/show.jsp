<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Tteam.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<s:form action="/pages/Tteam/list.do" method="get" theme="simple">
		<input type="button" value="返回列表" onclick="window.location='${ctx}/pages/Tteam/list.do'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<s:hidden name="id" id="id" value="%{model.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_USER1_ID%></td>	
				<td><s:property value="%{model.user1Id}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_USER2_ID%></td>	
				<td><s:property value="%{model.user2Id}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_TYPE%></td>	
				<td><s:property value="%{model.type}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_CITY_ID%></td>	
				<td><s:property value="%{model.cityId}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_ADDRESS%></td>	
				<td><s:property value="%{model.address}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_PAY_TYPE%></td>	
				<td><s:property value="%{model.payType}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_FREE_TIME%></td>	
				<td><s:property value="%{model.freeTime}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_HAUNT%></td>	
				<td><s:property value="%{model.haunt}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_STATUS%></td>	
				<td><s:property value="%{model.status}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_CREATE_TIME%></td>	
				<td><s:property value="%{model.createTimeString}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_STAR%></td>	
				<td><s:property value="%{model.star}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_TEMP%></td>	
				<td><s:property value="%{model.temp}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_SIGNATURE%></td>	
				<td><s:property value="%{model.signature}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_FREE_DAY%></td>	
				<td><s:property value="%{model.freeDay}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_FOOD%></td>	
				<td><s:property value="%{model.food}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_ALCOHOL%></td>	
				<td><s:property value="%{model.alcohol}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_TEAM_GENDER%></td>	
				<td><s:property value="%{model.teamGender}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_PARTY_TIME%></td>	
				<td><s:property value="%{model.partyTime}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_FEE%></td>	
				<td><s:property value="%{model.fee}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_PAL_PURPOSE%></td>	
				<td><s:property value="%{model.palPurpose}" /></td>
			</tr>
		</table>
	</s:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>