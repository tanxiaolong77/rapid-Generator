<%@page import="com.quanjing.yd.model.*" %>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/simpletable" prefix="simpletable"%>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TrecommendRule.TABLE_ALIAS%> 维护</title>
	
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
					<td class="tdLabel"><%=TrecommendRule.ALIAS_NAME%></td>		
					<td>
						<input value="${query.name}" id="name" name="name" maxlength="100"  class=""/>
					</td>
					<td class="tdLabel"><%=TrecommendRule.ALIAS_OPEN_NUM%></td>		
					<td>
						<input value="${query.openNum}" id="openNum" name="openNum" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
					<td class="tdLabel"><%=TrecommendRule.ALIAS_CONDITION_NUM%></td>		
					<td>
						<input value="${query.conditionNum}" id="conditionNum" name="conditionNum" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
					<td class="tdLabel"><%=TrecommendRule.ALIAS_BTN_EXPLAIN%></td>		
					<td>
						<input value="${query.btnExplain}" id="btnExplain" name="btnExplain" maxlength="20"  class=""/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=TrecommendRule.ALIAS_TYPE%></td>		
					<td>
						<input value="${query.type}" id="type" name="type" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
				</tr>	
			</table>
		</fieldset>
		<div class="handleControl">
			<input type="submit" class="stdButton" style="width:80px" value="查询" onclick="getReferenceForm(this).action='${ctx}/trecommendrule'"/>
			<input type="button" class="stdButton" style="width:80px" value="新增" onclick="window.location = '${ctx}/trecommendrule/new'"/>
			<input type="button" class="stdButton" style="width:80px" value="删除" onclick="doRestBatchDelete('${ctx}/trecommendrule','items',document.forms.queryForm)"/>
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
				<th sortColumn="name" ><%=TrecommendRule.ALIAS_NAME%></th>
				<th sortColumn="open_num" ><%=TrecommendRule.ALIAS_OPEN_NUM%></th>
				<th sortColumn="condition_num" ><%=TrecommendRule.ALIAS_CONDITION_NUM%></th>
				<th sortColumn="btn_explain" ><%=TrecommendRule.ALIAS_BTN_EXPLAIN%></th>
				<th sortColumn="type" ><%=TrecommendRule.ALIAS_TYPE%></th>
	
				<th>操作</th>
			  </tr>
			  
		  </thead>
		  <tbody>
		  	  <c:forEach items="${page.result}" var="item" varStatus="status">
		  	  
			  <tr class="${status.count % 2 == 0 ? 'odd' : 'even'}">
				<td>${page.thisPageFirstElementNumber + status.index}</td>
				<td><input type="checkbox" name="items" value="${item.id}"></td>
				
				<td><c:out value='${item.name}'/>&nbsp;</td>
				<td><c:out value='${item.openNum}'/>&nbsp;</td>
				<td><c:out value='${item.conditionNum}'/>&nbsp;</td>
				<td><c:out value='${item.btnExplain}'/>&nbsp;</td>
				<td><c:out value='${item.type}'/>&nbsp;</td>
				<td>
					<a href="${ctx}/trecommendrule/${item.id}">查看</a>&nbsp;&nbsp;
					<a href="${ctx}/trecommendrule/${item.id}/edit">修改</a>&nbsp;&nbsp;
					<a href="${ctx}/trecommendrule/${item.id}" onclick="doRestDelete(this,'你确认删除?');return false;">删除</a>
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
