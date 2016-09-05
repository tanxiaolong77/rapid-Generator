<%@page import="com.quanjing.yd.model.*" %>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/simpletable" prefix="simpletable"%>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TdynamicComment.TABLE_ALIAS%> 维护</title>
	
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
					<td class="tdLabel"><%=TdynamicComment.ALIAS_DYNAMIC_ID%></td>		
					<td>
						<input value="${query.dynamicId}" id="dynamicId" name="dynamicId" maxlength="19"  class="validate-integer "/>
					</td>
					<td class="tdLabel"><%=TdynamicComment.ALIAS_USER_ID%></td>		
					<td>
						<input value="${query.userId}" id="userId" name="userId" maxlength="19"  class="validate-integer "/>
					</td>
					<td class="tdLabel"><%=TdynamicComment.ALIAS_COMMENT%></td>		
					<td>
						<input value="${query.comment}" id="comment" name="comment" maxlength="1000"  class=""/>
					</td>
					<td class="tdLabel"><%=TdynamicComment.ALIAS_CREATE_TIME%></td>		
					<td>
						<input value="<fmt:formatDate value='${query.createTimeBegin}' pattern='<%=TdynamicComment.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=TdynamicComment.FORMAT_CREATE_TIME%>'})" id="createTimeBegin" name="createTimeBegin"   />
						<input value="<fmt:formatDate value='${query.createTimeEnd}' pattern='<%=TdynamicComment.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=TdynamicComment.FORMAT_CREATE_TIME%>'})" id="createTimeEnd" name="createTimeEnd"   />
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=TdynamicComment.ALIAS_IP%></td>		
					<td>
						<input value="${query.ip}" id="ip" name="ip" maxlength="20"  class=""/>
					</td>
				</tr>	
			</table>
		</fieldset>
		<div class="handleControl">
			<input type="submit" class="stdButton" style="width:80px" value="查询" onclick="getReferenceForm(this).action='${ctx}/tdynamiccomment'"/>
			<input type="button" class="stdButton" style="width:80px" value="新增" onclick="window.location = '${ctx}/tdynamiccomment/new'"/>
			<input type="button" class="stdButton" style="width:80px" value="删除" onclick="doRestBatchDelete('${ctx}/tdynamiccomment','items',document.forms.queryForm)"/>
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
				<th sortColumn="dynamic_id" ><%=TdynamicComment.ALIAS_DYNAMIC_ID%></th>
				<th sortColumn="user_id" ><%=TdynamicComment.ALIAS_USER_ID%></th>
				<th sortColumn="comment" ><%=TdynamicComment.ALIAS_COMMENT%></th>
				<th sortColumn="create_time" ><%=TdynamicComment.ALIAS_CREATE_TIME%></th>
				<th sortColumn="ip" ><%=TdynamicComment.ALIAS_IP%></th>
	
				<th>操作</th>
			  </tr>
			  
		  </thead>
		  <tbody>
		  	  <c:forEach items="${page.result}" var="item" varStatus="status">
		  	  
			  <tr class="${status.count % 2 == 0 ? 'odd' : 'even'}">
				<td>${page.thisPageFirstElementNumber + status.index}</td>
				<td><input type="checkbox" name="items" value="${item.id}"></td>
				
				<td><c:out value='${item.dynamicId}'/>&nbsp;</td>
				<td><c:out value='${item.userId}'/>&nbsp;</td>
				<td><c:out value='${item.comment}'/>&nbsp;</td>
				<td><c:out value='${item.createTimeString}'/>&nbsp;</td>
				<td><c:out value='${item.ip}'/>&nbsp;</td>
				<td>
					<a href="${ctx}/tdynamiccomment/${item.id}">查看</a>&nbsp;&nbsp;
					<a href="${ctx}/tdynamiccomment/${item.id}/edit">修改</a>&nbsp;&nbsp;
					<a href="${ctx}/tdynamiccomment/${item.id}" onclick="doRestDelete(this,'你确认删除?');return false;">删除</a>
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
