<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${test.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Test.ALIAS_NAME%>:
		</td>		
		<td>
		<form:input path="name" id="name" cssClass="required " maxlength="128" />
		<font color='red'><form:errors path="name"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Test.ALIAS_PNT%>:
		</td>		
		<td>
		<form:input path="pnt" id="pnt" cssClass="required " maxlength="0" />
		<font color='red'><form:errors path="pnt"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Test.ALIAS_LINE%>:
		</td>		
		<td>
		<form:input path="line" id="line" cssClass="" maxlength="0" />
		<font color='red'><form:errors path="line"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=Test.ALIAS_PGN%>:
		</td>		
		<td>
		<form:input path="pgn" id="pgn" cssClass="" maxlength="0" />
		<font color='red'><form:errors path="pgn"/></font>
		</td>
	</tr>	
	
		