<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Tteam.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="tteam"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/tteam'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${tteam.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_USER1_ID%></td>	
				<td><c:out value='${tteam.user1Id}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_USER2_ID%></td>	
				<td><c:out value='${tteam.user2Id}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_TYPE%></td>	
				<td><c:out value='${tteam.type}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_CITY_ID%></td>	
				<td><c:out value='${tteam.cityId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_ADDRESS%></td>	
				<td><c:out value='${tteam.address}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_PAY_TYPE%></td>	
				<td><c:out value='${tteam.payType}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_FREE_TIME%></td>	
				<td><c:out value='${tteam.freeTime}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_HAUNT%></td>	
				<td><c:out value='${tteam.haunt}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_STATUS%></td>	
				<td><c:out value='${tteam.status}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_CREATE_TIME%></td>	
				<td><c:out value='${tteam.createTimeString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_STAR%></td>	
				<td><c:out value='${tteam.star}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_TEMP%></td>	
				<td><c:out value='${tteam.temp}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_SIGNATURE%></td>	
				<td><c:out value='${tteam.signature}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_FREE_DAY%></td>	
				<td><c:out value='${tteam.freeDay}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_FOOD%></td>	
				<td><c:out value='${tteam.food}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_ALCOHOL%></td>	
				<td><c:out value='${tteam.alcohol}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_TEAM_GENDER%></td>	
				<td><c:out value='${tteam.teamGender}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_PARTY_TIME%></td>	
				<td><c:out value='${tteam.partyTime}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_FEE%></td>	
				<td><c:out value='${tteam.fee}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tteam.ALIAS_PAL_PURPOSE%></td>	
				<td><c:out value='${tteam.palPurpose}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>