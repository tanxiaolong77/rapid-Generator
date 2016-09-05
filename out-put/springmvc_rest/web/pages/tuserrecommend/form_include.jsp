<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tuserRecommend.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TuserRecommend.ALIAS_USER_ID%>:
		</td>		
		<td>
		<form:input path="userId" id="userId" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="userId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TuserRecommend.ALIAS_RECOMMEND_COUNT%>:
		</td>		
		<td>
		<form:input path="recommendCount" id="recommendCount" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="recommendCount"/></font>
		</td>
	</tr>	
	
		