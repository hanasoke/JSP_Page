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
import java.sql.SQLException;

@WebServlet("/PendaftaranServlet")
public class PendaftaranServlet extends HttpServlet {

    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        // Agar karakter Indonesia terbaca dengan benar
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        // Mengambil data dari daftar.jsp
        String nama =
                request.getParameter("nama");

        String email =
                request.getParameter("email");

        String noHp =
                request.getParameter("no_hp");

        String sekolah =
                request.getParameter("sekolah");

        String kelas =
                request.getParameter("kelas");

        String program =
                request.getParameter("program");

        String namaOrangtua =
                request.getParameter("nama_orangtua");

        String noHpOrangtua =
                request.getParameter("no_hp_orangtua");

        String alamat =
                request.getParameter("alamat");

        String catatan =
                request.getParameter("catatan");


        // Validasi sederhana
        if (nama == null || nama.trim().isEmpty()
                || email == null || email.trim().isEmpty()
                || noHp == null || noHp.trim().isEmpty()
                || sekolah == null || sekolah.trim().isEmpty()
                || kelas == null || kelas.trim().isEmpty()
                || program == null || program.trim().isEmpty()) {

            response.sendRedirect(
                    request.getContextPath()
                    + "/daftar.jsp?status=data_tidak_lengkap"
            );

            return;
        }


        String sql =
                "INSERT INTO siswa "
                + "(nama, email, no_hp, sekolah, kelas, program, "
                + "nama_orangtua, no_hp_orangtua, alamat, catatan) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";


        try (
            Connection conn = Koneksi.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)
        ) {

            ps.setString(1, nama.trim());
            ps.setString(2, email.trim());
            ps.setString(3, noHp.trim());
            ps.setString(4, sekolah.trim());
            ps.setString(5, kelas);
            ps.setString(6, program);
            ps.setString(7, namaOrangtua);
            ps.setString(8, noHpOrangtua);
            ps.setString(9, alamat);
            ps.setString(10, catatan);

            int hasil = ps.executeUpdate();

            if (hasil > 0) {

                response.sendRedirect(
                        request.getContextPath()
                        + "/daftar.jsp?status=sukses"
                );

            } else {

                response.sendRedirect(
                        request.getContextPath()
                        + "/daftar.jsp?status=gagal"
                );
            }

        } catch (SQLException e) {

            System.out.println(
                    "Gagal menyimpan pendaftaran siswa:"
            );

            e.printStackTrace();

            response.sendRedirect(
                    request.getContextPath()
                    + "/daftar.jsp?status=gagal"
            );
        }
    }
}