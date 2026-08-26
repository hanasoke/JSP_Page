<%-- 
    Document   : tentang
    Created on : Aug 25, 2026, 10:25:47 PM
    Author     : hanasbp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String course_name = "Pocinui";
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tentang Kami - <%= course_name %></title>
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
        <!-- NAVBAR -->

        <nav>
            <div class="logo">
                <%= course_name %>
            </div>
            <ul>
                <li>
                    <a href="index.jsp">
                        <%= home %>
                    </a>
                </li>
                <li>
                    <a href="program.jsp">
                        <%= program %>
                    </a>
                </li>
                <li>
                    <a href="tentang.jsp">
                        <%= advantage %>
                    </a>
                </li>
                <li>
                    <a href="kontak.jsp">
                        <%= contact %>
                    </a>
                </li>
                <li>
                    <a href="daftar.jsp"
                       class="btn-daftar">
                        Daftar
                    </a>
                </li>
            </ul>
        </nav>


        <!-- HERO -->
        <section class="page-hero">
            <div>
                <h1>
                    Tentang <%= course_name %>
                </h1>
                <p>
                    Mengenal lebih dekat siapa kami
                    dan bagaimana kami membantu siswa.
                </p>
            </div>
        </section>


        <!-- ABOUT -->
        <section class="about-section">
            <div class="about-content">
                <div class="about-image">
                    🎓
                </div>
                <div class="about-text">
                    <h2>
                        Belajar Lebih Terarah,
                        Meraih Masa Depan
                    </h2>
                    <p>
                        <%= course_name %> adalah bimbingan belajar yang
                        hadir untuk membantu siswa mendapatkan
                        pengalaman belajar yang lebih terarah,
                        nyaman, dan efektif.
                    </p>
                    <p>
                        Kami percaya bahwa setiap siswa memiliki
                        kemampuan dan potensi yang berbeda.
                        Karena itu, proses belajar tidak hanya
                        tentang mendapatkan nilai tinggi,
                        tetapi juga memahami cara belajar
                        yang sesuai dengan diri masing-masing.
                    </p>
                    <p>
                        Melalui mentor berpengalaman, materi
                        terstruktur, latihan soal, dan evaluasi
                        berkala, kami membantu siswa mempersiapkan
                        diri untuk menghadapi berbagai tantangan
                        pendidikan.
                    </p>
                </div>
            </div>
        </section>


        <!-- VISI MISI -->
        <section class="section about-background">
            <h2>
                Visi & Misi
            </h2>
            <p class="section-description">
                Komitmen kami dalam mendampingi perjalanan
                pendidikan siswa.
            </p>
            <div class="features">
                <div class="feature">
                    <div class="feature-icon">
                        🌟
                    </div>
                    <h3>
                        Visi
                    </h3>
                    <p>
                        Menjadi bimbingan belajar yang membantu
                        siswa berkembang, percaya diri, dan
                        mampu mencapai tujuan pendidikannya.
                    </p>
                </div>
                <div class="feature">
                    <div class="feature-icon">
                        🎯
                    </div>
                    <h3>
                        Misi
                    </h3>
                    <p>
                        Menyediakan pembelajaran yang berkualitas,
                        terstruktur, dan sesuai dengan kebutuhan
                        setiap siswa.
                    </p>
                </div>
                <div class="feature">
                    <div class="feature-icon">
                        🤝
                    </div>
                    <h3>
                        Komitmen
                    </h3>
                    <p>
                        Mendampingi siswa secara konsisten agar
                        mereka dapat berkembang dan mencapai
                        target belajar mereka.
                    </p>
                </div>
            </div>
        </section>


        <!-- CTA -->
        <section class="cta">
            <h2>
                Mari Belajar Bersama <%= course_name %>
            </h2>
            <p>
                Bersama-sama mempersiapkan langkah
                menuju masa depan yang lebih baik.
            </p>
            <a href="program.jsp">
                Lihat Program
            </a>
        </section>


        <!-- FOOTER -->
        <footer>
            <h3>
                <%= course_name %>
            </h3>
            <p>
                Bimbingan belajar untuk masa depan yang lebih baik.
            </p>
            <br>
            <p>
                © <%= year %> <%= course_name %>. All Rights Reserved.
            </p>
        </footer>
    </body>
</html>
