package com.lucfiere.resolver.appender.mt

import com.lucfiere.resolver.appender.Appender
import com.lucfiere.resolver.appender.BaseAppender
import com.lucfiere.resolver.type.MapperXMLResolver
import org.apache.commons.lang3.StringUtils

import static com.lucfiere.utils.CommonUtils.capitalFirst

class MtMapperXMLResolver extends BaseAppender implements Appender, MapperXMLResolver {

    @Override
    protected String headCode() {
        """<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd" >

<mapper namespace="${capitalFirst(entityName)}Mapper">
        """
    }

    @Override
    protected String bodyCode() {
        baseResultMapCode() +
                baseColCode() +
                selectById() +
                selectListByParam() +
                deleteById() +
                update() +
                insert()
    }


    private baseResultMapCode = { ->
        String code = """
    <resultMap id="BaseResultMap" type="${capitalFirst(entityName)}">"""
        table.fieldList.each {
            code += """
        <id column="${it.sqlName}" property="${it.javaName}" jdbcType="${it.fieldType.jdbcType}"/>"""
        }
        code += """
    </resultMap>
    """
    }

    private baseColCode = { ->
        String code = """
    <sql id=\"Base_Column_List\">"""
        String filed = ""
        table.fieldList.each {
            filed += """
        ${it.sqlName},"""
        }
        if (StringUtils.isNoneBlank(filed)) {
            code += filed[0..-2]
        }
        code += """
    </sql>
    """
        code
    }

    private selectById = { ->
        """
    <select id="select${capitalFirst(entityName)}ById" resultMap="BaseResultMap" parameterType="java.lang.Long">
        select 
        <include refid="Base_Column_List"/>
        from
        ${completeTableName}
        where 
        id = #{id,jdbcType=BIGINT}
    </select>
        """
    }

    private selectListByParam = { ->
        String code = """
    <select id="select${capitalFirst(entityName)}ListByParam" resultMap="BaseResultMap" parameterType="${
            capitalFirst(entityName)
        }">
        select 
        <include refid="Base_Column_List"/>
        from
        ${completeTableName}
        where
        1 = 1"""
        table.fieldList.each {
            code += """
        <if test="${it.javaName} != null">
            and ${it.sqlName} = #{${it.javaName},jdbcType=${it.fieldType.jdbcType}}
        </if>"""
        }
        code += """
    </select>
"""
        code
    }

    private deleteById = { ->
        """
    <delete id="delete${capitalFirst(entityName)}ById" parameterType="java.lang.Long">
        delete from ${completeTableName}
        where id = #{id,jdbcType=BIGINT}
    </delete>
"""

    }

    private update = { ->
        String code = """
    <update id="update${capitalFirst(entityName)}ById" parameterType="${capitalFirst(entityName)}" >
        update ${completeTableName}
        <set>"""
        table.fieldList.each {
            code += """
            <if test="${it.javaName} != null">
                ${it.sqlName} = #{${it.javaName},jdbcType=${it.fieldType.jdbcType}},
            </if>"""
        }
        code += """
        </set>
        where id = #{id,jdbcType=BIGINT}
    </update>
"""
    }

    private insert = { ->
        String code = """
    <insert id="insert${capitalFirst(entityName)}" parameterType="${capitalFirst(entityName)}" >
        insert into ${completeTableName}
        <trim prefix="(" suffix=")" suffixOverrides="," >"""
        table.fieldList.each {
            code += """
            <if test="${it.javaName} != null" >
                ${it.sqlName},
            </if>"""
        }
        code += """
        </trim>
        <trim prefix="values (" suffix=")" suffixOverrides=",">"""
        table.fieldList.each {
            code += """
            <if test="${it.javaName} != null" >
                #{${it.javaName},jdbcType=${it.fieldType.jdbcType}},
            </if>"""
        }
        code += """
        </trim>
    </insert>
"""
    }


    @Override
    protected String tailCode() {
        """
</mapper>
"""
    }

}
