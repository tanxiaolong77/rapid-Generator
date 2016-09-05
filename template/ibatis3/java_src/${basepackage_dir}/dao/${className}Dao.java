<#include "/java_copyright.include">
<#assign className = table.className>   
<#assign classNameLower = className?uncap_first>   
package ${basepackage}.dao;

import	com.quanjing.platform.service.base.EntityDao;
import org.springframework.stereotype.Repository;
import java.util.List;


public interface ${className}Dao extends EntityDao<${className},${table.idColumn.javaType}>{
	
	
	public List findPage(${className}Query query);
	

}
