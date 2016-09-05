<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TquickMatch.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="tquickmatch"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/tquickmatch'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${tquickMatch.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=TquickMatch.ALIAS_TEAM1_ID%></td>	
				<td><c:out value='${tquickMatch.team1Id}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TquickMatch.ALIAS_TEAM2_ID%></td>	
				<td><c:out value='${tquickMatch.team2Id}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TquickMatch.ALIAS_CREATE_TIME%></td>	
				<td><c:out value='${tquickMatch.createTimeString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TquickMatch.ALIAS_CREATOR%></td>	
				<td><c:out value='${tquickMatch.creator}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TquickMatch.ALIAS_STATUS%></td>	
				<td><c:out value='${tquickMatch.status}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>