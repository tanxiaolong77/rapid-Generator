<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Tactivity.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="tactivity"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/tactivity'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${tactivity.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_CREATOR_ID%></td>	
				<td><c:out value='${tactivity.creatorId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_USER_ID%></td>	
				<td><c:out value='${tactivity.userId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_TEAM_ID%></td>	
				<td><c:out value='${tactivity.teamId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_TYPE%></td>	
				<td><c:out value='${tactivity.type}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_TITLE%></td>	
				<td><c:out value='${tactivity.title}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_INTRODUCE%></td>	
				<td><c:out value='${tactivity.introduce}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_LINK%></td>	
				<td><c:out value='${tactivity.link}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_CITY_ID%></td>	
				<td><c:out value='${tactivity.cityId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_ADDRESS%></td>	
				<td><c:out value='${tactivity.address}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_REQUIRE%></td>	
				<td><c:out value='${tactivity.require}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_START_TIME%></td>	
				<td><c:out value='${tactivity.startTimeString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_CREATE_TIME%></td>	
				<td><c:out value='${tactivity.createTimeString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_END_TIME%></td>	
				<td><c:out value='${tactivity.endTimeString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_FEE%></td>	
				<td><c:out value='${tactivity.fee}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_VIEW_COUNT%></td>	
				<td><c:out value='${tactivity.viewCount}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_STATUS%></td>	
				<td><c:out value='${tactivity.status}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_LNG%></td>	
				<td><c:out value='${tactivity.lng}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_LAT%></td>	
				<td><c:out value='${tactivity.lat}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_PAY_TYPE%></td>	
				<td><c:out value='${tactivity.payType}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tactivity.ALIAS_GENDER%></td>	
				<td><c:out value='${tactivity.gender}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>