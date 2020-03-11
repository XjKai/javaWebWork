package com.XJK.utile;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidDataSourceFactory;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

/**
 * 连接数据库
 */
public class JdbcUtils {

    private static DruidDataSource druidDataSource;

    static {

        try {
            Properties properties = new Properties();
            //读取配置文件
            InputStream inputStream = JdbcUtils.class.getClassLoader().getResourceAsStream("druid.properties");
            //从流中加载数据
            properties.load(inputStream);
            //创建数据库连接池
            druidDataSource = (DruidDataSource) DruidDataSourceFactory.createDataSource(properties);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    /**
     * 获取数据库连接池中的连接
     * @return
     */
    public  static Connection getConnection(){
        Connection conn = null;
        try{
            conn = druidDataSource.getConnection();
        }catch(Exception e){
            e.printStackTrace();
        }
        return  conn;
    }

    /**
     * 关闭连接，放回数据库连接池
     * @param conn
     */
    public static  void close(Connection conn){
        if (conn != null){
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
