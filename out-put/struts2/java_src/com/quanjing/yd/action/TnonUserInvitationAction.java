/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2016
 */

package com.quanjing.yd.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.org.rapid_framework.beanutils.BeanUtils;
import cn.org.rapid_framework.web.scope.Flash;

import com.opensymphony.xwork2.Preparable;
import com.opensymphony.xwork2.ModelDriven;

import java.util.List;



import com.quanjing.yd.model.*;
import com.quanjing.yd.vo.query.*;

/**
 * @author xiaolong.tan
 * @version 1.0
 * @since 1.0
 */


public class TnonUserInvitationAction extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/pages/TnonUserInvitation/query.jsp";
	protected static final String LIST_JSP= "/pages/TnonUserInvitation/list.jsp";
	protected static final String CREATE_JSP = "/pages/TnonUserInvitation/create.jsp";
	protected static final String EDIT_JSP = "/pages/TnonUserInvitation/edit.jsp";
	protected static final String SHOW_JSP = "/pages/TnonUserInvitation/show.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/pages/TnonUserInvitation/list.do";
	
	private TnonUserInvitationManager tnonUserInvitationManager;
	
	private TnonUserInvitation tnonUserInvitation;
	java.lang.Long id = null;
	private String[] items;

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			tnonUserInvitation = new TnonUserInvitation();
		} else {
			tnonUserInvitation = (TnonUserInvitation)tnonUserInvitationManager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setTnonUserInvitationManager(TnonUserInvitationManager manager) {
		this.tnonUserInvitationManager = manager;
	}	
	
	public Object getModel() {
		return tnonUserInvitation;
	}
	
	public void setId(java.lang.Long val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		TnonUserInvitationQuery query = newQuery(TnonUserInvitationQuery.class,DEFAULT_SORT_COLUMNS);
		
		Page page = tnonUserInvitationManager.findPage(query);
		savePage(page,query);
		return LIST_JSP;
	}
	
	/** 查看对象*/
	public String show() {
		return SHOW_JSP;
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
		tnonUserInvitationManager.save(tnonUserInvitation);
		Flash.current().success(CREATED_SUCCESS); //存放在Flash中的数据,在下一次http请求中仍然可以读取数据,error()用于显示错误消息
		return LIST_ACTION;
	}
	
	/**进入更新页面*/
	public String edit() {
		return EDIT_JSP;
	}
	
	/**保存更新对象*/
	public String update() {
		tnonUserInvitationManager.update(this.tnonUserInvitation);
		Flash.current().success(UPDATE_SUCCESS);
		return LIST_ACTION;
	}
	
	/**删除对象*/
	public String delete() {
		for(int i = 0; i < items.length; i++) {
			Hashtable params = HttpUtils.parseQueryString(items[i]);
			java.lang.Long id = new java.lang.Long((String)params.get("id"));
			tnonUserInvitationManager.removeById(id);
		}
		Flash.current().success(DELETE_SUCCESS);
		return LIST_ACTION;
	}

}
