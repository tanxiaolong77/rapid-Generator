<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TmsgBoard.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="tmsgboard"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/tmsgboard'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${tmsgBoard.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=TmsgBoard.ALIAS_TEAM1_ID%></td>	
				<td><c:out value='${tmsgBoard.team1Id}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TmsgBoard.ALIAS_TEAM2_ID%></td>	
				<td><c:out value='${tmsgBoard.team2Id}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TmsgBoard.ALIAS_CONTENT%></td>	
				<td><c:out value='${tmsgBoard.content}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TmsgBoard.ALIAS_CREATE_TIME%></td>	
				<td><c:out value='${tmsgBoard.createTimeString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TmsgBoard.ALIAS_CREATOR%></td>	
				<td><c:out value='${tmsgBoard.creator}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TmsgBoard.ALIAS_OFFER_ID%></td>	
				<td><c:out value='${tmsgBoard.offerId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TmsgBoard.ALIAS_ACTIVITY_JOIN_ID%></td>	
				<td><c:out value='${tmsgBoard.activityJoinId}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>