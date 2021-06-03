package app.test;

import java.sql.*;

public class User {
    public int DatabaseSelect(String number, String password) {
        int t=0;
        Connection conn=null;
        String num = null;
        String numpwd = null;
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/test";
        try {
            //加载驱动程序
            Class.forName(driver);
            //1.getConnection()方法，连接MySQL数据库！！
            conn = DriverManager.getConnection(url, "root", "root");
            //2.创建statement类对象，用来执行SQL语句！！
            Statement statement = conn.createStatement();
            //要执行的SQL语句
            String sql = "select * from user";
            //3.ResultSet类，用来存放获取的结果集！！
            ResultSet rs = statement.executeQuery(sql);
            while (rs.next()) {
                num = rs.getString("userName");
                numpwd = rs.getString("userPassword");
                if (number.equals(num) && password.equals(numpwd)) {
                    t=1;
                    break;
                }
                else {
                    continue;
                }
            }
            rs.close();
            statement.close();
            conn.close();
            rs=null;
            statement=null;
            conn=null;
            if (t!=1) {
                return 2;
            }
            else
                return 1;
        }
        catch (Exception e) {
            return 3;
        }
    }

    public int DatabaseAdd(String number, String password1, String password2) {
        int t = 0,x=0;
        String username;
        String userPassword;
        Connection conn = null;
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/test";
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, "root", "root");
            Statement statement = conn.createStatement();
            PreparedStatement psql = null;
            ResultSet res;
            String sql = "select * from user";
            ResultSet rs = statement.executeQuery(sql);
            while (rs.next())
            {
                if (rs.getString("userName").equals(number)) {
                    t=1;
                    break;
                }
            }
            if (t == 1) {
                return 1;
            }
            else {
                if(password1.equals(password2))
                {
                    psql = conn.prepareStatement("insert into user (userName,userPassword) " + "values(?,?)");
                    psql.setString(1, number);
                    psql.setString(2, password1);
                    psql.executeUpdate();
                    psql.close();
                    psql=null;
                    x=4;
                }
                else {
                    x=2;
                }
            }
            conn.close();
            conn=null;
            return x;
        }
        catch (Exception e) {
            e.printStackTrace();
            return 3;
        }
    }
}
