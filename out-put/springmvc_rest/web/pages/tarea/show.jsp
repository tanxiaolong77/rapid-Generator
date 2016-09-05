<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Tarea.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="tarea"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/tarea'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${tarea.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Tarea.ALIAS_CODE%></td>	
				<td><c:out value='${tarea.code}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tarea.ALIAS_NAME%></td>	
				<td><c:out value='${tarea.name}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tarea.ALIAS_LEVEL%></td>	
				<td><c:out value='${tarea.level}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Tarea.ALIAS_PARENT_ID%></td>	
				<td><c:out value='${tarea.parentId}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>