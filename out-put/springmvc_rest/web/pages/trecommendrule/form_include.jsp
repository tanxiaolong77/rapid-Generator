<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${trecommendRule.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TrecommendRule.ALIAS_NAME%>:
		</td>		
		<td>
		<form:input path="name" id="name" cssClass="required " maxlength="100" />
		<font color='red'><form:errors path="name"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TrecommendRule.ALIAS_OPEN_NUM%>:
		</td>		
		<td>
		<form:input path="openNum" id="openNum" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="openNum"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TrecommendRule.ALIAS_CONDITION_NUM%>:
		</td>		
		<td>
		<form:input path="conditionNum" id="conditionNum" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="conditionNum"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TrecommendRule.ALIAS_BTN_EXPLAIN%>:
		</td>		
		<td>
		<form:input path="btnExplain" id="btnExplain" cssClass="" maxlength="20" />
		<font color='red'><form:errors path="btnExplain"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TrecommendRule.ALIAS_TYPE%>:
		</td>		
		<td>
		<form:input path="type" id="type" cssClass="validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="type"/></font>
		</td>
	</tr>	
	
		