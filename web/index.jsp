<%-- 
    Document   : index
    Created on : Aug 25, 2026, 10:09:40 PM
    Author     : hanasbp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>CerdasKu - Bimbingan Belajar</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            
            body {
                font-family: Arial, sans-serif;
                color: #222;
                line-height: 1.6;
            }
            
            /* NAVBAR */

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;

            padding: 20px 8%;

            background: white;
            box-shadow: 0 2px 10px rgba(0,0,0,0.08);

            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .logo {
            font-size: 25px;
            font-weight: bold;
        }

        .logo span {
            color: #2563eb;
        }

        nav ul {
            display: flex;
            list-style: none;
            gap: 30px;
        }

        nav a {
            text-decoration: none;
            color: #333;
            font-weight: 500;
        }

        nav a:hover {
            color: #2563eb;
        }

        .btn-daftar {
            background: #2563eb;
            color: white !important;
            padding: 10px 18px;
            border-radius: 8px;
        }


        /* HERO */

        .hero {
            min-height: 600px;

            display: flex;
            align-items: center;
            justify-content: space-between;

            padding: 70px 8%;

            background: #eff6ff;
        }

        .hero-text {
            max-width: 600px;
        }

        .hero h1 {
            font-size: 52px;
            line-height: 1.2;
            margin-bottom: 20px;
        }

        .hero h1 span {
            color: #2563eb;
        }

        .hero p {
            font-size: 18px;
            color: #555;
            margin-bottom: 30px;
        }

        .hero-button {
            display: inline-block;

            background: #2563eb;
            color: white;

            padding: 14px 25px;

            border-radius: 8px;

            text-decoration: none;
            font-weight: bold;
        }

        .hero-button:hover {
            background: #1d4ed8;
        }

        .hero-image {
            width: 400px;
            height: 350px;

            background: #bfdbfe;

            border-radius: 30px;

            display: flex;
            justify-content: center;
            align-items: center;

            font-size: 80px;
        }


        /* SECTION */

        .section {
            padding: 80px 8%;
            text-align: center;
        }

        .section h2 {
            font-size: 35px;
            margin-bottom: 15px;
        }

        .section-description {
            color: #666;
            margin-bottom: 50px;
        }


        /* FEATURES */

        .features {
            display: grid;

            grid-template-columns: repeat(3, 1fr);

            gap: 25px;
        }

        .feature {
            padding: 30px;

            border-radius: 15px;

            box-shadow: 0 5px 20px rgba(0,0,0,0.08);

            background: white;
        }

        .feature-icon {
            font-size: 45px;
            margin-bottom: 15px;
        }

        .feature h3 {
            margin-bottom: 10px;
        }

        .feature p {
            color: #666;
        }


        /* PROGRAM */

        .program-section {
            background: #f8fafc;
        }

        .programs {
            display: grid;

            grid-template-columns: repeat(3, 1fr);

            gap: 25px;
        }

        .program {
            background: white;

            padding: 30px;

            border-radius: 15px;

            text-align: left;

            box-shadow: 0 5px 20px rgba(0,0,0,0.07);
        }

        .program h3 {
            color: #2563eb;
            margin-bottom: 10px;
        }

        .program p {
            color: #666;
            margin-bottom: 20px;
        }

        .program a {
            color: #2563eb;
            text-decoration: none;
            font-weight: bold;
        }


        /* CTA */

        .cta {
            padding: 80px 8%;

            text-align: center;

            background: #2563eb;

            color: white;
        }

        .cta h2 {
            font-size: 35px;
            margin-bottom: 15px;
        }

        .cta p {
            margin-bottom: 25px;
        }

        .cta a {
            display: inline-block;

            background: white;
            color: #2563eb;

            padding: 14px 25px;

            border-radius: 8px;

            text-decoration: none;

            font-weight: bold;
        }


        /* FOOTER */

        footer {
            background: #111827;
            color: white;

            padding: 40px 8%;

            text-align: center;
        }

        footer p {
            color: #9ca3af;
        }


        /* RESPONSIVE */

        @media (max-width: 768px) {

            nav ul {
                display: none;
            }

            .hero {
                flex-direction: column;
                text-align: center;
                gap: 40px;
            }

            .hero h1 {
                font-size: 38px;
            }

            .hero-image {
                width: 100%;
                height: 250px;
            }

            .features,
            .programs {
                grid-template-columns: 1fr;
            }
        }
        </style>
    </head>
    <body>
        <!-- NAVBAR -->
        <nav>
            <div class="logo">
                Cerdas<span>Ku</span>
            </div>

            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#program">Program</a></li>
                <li><a href="#keunggulan">Keunggulan</a></li>
                <li><a href="#kontak">Kontak</a></li>
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
                    Bersama CerdasKu
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
                Kenapa Memilih CerdasKu?
            </h2>
            <p class="section-description">
                Kami membantu siswa belajar dengan cara
                yang lebih terarah dan efektif.
            </p>
            <div class="features">
                <div class="feature">
                    <div class="feature-icon">
                        👨‍?
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
                CerdasKu
            </h3>
            <p>
                Bimbingan belajar untuk masa depan yang lebih baik.
            </p>
            <br>
            <p>
                © 2026 CerdasKu. All Rights Reserved.
            </p>
        </footer>
        
    </body>
</html>