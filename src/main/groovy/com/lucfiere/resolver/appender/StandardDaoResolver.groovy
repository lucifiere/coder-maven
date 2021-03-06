package com.lucfiere.resolver.appender

import com.lucfiere.common.Cons
import com.lucfiere.resolver.type.DaoResolver

import static com.lucfiere.utils.CommonUtils.capitalFirst

class StandardDaoResolver extends BaseAppender implements Appender, DaoResolver {

    @Override
    protected String headCode() {
        """
import java.util.List;

/**
 * Dao层接口
 * 
 * @author ${Cons.AUTHOR}
 * @date ${new Date().format("yyyy-MM-dd")}
 */ 
public interface ${capitalFirst(entityName)}Dao {
        """
    }

    @Override
    protected String bodyCode() {
        String capitalFirstEntity = capitalFirst(entityName)
        """
    /**
     * 根据Example查询符合条件的结果列表
     * 
     * @param ${entityName}Example 查询条件
     * @return 结果列表
     */
    List<${capitalFirstEntity}> select${capitalFirstEntity}ListByExample(${capitalFirstEntity} ${entityName}Example);

    /**
     * 根据DO参数查询符合条件的结果列表
     * 
     * @param ${entityName} 查询条件
     * @return 结果列表
     */
    List<${capitalFirstEntity}> select${capitalFirstEntity}ListByParam(${capitalFirstEntity} ${entityName});

    /**
     * 根据ID查询符合条件的结果
     * 
     * @param id 主键
     * @return 结果
     */
    ${capitalFirstEntity} select${capitalFirstEntity}ById(Long id);

    /**
     * 单条数据新增
     * 
     * @param ${entityName} 待入库数据
     * @return 影响行数
     */
    Long insert${capitalFirstEntity}(${capitalFirstEntity} ${entityName});

    /**
     * 根据ID对单条数据更新
     * 
     * @param ${entityName} 待入库数据
     * @return 影响行数
     */
    Long update${capitalFirstEntity}ById(${capitalFirstEntity} ${entityName});

    /**
     * 根据主键删除
     * 
     * @param id 主键
     */
    void delete${capitalFirstEntity}ById(Long id);
        """
    }

    @Override
    protected String tailCode() {
        """
}
        """
    }

}
