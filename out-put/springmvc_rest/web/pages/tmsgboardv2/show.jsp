<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TmsgBoardV2.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="tmsgboardv2"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/tmsgboardv2'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${tmsgBoardV2.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=TmsgBoardV2.ALIAS_USER_ID%></td>	
				<td><c:out value='${tmsgBoardV2.userId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TmsgBoardV2.ALIAS_CHATROOM_ID%></td>	
				<td><c:out value='${tmsgBoardV2.chatroomId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TmsgBoardV2.ALIAS_CONTENT%></td>	
				<td><c:out value='${tmsgBoardV2.content}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TmsgBoardV2.ALIAS_TYPE%></td>	
				<td><c:out value='${tmsgBoardV2.type}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TmsgBoardV2.ALIAS_CREATE_TIME%></td>	
				<td><c:out value='${tmsgBoardV2.createTimeString}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>