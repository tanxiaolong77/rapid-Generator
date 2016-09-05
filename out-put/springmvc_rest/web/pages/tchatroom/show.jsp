<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Tchatroom.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="tchatroom"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/tchatroom'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${tchatroom.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Tchatroom.ALIAS_NAME%></td>	
				<td><c:out value='${tchatroom.name}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tchatroom.ALIAS_SOURCE_TYPE%></td>	
				<td><c:out value='${tchatroom.sourceType}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tchatroom.ALIAS_SOURCE_ID%></td>	
				<td><c:out value='${tchatroom.sourceId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tchatroom.ALIAS_STATUS%></td>	
				<td><c:out value='${tchatroom.status}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tchatroom.ALIAS_CREATE_TIME%></td>	
				<td><c:out value='${tchatroom.createTimeString}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>