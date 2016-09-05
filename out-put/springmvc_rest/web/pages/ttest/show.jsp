<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Ttest.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="ttest"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/ttest'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${ttest.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Ttest.ALIAS_LOCATION%></td>	
				<td><c:out value='${ttest.location}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Ttest.ALIAS_TITLE%></td>	
				<td><c:out value='${ttest.title}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>