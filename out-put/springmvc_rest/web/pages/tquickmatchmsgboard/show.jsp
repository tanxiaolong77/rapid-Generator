<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TquickMatchMsgBoard.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="tquickmatchmsgboard"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/tquickmatchmsgboard'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${tquickMatchMsgBoard.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=TquickMatchMsgBoard.ALIAS_TEAM1_ID%></td>	
				<td><c:out value='${tquickMatchMsgBoard.team1Id}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TquickMatchMsgBoard.ALIAS_TEAM2_ID%></td>	
				<td><c:out value='${tquickMatchMsgBoard.team2Id}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TquickMatchMsgBoard.ALIAS_CONTENT%></td>	
				<td><c:out value='${tquickMatchMsgBoard.content}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TquickMatchMsgBoard.ALIAS_CREATE_TIME%></td>	
				<td><c:out value='${tquickMatchMsgBoard.createTimeString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TquickMatchMsgBoard.ALIAS_CREATOR%></td>	
				<td><c:out value='${tquickMatchMsgBoard.creator}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>