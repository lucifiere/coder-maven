package com.lucfiere.resolver

import com.lucfiere.resolver.appender.*
import com.lucfiere.resolver.appender.mt.MtMapperXMLResolver
import com.lucfiere.resolver.appender.mt.MtRepositoryImplResolver
import com.lucfiere.resolver.appender.mt.MtRespResolver

class ResolverFactory {

    static List<Resolver> defaultResolvers =
            [
                    new StandardPojoResolver(),
                    new StandardDaoImplResolver(),
                    new StandardDaoResolver(),
                    new StandardMapperResolver(),
                    new StandardCriteriaResolver(),
                    new StandardServiceResolver(),
                    new StandardServiceImplResolver(),
                    new StandardMapperXMLResolver()
            ]


    static List<Resolver> damaiResolvers =
            [
                    new StandardPojoResolver(),
                    new DamaiMapperResolver(),
                    new StandardCriteriaResolver(),
                    new DamaiServiceResolver(),
                    new DamaiServiceImplResolver(),
                    new StandardMapperXMLResolver()
            ]

    static List<Resolver> mtResolvers =
            [
                    new StandardPojoResolver(),
                    new MtMapperXMLResolver(),
                    new MtRepositoryImplResolver(),
                    new MtRespResolver()
            ]


}
