<%@page import="com.quanjing.yd.model.*" %>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/simpletable" prefix="simpletable"%>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TmsgBoardV2.TABLE_ALIAS%> 维护</title>
	
	<script src="${ctx}/scripts/rest.js" ></script>
	<link href="<c:url value="/widgets/simpletable/simpletable.css"/>" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="<c:url value="/widgets/simpletable/simpletable.js"/>"></script>
	
	<script type="text/javascript" >
		$(document).ready(function() {
			// 分页需要依赖的初始化动作
			window.simpleTable = new SimpleTable('queryForm',${page.thisPageNumber},${page.pageSize},'${pageRequest.sortColumns}');
		});
	</script>
</rapid:override>

<rapid:override name="content">
	<form id="queryForm" name="queryForm" method="get" style="display: inline;">
	<div class="queryPanel">
		<fieldset>
			<legend>搜索</legend>
			<table>
				<tr>	
					<td class="tdLabel"><%=TmsgBoardV2.ALIAS_USER_ID%></td>		
					<td>
						<input value="${query.userId}" id="userId" name="userId" maxlength="19"  class="validate-integer "/>
					</td>
					<td class="tdLabel"><%=TmsgBoardV2.ALIAS_CHATROOM_ID%></td>		
					<td>
						<input value="${query.chatroomId}" id="chatroomId" name="chatroomId" maxlength="19"  class="validate-integer "/>
					</td>
					<td class="tdLabel"><%=TmsgBoardV2.ALIAS_CONTENT%></td>		
					<td>
						<input value="${query.content}" id="content" name="content" maxlength="3000"  class=""/>
					</td>
					<td class="tdLabel"><%=TmsgBoardV2.ALIAS_TYPE%></td>		
					<td>
						<input value="${query.type}" id="type" name="type" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=TmsgBoardV2.ALIAS_CREATE_TIME%></td>		
					<td>
						<input value="<fmt:formatDate value='${query.createTimeBegin}' pattern='<%=TmsgBoardV2.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=TmsgBoardV2.FORMAT_CREATE_TIME%>'})" id="createTimeBegin" name="createTimeBegin"   />
						<input value="<fmt:formatDate value='${query.createTimeEnd}' pattern='<%=TmsgBoardV2.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=TmsgBoardV2.FORMAT_CREATE_TIME%>'})" id="createTimeEnd" name="createTimeEnd"   />
					</td>
				</tr>	
			</table>
		</fieldset>
		<div class="handleControl">
			<input type="submit" class="stdButton" style="width:80px" value="查询" onclick="getReferenceForm(this).action='${ctx}/tmsgboardv2'"/>
			<input type="button" class="stdButton" style="width:80px" value="新增" onclick="window.location = '${ctx}/tmsgboardv2/new'"/>
			<input type="button" class="stdButton" style="width:80px" value="删除" onclick="doRestBatchDelete('${ctx}/tmsgboardv2','items',document.forms.queryForm)"/>
		<div>
	
	</div>
	
	<div class="gridTable">
	
		<simpletable:pageToolbar page="${page}">
		显示在这里是为了提示你如何自定义表头,可修改模板删除此行
		</simpletable:pageToolbar>
	
		<table width="100%"  border="0" cellspacing="0" class="gridBody">
		  <thead>
			  
			  <tr>
				<th style="width:1px;"> </th>
				<th style="width:1px;"><input type="checkbox" onclick="setAllCheckboxState('items',this.checked)"></th>
				
				<!-- 排序时为th增加sortColumn即可,new SimpleTable('sortColumns')会为tableHeader自动增加排序功能; -->
				<th sortColumn="user_id" ><%=TmsgBoardV2.ALIAS_USER_ID%></th>
				<th sortColumn="chatroom_id" ><%=TmsgBoardV2.ALIAS_CHATROOM_ID%></th>
				<th sortColumn="content" ><%=TmsgBoardV2.ALIAS_CONTENT%></th>
				<th sortColumn="type" ><%=TmsgBoardV2.ALIAS_TYPE%></th>
				<th sortColumn="create_time" ><%=TmsgBoardV2.ALIAS_CREATE_TIME%></th>
	
				<th>操作</th>
			  </tr>
			  
		  </thead>
		  <tbody>
		  	  <c:forEach items="${page.result}" var="item" varStatus="status">
		  	  
			  <tr class="${status.count % 2 == 0 ? 'odd' : 'even'}">
				<td>${page.thisPageFirstElementNumber + status.index}</td>
				<td><input type="checkbox" name="items" value="${item.id}"></td>
				
				<td><c:out value='${item.userId}'/>&nbsp;</td>
				<td><c:out value='${item.chatroomId}'/>&nbsp;</td>
				<td><c:out value='${item.content}'/>&nbsp;</td>
				<td><c:out value='${item.type}'/>&nbsp;</td>
				<td><c:out value='${item.createTimeString}'/>&nbsp;</td>
				<td>
					<a href="${ctx}/tmsgboardv2/${item.id}">查看</a>&nbsp;&nbsp;
					<a href="${ctx}/tmsgboardv2/${item.id}/edit">修改</a>&nbsp;&nbsp;
					<a href="${ctx}/tmsgboardv2/${item.id}" onclick="doRestDelete(this,'你确认删除?');return false;">删除</a>
				</td>
			  </tr>
			  
		  	  </c:forEach>
		  </tbody>
		</table>
	
		<simpletable:pageToolbar page="${page}">
		显示在这里是为了提示你如何自定义表头,可修改模板删除此行
		</simpletable:pageToolbar>
		
	</div>
	</form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<jsp:include page="base.jsp"/>
