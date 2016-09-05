<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TopenUser.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="topenuser"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/topenuser'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${topenUser.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=TopenUser.ALIAS_OPEN_ID%></td>	
				<td><c:out value='${topenUser.openId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TopenUser.ALIAS_UNION_ID%></td>	
				<td><c:out value='${topenUser.unionId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TopenUser.ALIAS_PLATFORM%></td>	
				<td><c:out value='${topenUser.platform}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TopenUser.ALIAS_USER_ID%></td>	
				<td><c:out value='${topenUser.userId}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>