<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TnonUserInvitation.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="tnonuserinvitation"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/tnonuserinvitation'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${tnonUserInvitation.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=TnonUserInvitation.ALIAS_SEND_ID%></td>	
				<td><c:out value='${tnonUserInvitation.sendId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TnonUserInvitation.ALIAS_RECEIVE_PHONE%></td>	
				<td><c:out value='${tnonUserInvitation.receivePhone}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TnonUserInvitation.ALIAS_CREATE_TIME%></td>	
				<td><c:out value='${tnonUserInvitation.createTimeString}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>