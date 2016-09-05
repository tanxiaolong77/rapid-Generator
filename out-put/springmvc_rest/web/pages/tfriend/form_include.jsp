<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tfriend.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tfriend.ALIAS_USER_ID%>:
		</td>		
		<td>
		<form:input path="userId" id="userId" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="userId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Tfriend.ALIAS_FRIEND_ID%>:
		</td>		
		<td>
		<form:input path="friendId" id="friendId" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="friendId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Tfriend.ALIAS_CREATE_TIME%>:
		</td>		
		<td>
		<input value="${tfriend.createTimeString}" onclick="WdatePicker({dateFmt:'<%=Tfriend.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="" />
		<font color='red'><form:errors path="createTime"/></font>
		</td>
	</tr>	
	
		