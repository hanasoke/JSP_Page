package servlet;

import config.Koneksi;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/KontakServlet")
public class KontakServlet extends HttpServlet {

    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        // Mengambil data dari form
        String nama = request.getParameter("nama");
        String email = request.getParameter("email");
        String noHp = request.getParameter("no_hp");
        String subjek = request.getParameter("subjek");
        String pesan = request.getParameter("pesan");

        String sql =
            "INSERT INTO pesan_kontak " +
            "(nama, email, no_hp, subjek, pesan) " +
            "VALUES (?, ?, ?, ?, ?)";

        try (
            Connection conn = Koneksi.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)
        ) {

            ps.setString(1, nama);
            ps.setString(2, email);
            ps.setString(3, noHp);
            ps.setString(4, subjek);
            ps.setString(5, pesan);

            ps.executeUpdate();

            response.sendRedirect(
                "kontak.jsp?status=sukses"
            );

        } catch (Exception e) {

            e.printStackTrace();

            response.sendRedirect(
                "kontak.jsp?status=gagal"
            );
//            response.setContentType("text/plain");
//            response.getWriter().println(
//                "Error: " + e.getMessage()
//            );
        }
    }
}