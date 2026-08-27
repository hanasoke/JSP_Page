<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String course_name = "Pocinui";
    java.util.Calendar calender = java.util.Calendar.getInstance();
    int year = calender.get(java.util.Calendar.YEAR);
%>

<!DOCTYPE html>
<html lang="id">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Pendaftaran Siswa - <%= course_name %></title>
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>
        <!-- ========================= NAVBAR ========================= -->
        <nav>
            <div class="logo">
                <img src="img/pocinui.png"
                     alt="Logo Pocinui">
                <span>
                    <%= course_name %>
                </span>
            </div>
            <ul>
                <li>
                    <a href="index.jsp">Home</a>
                </li>

                <li>
                    <a href="program.jsp">Program</a>
                </li>

                <li>
                    <a href="tentang.jsp">Tentang</a>
                </li>

                <li>
                    <a href="kontak.jsp">Kontak</a>
                </li>

                <li>
                    <a href="daftar.jsp" class="btn-daftar">
                        Daftar
                    </a>
                </li>
            </ul>
        </nav>

        <!-- ========================= HERO ========================= -->
        <section class="register-hero">
            <div class="register-hero-content">
                <span class="register-badge">
                    🎓 Pendaftaran Siswa
                </span>
                <h1>
                    Mulai Perjalanan
                    <span>Belajarmu</span>
                    Bersama Pocinui
                </h1>
                <p>
                    Isi formulir pendaftaran berikut.
                    Tim Pocinui akan menghubungi kamu untuk
                    memberikan informasi selanjutnya.
                </p>
            </div>
        </section>

        <!-- ========================= FORM PENDAFTARAN ========================= -->
        <section class="registration-section">
            <div class="registration-container">
                <!-- INFORMASI -->
                <div class="registration-info">
                    <span class="section-label">
                        PENDAFTARAN
                    </span>
                    <h2>
                        Bergabung dengan <%= course_name %>
                    </h2>
                    <p>
                        Pilih program belajar yang sesuai dengan
                        kebutuhanmu dan mulai persiapkan masa depan
                        pendidikanmu bersama kami.
                    </p>
                    <div class="register-benefit">
                        <div class="benefit-icon">
                            📚
                        </div>
                        <div>
                            <h3>Materi Terstruktur</h3>
                            <p>
                                Materi pembelajaran disusun agar
                                lebih mudah dipahami.
                            </p>
                        </div>
                    </div>
                    <div class="register-benefit">
                        <div class="benefit-icon">
                            👨‍🏫
                        </div>
                        <div>
                            <h3>Mentor Berpengalaman</h3>
                            <p>
                                Belajar bersama mentor yang siap
                                membantu perkembangan belajarmu.
                            </p>
                        </div>
                    </div>
                    <div class="register-benefit">
                        <div class="benefit-icon">
                            📈
                        </div>
                        <div>
                            <h3>Evaluasi Belajar</h3>
                            <p>
                                Perkembangan belajar akan dipantau
                                melalui latihan dan evaluasi.
                            </p>
                        </div>
                    </div>
                </div>

                <!-- FORM -->
                <div class="registration-form">
                    <div class="form-header">
                        <h2>
                            Form Pendaftaran
                        </h2>
                        <p>
                            Lengkapi data siswa dengan benar.
                        </p>
                    </div>
                    <%
                        String status = request.getParameter("status");
                    %>

                    <%
                        if ("sukses".equals(status)) {
                    %>

                        <div class="alert-success">
                            <strong>✓ Pendaftaran berhasil!</strong>
                            <br>
                            Data kamu sudah kami terima.
                            Tim Pocinui akan segera menghubungi kamu.
                        </div>

                    <%
                        } else if ("gagal".equals(status)) {
                    %>

                        <div class="alert-error">
                            <strong>✕ Pendaftaran gagal.</strong>
                            <br>
                            Terjadi kesalahan saat menyimpan data.
                            Silakan coba kembali.
                        </div>

                    <%
                        } else if ("data_tidak_lengkap".equals(status)) {
                    %>

                        <div class="alert-warning">
                            <strong>⚠ Data belum lengkap.</strong>
                            <br>
                            Silakan lengkapi semua kolom yang wajib diisi.
                        </div>

                    <%
                        }
                    %>
                    <div class="registration-form">
                        <form action="PendaftaranServlet" method="post">
                            <!-- NAMA -->
                            <div class="form-group">
                                <label for="nama">
                                    Nama Lengkap
                                    <span>*</span>
                                </label>
                                <input
                                    type="text"
                                    id="nama"
                                    name="nama"
                                    placeholder="Masukkan nama lengkap"
                                    maxlength="100"
                                    required>
                            </div>

                            <!-- EMAIL -->
                            <div class="form-row">
                                <div class="form-group">
                                    <label for="email">
                                        Email
                                        <span>*</span>
                                    </label>
                                    <input
                                        type="email"
                                        id="email"
                                        name="email"
                                        placeholder="nama@email.com"
                                        maxlength="100"
                                        required
                                    >
                                </div>

                                <!-- WHATSAPP -->
                                <div class="form-group">
                                    <label for="no_hp">
                                        Nomor WhatsApp
                                        <span>*</span>
                                    </label>
                                    <input
                                        type="tel"
                                        id="no_hp"
                                        name="no_hp"
                                        placeholder="08xxxxxxxxxx"
                                        maxlength="20"
                                        required
                                    >
                                </div>
                            </div>

                            <!-- ASAL SEKOLAH -->
                            <div class="form-group">
                                <label for="sekolah">
                                    Asal Sekolah
                                    <span>*</span>
                                </label>
                                <input
                                    type="text"
                                    id="sekolah"
                                    name="sekolah"
                                    placeholder="Contoh: SMA Negeri 1 Bekasi"
                                    maxlength="150"
                                    required
                                >
                            </div>

                            <!-- KELAS + PROGRAM -->
                            <div class="form-row">
                                <div class="form-group">
                                    <label for="kelas">
                                        Kelas
                                        <span>*</span>
                                    </label>
                                    <select
                                        id="kelas"
                                        name="kelas"
                                        required>
                                        <option value="">
                                            Pilih kelas
                                        </option>
                                        <option value="7">
                                            Kelas 7 SMP
                                        </option>
                                        <option value="8">
                                            Kelas 8 SMP
                                        </option>
                                        <option value="9">
                                            Kelas 9 SMP
                                        </option>
                                        <option value="10">
                                            Kelas 10 SMA/SMK
                                        </option>
                                        <option value="11">
                                            Kelas 11 SMA/SMK
                                        </option>
                                        <option value="12">
                                            Kelas 12 SMA/SMK
                                        </option>
                                        <option value="lulusan">
                                            Lulusan / Gap Year
                                        </option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="program">
                                        Program Belajar
                                        <span>*</span>
                                    </label>
                                    <select
                                        id="program"
                                        name="program"
                                        required
                                    >
                                        <option value="">
                                            Pilih program
                                        </option>
                                        <option value="SNBT">
                                            Persiapan SNBT
                                        </option>
                                        <option value="SMA_SMK">
                                            Bimbingan SMA/SMK
                                        </option>
                                        <option value="INTENSIF">
                                            Program Intensif
                                        </option>
                                    </select>
                                </div>
                            </div>

                            <!-- NAMA ORANG TUA -->
                            <div class="form-group">
                                <label for="nama_orangtua">
                                    Nama Orang Tua / Wali
                                </label>
                                <input
                                    type="text"
                                    id="nama_orangtua"
                                    name="nama_orangtua"
                                    placeholder="Masukkan nama orang tua atau wali"
                                    maxlength="100"
                                >
                            </div>

                            <!-- WHATSAPP ORANG TUA -->
                            <div class="form-group">
                                <label for="no_hp_orangtua">
                                    Nomor WhatsApp Orang Tua / Wali
                                </label>
                                <input
                                    type="tel"
                                    id="no_hp_orangtua"
                                    name="no_hp_orangtua"
                                    placeholder="08xxxxxxxxxx"
                                    maxlength="20">
                            </div>

                            <!-- ALAMAT -->
                            <div class="form-group">
                                <label for="alamat">
                                    Alamat
                                </label>
                                <textarea
                                    id="alamat"
                                    name="alamat"
                                    rows="4"
                                    placeholder="Masukkan alamat tempat tinggal"
                                ></textarea>
                            </div>

                            <!-- CATATAN -->
                            <div class="form-group">
                                <label for="catatan">
                                    Catatan
                                </label>
                                <textarea
                                    id="catatan"
                                    name="catatan"
                                    rows="4"
                                    placeholder="Ceritakan target belajar atau informasi tambahan..."
                                ></textarea>
                            </div>


                            <!-- PERSETUJUAN -->
                            <div class="form-check">
                                <input
                                    type="checkbox"
                                    id="persetujuan"
                                    name="persetujuan"
                                    required>
                                <label for="persetujuan">
                                    Saya memastikan data yang saya masukkan
                                    sudah benar dan menyetujui data ini
                                    digunakan untuk proses pendaftaran.
                                </label>
                            </div>

                            <!-- BUTTON -->
                            <button
                                type="submit"
                                class="register-submit">
                                Daftar Sekarang →
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </section>

        <!-- ========================= FOOTER ========================= -->
        <footer>
            <h3>
                <%= course_name %>
            </h3>
            <p>
                Bimbingan belajar untuk membantu siswa
                mempersiapkan masa depan pendidikan.
            </p>
            <br>
            <p>
                © <%= year %> <%= course_name %>. All Rights Reserved.
            </p>
        </footer>

    </body>
</html>