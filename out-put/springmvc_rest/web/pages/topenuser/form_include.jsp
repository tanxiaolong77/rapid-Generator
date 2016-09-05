<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${topenUser.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TopenUser.ALIAS_OPEN_ID%>:
		</td>		
		<td>
		<form:input path="openId" id="openId" cssClass="required " maxlength="100" />
		<font color='red'><form:errors path="openId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TopenUser.ALIAS_UNION_ID%>:
		</td>		
		<td>
		<form:input path="unionId" id="unionId" cssClass="" maxlength="100" />
		<font color='red'><form:errors path="unionId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TopenUser.ALIAS_PLATFORM%>:
		</td>		
		<td>
		<form:input path="platform" id="platform" cssClass="required " maxlength="20" />
		<font color='red'><form:errors path="platform"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TopenUser.ALIAS_USER_ID%>:
		</td>		
		<td>
		<form:input path="userId" id="userId" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="userId"/></font>
		</td>
	</tr>	
	
		