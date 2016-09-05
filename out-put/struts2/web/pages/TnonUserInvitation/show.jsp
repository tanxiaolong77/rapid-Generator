<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TnonUserInvitation.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<s:form action="/pages/TnonUserInvitation/list.do" method="get" theme="simple">
		<input type="button" value="返回列表" onclick="window.location='${ctx}/pages/TnonUserInvitation/list.do'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<s:hidden name="id" id="id" value="%{model.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=TnonUserInvitation.ALIAS_SEND_ID%></td>	
				<td><s:property value="%{model.sendId}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TnonUserInvitation.ALIAS_RECEIVE_PHONE%></td>	
				<td><s:property value="%{model.receivePhone}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TnonUserInvitation.ALIAS_CREATE_TIME%></td>	
				<td><s:property value="%{model.createTimeString}" /></td>
			</tr>
		</table>
	</s:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>