package com.leo.common.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.Resource;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SQLiteUtils {
    private static final Logger log = LoggerFactory.getLogger(SQLiteUtils.class);
    /**
     * 数据源
     */
    @Resource(name = "sqliteDataSource")
    private DataSource sqliteDataSource;

    /**
     * 获取数据库连接
     *
     * @return conn
     */
    public Connection getConnection() throws SQLException {
        Connection conn = sqliteDataSource.getConnection();
        conn.setAutoCommit(false);
        return conn;
    }

    /**
     * 关闭数据库连接
     *
     * @param conn
     */
    public void close(Connection conn, Statement stmt, ResultSet rs) {
        try {
            if (null != conn) {
                conn.close();
            }
            if (null != stmt) {
                stmt.close();
            }
            if (null != rs) {
                rs.close();
            }
        } catch (SQLException ex) {
            log.error(null, ex);
        }
    }
}
