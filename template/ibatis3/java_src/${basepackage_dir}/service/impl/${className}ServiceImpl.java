<#include "/java_copyright.include">
<#assign className = table.className>   
<#assign classNameLower = className?uncap_first>   
package ${basepackage}.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.quanjing.platform.service.base.EntityDao;
import	com.quanjing.platform.service.base.EntityService;
<#include "/java_imports.include">


@Service("${className}Service")
public class ${className}ServiceImpl extends BaseService<${className},${table.idColumn.javaType}> implements ${className}Service {
	
	@Autowired
	private ${className}Dao ${className}Dao;
	
	public EntityDao getEntityDao() {
		return this.${className}Dao;
	}
	
	public PageInfo findPage(${className}Query query){
		PageHelper.startPage(query);
		return new PageInfo(${className}Dao.findPage(query));
	}

}
