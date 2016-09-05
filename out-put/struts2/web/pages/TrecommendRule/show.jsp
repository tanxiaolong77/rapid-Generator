<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TrecommendRule.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<s:form action="/pages/TrecommendRule/list.do" method="get" theme="simple">
		<input type="button" value="返回列表" onclick="window.location='${ctx}/pages/TrecommendRule/list.do'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<s:hidden name="id" id="id" value="%{model.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=TrecommendRule.ALIAS_NAME%></td>	
				<td><s:property value="%{model.name}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TrecommendRule.ALIAS_OPEN_NUM%></td>	
				<td><s:property value="%{model.openNum}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TrecommendRule.ALIAS_CONDITION_NUM%></td>	
				<td><s:property value="%{model.conditionNum}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TrecommendRule.ALIAS_BTN_EXPLAIN%></td>	
				<td><s:property value="%{model.btnExplain}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TrecommendRule.ALIAS_TYPE%></td>	
				<td><s:property value="%{model.type}" /></td>
			</tr>
		</table>
	</s:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>