
import java.sql.*;

import com.mysql.cj.jdbc.Driver;

public class MyDB {
    public static void main(String[] args) {


    {
        try {
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/codeup_test_db?serverTimezone=UTC&useSSL=false",
                    "root",
                    "codeup"
            );

            Statement statement = connection.createStatement();
            String sql = "SELECT * FROM albums";
            ResultSet rs = statement.executeQuery(sql);

            while(rs.next()){
                System.out.println(rs.getString(2));
                System.out.println(rs.getString(3));
            }
            statement.execute("DELETE from albums where id = 32");
            rs = statement.executeQuery(sql);

            while (rs.next()){
                System.out.println(rs.getLong(1));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
}

