<%-- 
    Document   : picture
    Created on : Aug 23, 2026, 11:30:56 PM
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
    String email = "cs@pocinui.com";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kontak - <%= course_name %></title>
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
        <%
            String status = request.getParameter("status");
        %>
        <!-- NAVBAR -->
        <nav>
            <div class="logo">
                <img src="img/pocinui.png" alt="Pocinui"> 
                
                <span>
                    <%= course_name %>
                </span>
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
                    Hubungi Kami
                </h1>
                <p>
                    Punya pertanyaan tentang program belajar?
                    Jangan ragu untuk menghubungi kami.
                </p>
            </div>
        </section>

        <!-- CONTACT -->
        <section class="contact-section">
            <div class="contact-container">
                <!-- CONTACT INFO -->
                <div class="contact-info">
                    <h2>
                        Mari Terhubung
                    </h2>
                    <p>
                        Tim <%= course_name %> siap membantu menjawab
                        pertanyaan mengenai program belajar,
                        pendaftaran, dan informasi lainnya.
                    </p>
                    <div class="contact-item">
                        <div class="contact-icon">
                            📍
                        </div>
                        <div>
                            <h3>
                                Alamat
                            </h3>
                            <p>
                                Jl. Sirojul Munir,RT 01 / RW 10, Jatiasih / Jatisari, Kota Bekasi, Indonesia
                            </p>
                        </div>
                    </div>

                    <div class="contact-item">
                        <div class="contact-icon">
                            📱
                        </div>
                        <div>
                            <h3>
                                WhatsApp
                            </h3>
                            <p>
                                +62-8577-345-7585
                            </p>
                        </div>
                    </div>

                    <div class="contact-item">
                        <div class="contact-icon">
                            ✉️
                        </div>
                        <div>
                            <h3>
                                Email
                            </h3>
                            <p>
                                <%= email %>
                            </p>
                        </div>
                    </div>

                    <div class="contact-item">
                        <div class="contact-icon">
                            🕐
                        </div>
                        <div>
                            <h3>
                                Jam Operasional
                            </h3>
                            <p>
                                Senin - Sabtu
                                <br>
                                08.00 - 20.00
                            </p>
                        </div>
                    </div>
                </div>
                
                <%
                    if ("sukses".equals(status)) {
                %>

                    <div class="success-message">
                        Pesan berhasil dikirim!
                        Tim Pocinui akan segera menghubungi kamu.
                    </div>

                <%
                    } else if ("gagal".equals(status)) {
                %>

                    <div class="error-message">
                        Pesan gagal dikirim.
                        Silakan coba lagi.
                    </div>

                <%
                    }
                %>

                <!-- FORM -->
                <div class="contact-form">
                    <h2>
                        Kirim Pesan
                    </h2>
                    <form action="KontakServlet" method="post">
                        <label>
                            Nama Lengkap
                        </label>
                        <input
                            type="text"
                            name="nama"
                            placeholder="Masukkan nama kamu"
                            required>
                        <label>
                            Email
                        </label>
                        <input
                            type="email"
                            name="email"
                            placeholder="Masukkan email kamu"
                            required
                        >
                        <label>
                            Nomor WhatsApp
                        </label>
                        <input
                            type="text"
                            name="no_hp"
                            placeholder="08xxxxxxxxxx"
                        >
                        <label>
                            Subjek
                        </label>
                        <select name="subjek">
                            <option value="">
                                Pilih topik
                            </option>
                            <option value="program">
                                Informasi Program
                            </option>
                            <option value="pendaftaran">
                                Pendaftaran
                            </option>
                            <option value="harga">
                                Informasi Harga
                            </option>
                            <option value="lainnya">
                                Lainnya
                            </option>
                        </select>
                        <label>
                            Pesan
                        </label>
                        <textarea
                            name="pesan"
                            rows="6"
                            placeholder="Tulis pesan kamu..."
                            required
                        ></textarea>
                        <button type="submit">
                            Kirim Pesan
                        </button>
                    </form>
                </div>
            </div>
        </section>

        <!-- CTA -->
        <section class="cta">
            <h2>
                Siap Bergabung dengan <%= course_name %>?
            </h2>
            <p>
                Mulai perjalanan belajar kamu bersama kami.
            </p>
            <a href="daftar.jsp">
                Daftar Sekarang
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