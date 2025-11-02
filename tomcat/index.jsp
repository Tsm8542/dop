<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Beautiful Webpage</title>
    <style>
        /* General reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            background-color: #f4f4f4;
            color: #333;
        }

        /* Header */
        header {
            background-color: #2c3e50;
            padding: 20px 0;
            color: white;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 20px;
        }

        .logo h1 {
            font-size: 24px;
        }

        .nav-links {
            list-style: none;
            display: flex;
        }

        .nav-links li {
            margin-left: 20px;
        }

        .nav-links a {
            text-decoration: none;
            color: white;
            font-size: 16px;
            transition: color 0.3s;
        }

        .nav-links a:hover {
            color: #3498db;
        }

        /* Hero Section */
        .hero {
            background: url('https://via.placeholder.com/1600x800') no-repeat center center/cover;
            height: 70vh;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: black;
            padding: 0 20px;
        }

        .hero h2 {
            font-size: 3rem;
            margin-bottom: 10px;
        }

        .hero p {
            font-size: 1.2rem;
            margin-bottom: 20px;
        }

        .cta-button {
            background-color: #3498db;
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 1.1rem;
            transition: background-color 0.3s;
        }

        .cta-button:hover {
            background-color: #2980b9;
        }

        /* Content Section */
        .content {
            padding: 50px 20px;
        }

        .container {
            display: flex;
            justify-content: space-around;
            gap: 30px;
        }

        .card {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 30%;
        }

        .card h3 {
            font-size: 1.8rem;
            margin-bottom: 15px;
        }

        .card p {
            font-size: 1rem;
            color: #555;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 20px;
            background-color: #2c3e50;
            color: white;
        }

        @media (max-width: 768px) {
            .container {
                flex-direction: column;
                align-items: center;
            }

            .card {
                width: 80%;
                margin-bottom: 20px;
            }
        }
    </style>
</head>
<body>
    <header>
        <nav>
            <div class="logo">
                <h1>MyWebsite</h1>
            </div>
            <ul class="nav-links">
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>

    <section class="hero">
        <div class="hero-content">
            <h2>Welcome to My Webpage</h2>
            <p>Simple, elegant, and professional design for your needs.</p>
            <a href="#contact" class="cta-button">Get Started</a>
        </div>
    </section>

    <section class="content">
        <div class="container">
            <div class="card">
                <h3>About Us</h3>
                <p>We provide high-quality digital solutions to help businesses thrive in the online world.</p>
            </div>
            <div class="card">
                <h3>Our Services</h3>
                <p>Explore our wide range of services including web development, design, and digital marketing.</p>
            </div>
            <div class="card">
                <h3>Contact Us</h3>
                <p>Get in touch with us today and take the first step toward growing your business.</p>
            </div>
        </div>
    </section>

    <footer>
        <p>&copy; 2025 MyWebsite. All rights reserved.</p>
    </footer>
</body>
</html>
