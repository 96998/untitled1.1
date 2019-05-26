package com.db;
import org.junit.Test;
import java.sql.*;

public class test1 {
    @Test
    public void Insert()
    {
        Connection con=null;
        Statement statement=null;
        try {
            con = ConnectionManager.getConnection();
            String strSql = "insert into Students values('2013880127','方头','1394','男',10201541)";
            statement = con.createStatement();
            statement.execute(strSql);
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            ConnectionManager.closeStatement(statement);
            ConnectionManager.closeConnection(con);
        }
    }
}
