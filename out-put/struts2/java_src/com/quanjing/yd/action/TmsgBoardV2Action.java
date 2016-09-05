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


public class TmsgBoardV2Action extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/pages/TmsgBoardV2/query.jsp";
	protected static final String LIST_JSP= "/pages/TmsgBoardV2/list.jsp";
	protected static final String CREATE_JSP = "/pages/TmsgBoardV2/create.jsp";
	protected static final String EDIT_JSP = "/pages/TmsgBoardV2/edit.jsp";
	protected static final String SHOW_JSP = "/pages/TmsgBoardV2/show.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/pages/TmsgBoardV2/list.do";
	
	private TmsgBoardV2Manager tmsgBoardV2Manager;
	
	private TmsgBoardV2 tmsgBoardV2;
	java.lang.Integer id = null;
	private String[] items;

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			tmsgBoardV2 = new TmsgBoardV2();
		} else {
			tmsgBoardV2 = (TmsgBoardV2)tmsgBoardV2Manager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setTmsgBoardV2Manager(TmsgBoardV2Manager manager) {
		this.tmsgBoardV2Manager = manager;
	}	
	
	public Object getModel() {
		return tmsgBoardV2;
	}
	
	public void setId(java.lang.Integer val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		TmsgBoardV2Query query = newQuery(TmsgBoardV2Query.class,DEFAULT_SORT_COLUMNS);
		
		Page page = tmsgBoardV2Manager.findPage(query);
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
		tmsgBoardV2Manager.save(tmsgBoardV2);
		Flash.current().success(CREATED_SUCCESS); //存放在Flash中的数据,在下一次http请求中仍然可以读取数据,error()用于显示错误消息
		return LIST_ACTION;
	}
	
	/**进入更新页面*/
	public String edit() {
		return EDIT_JSP;
	}
	
	/**保存更新对象*/
	public String update() {
		tmsgBoardV2Manager.update(this.tmsgBoardV2);
		Flash.current().success(UPDATE_SUCCESS);
		return LIST_ACTION;
	}
	
	/**删除对象*/
	public String delete() {
		for(int i = 0; i < items.length; i++) {
			Hashtable params = HttpUtils.parseQueryString(items[i]);
			java.lang.Integer id = new java.lang.Integer((String)params.get("id"));
			tmsgBoardV2Manager.removeById(id);
		}
		Flash.current().success(DELETE_SUCCESS);
		return LIST_ACTION;
	}

}
