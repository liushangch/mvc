package com.leo.common.interceptor;

import com.leo.common.util.CommonUtils;
import org.apache.ibatis.executor.resultset.ResultSetHandler;
import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.SqlCommandType;
import org.apache.ibatis.plugin.*;
import org.apache.ibatis.reflection.DefaultReflectorFactory;
import org.apache.ibatis.reflection.MetaObject;
import org.apache.ibatis.reflection.SystemMetaObject;
import org.apache.shiro.SecurityUtils;

import java.sql.Connection;
import java.sql.Statement;
import java.util.Date;
import java.util.Properties;


/**
 * MyBatis分页查询拦截器
 *
 * @author Leo
 */
@Intercepts({
        @Signature(type = StatementHandler.class, method = "prepare", args = {Connection.class, Integer.class}),
        @Signature(type = ResultSetHandler.class, method = "handleResultSets", args = {Statement.class})
})
public class PageInterceptor implements Interceptor {
    private static String INSERT = "INSERT";
    private static String UPDATE = "UPDATE";
    private static String SELECT = "SELECT";
    /**
     * 数据库方言
     */
    private static String dialect = "";
    /**
     * mapper.xml中需要拦截的ID(正则匹配)
     */
    private static String pattern = "";

    public static String getDialect() {
        return dialect;
    }

    public static void setDialect(String dialect) {
        PageInterceptor.dialect = dialect;
    }

    public static String getPattern() {
        return pattern;
    }

    public static void setPattern(String pattern) {
        PageInterceptor.pattern = pattern;
    }

    @Override
    public Object intercept(Invocation invocation) throws Throwable {
        if (invocation.getTarget() instanceof StatementHandler) {
            StatementHandler statementHandler = (StatementHandler) invocation.getTarget();
            MetaObject metaObject = MetaObject.forObject(statementHandler,
                    SystemMetaObject.DEFAULT_OBJECT_FACTORY,
                    SystemMetaObject.DEFAULT_OBJECT_WRAPPER_FACTORY,
                    new DefaultReflectorFactory());
            MappedStatement mappedStatement = (MappedStatement) metaObject.getValue("delegate.mappedStatement");
            // 拦截新增和修改
            SqlCommandType sqlCommandType = mappedStatement.getSqlCommandType();
            BoundSql boundSql = statementHandler.getBoundSql();
            StringBuilder sql = new StringBuilder(boundSql.getSql().replace("\n", "").toLowerCase());
            // 请求参数
            Object parameterObject = boundSql.getParameterObject();
            //拦截需要分页的SQL
//            if (mappedStatement.getId().matches(pattern)) {

//            Object parameterObject = boundSql.getParameterObject();
//            System.out.println(parameterObject);
////            }
////            String sql = mappedStatement.getId();
//            System.out.println(sql);
            metaObject.setValue("delegate.boundSql.sql", sql.toString());
        }
        return invocation.proceed();
    }

    @Override
    public Object plugin(Object o) {
        if (o instanceof StatementHandler) {
            return Plugin.wrap(o, this);
        } else {
            return o;
        }
    }

    @Override
    public void setProperties(Properties properties) {

    }
}
