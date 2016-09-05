<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Test.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="test"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/test'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${test.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Test.ALIAS_NAME%></td>	
				<td><c:out value='${test.name}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Test.ALIAS_PNT%></td>	
				<td><c:out value='${test.pnt}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Test.ALIAS_LINE%></td>	
				<td><c:out value='${test.line}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Test.ALIAS_PGN%></td>	
				<td><c:out value='${test.pgn}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>