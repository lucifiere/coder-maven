package com.lucfiere.resolver.appender.mt

import com.lucfiere.common.Cons
import com.lucfiere.resolver.appender.Appender
import com.lucfiere.resolver.appender.BaseAppender
import com.lucfiere.resolver.type.DaoImplResolver

import static com.lucfiere.utils.CommonUtils.capitalFirst

class MtRepositoryImplResolver extends BaseAppender implements Appender, DaoImplResolver {

    @Override
    protected String headCode() {
        """
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Repository层实现
 * 
 * @author ${Cons.AUTHOR}
 * Date ${new Date().format("yyyy-MM-dd")}
 */ 
@Repository
public class ${capitalFirst(entityName)}RepositoryImpl implements ${capitalFirst(entityName)}Repository {

    @Resource
    private ${capitalFirst(entityName)}Mapper ${entityName}Mapper;
        """
    }

    @Override
    protected String bodyCode() {
        String capitalFirstEntity = capitalFirst(entityName)
        """
    /**
     * 根据DO参数查询符合条件的结果列表
     * 
     * @param ${entityName} 查询条件
     * @return 结果列表
     */
    @Override
    public List<${capitalFirstEntity}> select${capitalFirstEntity}ListByParam(${capitalFirstEntity} ${entityName}) {
        return ${entityName}Mapper.select${capitalFirstEntity}ListByParam(${entityName});
    }

    /**
     * 根据ID查询符合条件的结果
     * 
     * @param id 主键
     * @return 结果
     */
    @Override
    public ${capitalFirstEntity} select${capitalFirstEntity}ById(Long id) {
        return ${entityName}Mapper.select${capitalFirstEntity}ById(id);
    }

    /**
     * 单条数据新增
     * 
     * @param ${entityName} 待入库数据
     * @return 影响行数
     */
    @Override
    public Long insert${capitalFirstEntity}(${capitalFirstEntity} ${entityName}) {
        return ${entityName}Mapper.insert${capitalFirstEntity}(${entityName});
    }

    /**
     * 根据ID对单条数据更新
     * 
     * @param ${entityName} 待入库数据
     * @return 影响行数
     */
    @Override
    public Long update${capitalFirstEntity}ById(${capitalFirstEntity} ${entityName}) {
        return ${entityName}Mapper.update${capitalFirstEntity}ById(${entityName});
    }

    /**
     * 根据主键删除
     * 
     * @param id 主键
     */
    @Override
    public void delete${capitalFirstEntity}ById(Long id) {
        ${entityName}Mapper.delete${capitalFirstEntity}ById(id);
    }
        """
    }

    @Override
    protected String tailCode() {
        """
}
        """
    }

}
