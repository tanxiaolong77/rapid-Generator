<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Tinvitation.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="tinvitation"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/tinvitation'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${tinvitation.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Tinvitation.ALIAS_SEND_ID%></td>	
				<td><c:out value='${tinvitation.sendId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tinvitation.ALIAS_RECEIVE_ID%></td>	
				<td><c:out value='${tinvitation.receiveId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tinvitation.ALIAS_TYPE%></td>	
				<td><c:out value='${tinvitation.type}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tinvitation.ALIAS_STATUS%></td>	
				<td><c:out value='${tinvitation.status}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tinvitation.ALIAS_CREATE_TIME%></td>	
				<td><c:out value='${tinvitation.createTimeString}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>