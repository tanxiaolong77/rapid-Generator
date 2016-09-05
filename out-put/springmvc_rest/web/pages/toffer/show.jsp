<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Toffer.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="toffer"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/toffer'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${toffer.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Toffer.ALIAS_CREATOR_ID%></td>	
				<td><c:out value='${toffer.creatorId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Toffer.ALIAS_TEAM1_ID%></td>	
				<td><c:out value='${toffer.team1Id}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Toffer.ALIAS_TEAM2_ID%></td>	
				<td><c:out value='${toffer.team2Id}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Toffer.ALIAS_STATUS%></td>	
				<td><c:out value='${toffer.status}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Toffer.ALIAS_CREATE_TIME%></td>	
				<td><c:out value='${toffer.createTimeString}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>