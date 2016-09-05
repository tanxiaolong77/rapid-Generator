<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TopenUser.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<s:form action="/pages/TopenUser/list.do" method="get" theme="simple">
		<input type="button" value="返回列表" onclick="window.location='${ctx}/pages/TopenUser/list.do'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<s:hidden name="id" id="id" value="%{model.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=TopenUser.ALIAS_OPEN_ID%></td>	
				<td><s:property value="%{model.openId}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TopenUser.ALIAS_UNION_ID%></td>	
				<td><s:property value="%{model.unionId}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TopenUser.ALIAS_PLATFORM%></td>	
				<td><s:property value="%{model.platform}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TopenUser.ALIAS_USER_ID%></td>	
				<td><s:property value="%{model.userId}" /></td>
			</tr>
		</table>
	</s:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>