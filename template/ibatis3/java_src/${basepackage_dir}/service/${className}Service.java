<#include "/java_copyright.include">
<#assign className = table.className>   
<#assign classNameLower = className?uncap_first>   
package ${basepackage}.service;

<#include "/java_imports.include">
import	com.quanjing.platform.service.base.EntityService;
import com.github.pagehelper.PageInfo;


public interface ${className}Service extends EntityService<${className},${table.idColumn.javaType}>{
	
	
	public PageInfo findPage(${className}Query query);
	

}
