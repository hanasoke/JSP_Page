<%-- 
    Document   : about
    Created on : Aug 24, 2026, 11:16:11 PM
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
        <title>Program Belajar - <%= namaBimbel %></title>
        <link rel="stylesheet" href="css/style.css">
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
                <li><a href="tentang.jsp"><%= advantage %></a></li>
                <li><a href="#kontak"><%= contact %></a></li>
                <li>
                    <a href="#daftar" class="btn-daftar">
                        Daftar
                    </a>
                </li>
            </ul>
        </nav>

        <!-- HERO -->
        <section class="page-hero">
            <div>
                <h1>
                    Program Belajar
                </h1>
                <p>
                    Temukan program belajar yang sesuai
                    dengan kebutuhan dan tujuanmu.
                </p>
            </div>
        </section>


        <!-- PROGRAM -->
        <section class="section">
            <h2>
                Pilihan Program CerdasKu
            </h2>
            <p class="section-description">
                Kami menyediakan berbagai program untuk
                membantu kamu mencapai target pendidikan.
            </p>
            <div class="programs">
                <!-- PROGRAM 1 -->
                <div class="program">
                    <div class="program-icon">
                        🎓
                    </div>
                    <h3>
                        Program SNBT
                    </h3>
                    <p>
                        Program khusus untuk siswa yang ingin
                        mempersiapkan diri menghadapi SNBT
                        dan masuk perguruan tinggi negeri.
                    </p>
                    <ul class="program-list">
                        <li>Materi TPS</li>
                        <li>Latihan soal</li>
                        <li>Tryout berkala</li>
                        <li>Evaluasi hasil belajar</li>
                    </ul>
                    <a href="#">
                        Lihat Detail →
                    </a>
                </div>


                <!-- PROGRAM 2 -->
                <div class="program">
                    <div class="program-icon">
                        📚
                    </div>
                    <h3>
                        Program SMA/SMK
                    </h3>
                    <p>
                        Membantu siswa memahami materi sekolah
                        dan meningkatkan kemampuan akademik.
                    </p>
                    <ul class="program-list">
                        <li>Matematika</li>
                        <li>Bahasa Indonesia</li>
                        <li>Bahasa Inggris</li>
                        <li>Pelajaran pilihan</li>
                    </ul>
                    <a href="#">
                        Lihat Detail →
                    </a>
                </div>


                <!-- PROGRAM 3 -->
                <div class="program">
                    <div class="program-icon">
                        🚀
                    </div>
                    <h3>
                        Program Intensif
                    </h3>
                    <p>
                        Program belajar intensif bagi siswa
                        yang membutuhkan persiapan lebih fokus.
                    </p>
                    <ul class="program-list">
                        <li>Jadwal belajar intensif</li>
                        <li>Latihan soal</li>
                        <li>Tryout</li>
                        <li>Konsultasi belajar</li>
                    </ul>
                    <a href="#">
                        Lihat Detail →
                    </a>
                </div>
            </div>
        </section>

        <!-- CTA -->
        <section class="cta">
            <h2>
                Bingung Memilih Program?
            </h2>
            <p>
                Konsultasikan kebutuhan belajarmu
                bersama tim CerdasKu.
            </p>
            <a href="kontak.jsp">
                Hubungi Kami
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