/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author hanasbp
 */
public class Koneksi {
    
    private static final String URL =
            "jdbc:mariadb://localhost:3306/pocinui";

    private static final String USER =
            "root";

    private static final String PASSWORD =
            "";

    public static Connection getConnection()
            throws SQLException {

        return DriverManager.getConnection(
                URL,
                USER,
                PASSWORD
        );
    }
    public static void main(String[] args) {

        try {

            Connection conn = getConnection();

            System.out.println(
                    "Koneksi database berhasil!"
            );

            conn.close();

        } catch (SQLException e) {

            System.out.println(
                    "Koneksi database gagal!"
            );

            e.printStackTrace();
        }
    }
}
