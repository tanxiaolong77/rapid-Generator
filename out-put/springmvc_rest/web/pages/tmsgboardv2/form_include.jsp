<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${tmsgBoardV2.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TmsgBoardV2.ALIAS_USER_ID%>:
		</td>		
		<td>
		<form:input path="userId" id="userId" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="userId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TmsgBoardV2.ALIAS_CHATROOM_ID%>:
		</td>		
		<td>
		<form:input path="chatroomId" id="chatroomId" cssClass="required validate-integer " maxlength="19" />
		<font color='red'><form:errors path="chatroomId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TmsgBoardV2.ALIAS_CONTENT%>:
		</td>		
		<td>
		<form:input path="content" id="content" cssClass="" maxlength="3000" />
		<font color='red'><form:errors path="content"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TmsgBoardV2.ALIAS_TYPE%>:
		</td>		
		<td>
		<form:input path="type" id="type" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="type"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TmsgBoardV2.ALIAS_CREATE_TIME%>:
		</td>		
		<td>
		<input value="${tmsgBoardV2.createTimeString}" onclick="WdatePicker({dateFmt:'<%=TmsgBoardV2.FORMAT_CREATE_TIME%>'})" id="createTimeString" name="createTimeString"  maxlength="0" class="required " />
		<font color='red'><form:errors path="createTime"/></font>
		</td>
	</tr>	
	
		