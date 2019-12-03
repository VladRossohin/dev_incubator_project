import java.sql.*;

public class UserJdbc {
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DATABASE_URL = "jdbc:mysql://localhost:3306/dev_incubator_database";


    static final String USER = "dev";
    static final String PASSWORD = "1234";

    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        Connection connection = null;
        Statement statement = null;

        System.out.println("Registering JDBC driver...");

        Class.forName("com.mysql.jdbc.Driver");

        System.out.println("Creating database connection...");
        connection = DriverManager.getConnection(DATABASE_URL, USER, PASSWORD);

        System.out.println("Executing statement...");
        statement = connection.createStatement();

        String sql;
        sql = "SELECT * FROM user;";
        ResultSet resultSet = statement.executeQuery(sql);

        System.out.println("Retrieving data from database...");
        System.out.println("\nUsers:");
        while (resultSet.next()) {
            int id = resultSet.getInt("userid");
            String name = resultSet.getString("name");
            String sureName = resultSet.getString("sureName");
            System.out.println("\n==================\n");
            System.out.println("id: " + id);
            System.out.println("Name: " + name);
            System.out.println("Surname: " + sureName);
        }

        System.out.println("Closing connection and releasing resources...");
        resultSet.close();
        statement.close();
        connection.close();

    }
}
