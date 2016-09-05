<%@page import="com.quanjing.yd.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/simpletable" prefix="simpletable"%>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TuserDynamic.TABLE_ALIAS%> 维护</title>
	
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
	<form id="queryForm" name="queryForm" action="<c:url value="/pages/TuserDynamic/list.do"/>" method="get" style="display: inline;">
	<div class="queryPanel">
		<fieldset>
			<legend>搜索</legend>
			<table>
				<tr>	
					<td class="tdLabel"><%=TuserDynamic.ALIAS_USER_ID%></td>		
					<td>
						<input value="${query.userId}" id="userId" name="userId" maxlength="19"  class="validate-integer "/>
					</td>
					<td class="tdLabel"><%=TuserDynamic.ALIAS_ACT%></td>		
					<td>
						<input value="${query.act}" id="act" name="act" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
					<td class="tdLabel"><%=TuserDynamic.ALIAS_DATA_TYPE%></td>		
					<td>
						<input value="${query.dataType}" id="dataType" name="dataType" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
					<td class="tdLabel"><%=TuserDynamic.ALIAS_CONTENT%></td>		
					<td>
						<input value="${query.content}" id="content" name="content" maxlength="3000"  class=""/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=TuserDynamic.ALIAS_CREATE_TIME%></td>		
					<td>
						<input value="<fmt:formatDate value='${query.createTimeBegin}' pattern='<%=TuserDynamic.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=TuserDynamic.FORMAT_CREATE_TIME%>'})" id="createTimeBegin" name="createTimeBegin"   />
						<input value="<fmt:formatDate value='${query.createTimeEnd}' pattern='<%=TuserDynamic.FORMAT_CREATE_TIME%>'/>" onclick="WdatePicker({dateFmt:'<%=TuserDynamic.FORMAT_CREATE_TIME%>'})" id="createTimeEnd" name="createTimeEnd"   />
					</td>
					<td class="tdLabel"><%=TuserDynamic.ALIAS_ADDRESS%></td>		
					<td>
						<input value="${query.address}" id="address" name="address" maxlength="100"  class=""/>
					</td>
					<td class="tdLabel"><%=TuserDynamic.ALIAS_LONGITUDE%></td>		
					<td>
						<input value="${query.longitude}" id="longitude" name="longitude" maxlength="12"  class="validate-number "/>
					</td>
					<td class="tdLabel"><%=TuserDynamic.ALIAS_LATITUDE%></td>		
					<td>
						<input value="${query.latitude}" id="latitude" name="latitude" maxlength="12"  class="validate-number "/>
					</td>
				</tr>	
			</table>
		</fieldset>
		<div class="handleControl">
			<input type="submit" class="stdButton" style="width:80px" value="查询" onclick="getReferenceForm(this).action='${ctx}/pages/TuserDynamic/list.do'"/>
			<input type="submit" class="stdButton" style="width:80px" value="新增" onclick="getReferenceForm(this).action='${ctx}/pages/TuserDynamic/create.do'"/>
			<input type="button" class="stdButton" style="width:80px" value="删除" onclick="batchDelete('${ctx}/pages/TuserDynamic/delete.do','items',document.forms.queryForm)"/>
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
				<th sortColumn="user_id" ><%=TuserDynamic.ALIAS_USER_ID%></th>
				<th sortColumn="act" ><%=TuserDynamic.ALIAS_ACT%></th>
				<th sortColumn="data_type" ><%=TuserDynamic.ALIAS_DATA_TYPE%></th>
				<th sortColumn="content" ><%=TuserDynamic.ALIAS_CONTENT%></th>
				<th sortColumn="create_time" ><%=TuserDynamic.ALIAS_CREATE_TIME%></th>
				<th sortColumn="address" ><%=TuserDynamic.ALIAS_ADDRESS%></th>
				<th sortColumn="longitude" ><%=TuserDynamic.ALIAS_LONGITUDE%></th>
				<th sortColumn="latitude" ><%=TuserDynamic.ALIAS_LATITUDE%></th>
	
				<th>操作</th>
			  </tr>
			  
		  </thead>
		  <tbody>
		  	  <c:forEach items="${page.result}" var="item" varStatus="status">
		  	  
			  <tr class="${status.count % 2 == 0 ? 'odd' : 'even'}">
				<td>${page.thisPageFirstElementNumber + status.index}</td>
				<td><input type="checkbox" name="items" value="id=${item.id}&"></td>
				
				<td><c:out value='${item.userId}'/>&nbsp;</td>
				<td><c:out value='${item.act}'/>&nbsp;</td>
				<td><c:out value='${item.dataType}'/>&nbsp;</td>
				<td><c:out value='${item.content}'/>&nbsp;</td>
				<td><c:out value='${item.createTimeString}'/>&nbsp;</td>
				<td><c:out value='${item.address}'/>&nbsp;</td>
				<td><c:out value='${item.longitude}'/>&nbsp;</td>
				<td><c:out value='${item.latitude}'/>&nbsp;</td>
				<td>
					<a href="${ctx}/pages/TuserDynamic/show.do?id=${item.id}&">查看</a>&nbsp;&nbsp;&nbsp;
					<a href="${ctx}/pages/TuserDynamic/edit.do?id=${item.id}&">修改</a>
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
<%@ include file="base.jsp" %>

