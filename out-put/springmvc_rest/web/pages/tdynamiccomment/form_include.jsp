<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tdynamicComment.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TdynamicComment.ALIAS_DYNAMIC_ID%>:
		</td>		
		<td>
		<form:input path="dynamicId" id="dynamicId" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="dynamicId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TdynamicComment.ALIAS_USER_ID%>:
		</td>		
		<td>
		<form:input path="userId" id="userId" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="userId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TdynamicComment.ALIAS_COMMENT%>:
		</td>		
		<td>
		<form:input path="comment" id="comment" cssClass="" maxlength="1000" />
		<font color='red'><form:errors path="comment"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TdynamicComment.ALIAS_CREATE_TIME%>:
		</td>		
		<td>
		<input value="${tdynamicComment.createTimeString}" onclick="WdatePicker({dateFmt:'<%=TdynamicComment.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="" />
		<font color='red'><form:errors path="createTime"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TdynamicComment.ALIAS_IP%>:
		</td>		
		<td>
		<form:input path="ip" id="ip" cssClass="" maxlength="20" />
		<font color='red'><form:errors path="ip"/></font>
		</td>
	</tr>	
	
		