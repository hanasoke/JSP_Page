package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Koneksi {

    private static final String URL =
            "jdbc:mariadb://localhost:3306/pocinui";

    private static final String USER = "root";
    private static final String PASSWORD = "";

    public static Connection getConnection()
            throws SQLException {

        try {
            Class.forName("org.mariadb.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new SQLException(
                    "MariaDB JDBC Driver tidak ditemukan.",
                    e
            );
        }

        return DriverManager.getConnection(
                URL,
                USER,
                PASSWORD
        );
    }

    public static void main(String[] args) {

        try (Connection conn = getConnection()) {

            System.out.println(
                    "Koneksi database berhasil!"
            );

        } catch (SQLException e) {

            System.out.println(
                    "Koneksi database gagal!"
            );

            e.printStackTrace();
        }
    }
}