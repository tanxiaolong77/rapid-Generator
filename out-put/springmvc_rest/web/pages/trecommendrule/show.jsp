<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TrecommendRule.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="trecommendrule"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/trecommendrule'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${trecommendRule.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=TrecommendRule.ALIAS_NAME%></td>	
				<td><c:out value='${trecommendRule.name}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TrecommendRule.ALIAS_OPEN_NUM%></td>	
				<td><c:out value='${trecommendRule.openNum}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TrecommendRule.ALIAS_CONDITION_NUM%></td>	
				<td><c:out value='${trecommendRule.conditionNum}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TrecommendRule.ALIAS_BTN_EXPLAIN%></td>	
				<td><c:out value='${trecommendRule.btnExplain}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TrecommendRule.ALIAS_TYPE%></td>	
				<td><c:out value='${trecommendRule.type}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>