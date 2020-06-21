package com.lucfiere.resolver

import com.lucfiere.resolver.appender.*

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


}
