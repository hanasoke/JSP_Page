<%-- 
    Document   : index
    Created on : Aug 25, 2026, 10:09:40 PM
    Author     : hanasbp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String namaBimbel = "Pocinui";
    java.util.Calendar calender = java.util.Calendar.getInstance();
    int year = calender.get(java.util.Calendar.YEAR);
    
    String home = "Home";
    String program = "Program";
    String advantage = "Keunggulan";
    String contact = "Contact";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title><%= namaBimbel %> - Bimbingan Belajar</title>
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
        <!-- NAVBAR -->
        <nav>
            <div class="logo">
                <%= namaBimbel %>
            </div>

            <ul>
                <li><a href="index.jsp"><%= home %></a></li>
                <li><a href="program.jsp"><%= program %></a></li>
                <li><a href="#keunggulan"><%= advantage %></a></li>
                <li><a href="#kontak"><%= contact %></a></li>
                <li>
                    <a href="#daftar" class="btn-daftar">
                        Daftar
                    </a>
                </li>
            </ul>
        </nav>
        
        <!-- HERO -->
        <section class="hero">
            <div class="hero-text">
                <h1>
                    Raih <span>Kampus Impianmu</span>
                    Bersama <%= namaBimbel %>
                </h1>
                <p>
                    Bimbingan belajar untuk membantu kamu
                    mempersiapkan SNBT, ujian sekolah,
                    dan menghadapi dunia perkuliahan.
                </p>
                <a href="#daftar" class="hero-button">
                    Daftar Sekarang
                </a>
            </div>
            <div class="hero-image">
                🎓
            </div>
        </section>


        <!-- KEUNGGULAN -->
        <section class="section" id="keunggulan">
            <h2>
                Kenapa Memilih <%= namaBimbel %>?
            </h2>
            <p class="section-description">
                Kami membantu siswa belajar dengan cara
                yang lebih terarah dan efektif.
            </p>
            <div class="features">
                <div class="feature">
                    <div class="feature-icon">
                        👨‍
                    </div>
                    <h3>
                        Mentor Berpengalaman
                    </h3>
                    <p>
                        Belajar bersama mentor yang
                        berpengalaman dan siap membimbingmu.
                    </p>
                </div>
                <div class="feature">
                    <div class="feature-icon">
                        📚
                    </div>
                    <h3>
                        Materi Terstruktur
                    </h3>
                    <p>
                        Materi pembelajaran disusun secara
                        sistematis agar mudah dipahami.
                    </p>
                </div>
                <div class="feature">
                    <div class="feature-icon">
                        📈
                    </div>
                    <h3>
                        Evaluasi Berkala
                    </h3>
                    <p>
                        Pantau perkembangan belajarmu
                        melalui latihan dan evaluasi rutin.
                    </p>
                </div>
            </div>
        </section>

        <!-- PROGRAM -->
        <section class="section program-section" id="program">
            <h2>
                Program Belajar
            </h2>
            <p class="section-description">
                Pilih program yang sesuai dengan kebutuhanmu.
            </p>
            <div class="programs">
                <div class="program">
                    <h3>
                        Program SNBT
                    </h3>
                    <p>
                        Persiapan menghadapi SNBT dengan
                        latihan soal dan simulasi berkala.
                    </p>
                    <a href="#">
                        Lihat Program →
                    </a>
                </div>
                <div class="program">
                    <h3>
                        Program SMA/SMK
                    </h3>
                    <p>
                        Membantu siswa memahami materi
                        sekolah dan meningkatkan prestasi.
                    </p>
                    <a href="#">
                        Lihat Program →
                    </a>
                </div>
                <div class="program">
                    <h3>
                        Program Intensif
                    </h3>
                    <p>
                        Program khusus untuk siswa yang
                        ingin belajar lebih intensif.
                    </p>
                    <a href="#">
                        Lihat Program →
                    </a>
                </div>
            </div>
        </section>

        <!-- CTA -->
        <section class="cta" id="daftar">
            <h2>
                Siap Memulai Perjalananmu?
            </h2>
            <p>
                Jangan tunggu sampai terlambat.
                Mulai persiapkan masa depanmu sekarang.
            </p>
            <a href="#">
                Daftar Sekarang
            </a>
        </section>


        <!-- FOOTER -->
        <footer id="kontak">
            <h3>
                <%= namaBimbel %>
            </h3>
            <p>
                Bimbingan belajar untuk masa depan yang lebih baik.
            </p>
            <br>
            <p>
                © <%= year %> <%= namaBimbel %>. All Rights Reserved.
            </p>
        </footer>
        
    </body>
</html>