<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Miraya Agrawal | Student Portfolio</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        /* Reset and Base Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        :root {
            --primary: #7c3aed;
            --secondary: #5b21b6;
            --accent: #ec4899;
            --dark: #1e293b;
            --light: #f8fafc;
            --gray: #64748b;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            background-color: var(--light);
            color: var(--dark);
            line-height: 1.6;
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        section {
            padding: 80px 0;
        }

        h1, h2, h3, h4 {
            margin-bottom: 1rem;
            line-height: 1.2;
        }

        h1 {
            font-size: 3rem;
        }

        h2 {
            font-size: 2.2rem;
            text-align: center;
            margin-bottom: 3rem;
            position: relative;
        }

        h2::after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 4px;
            background: var(--primary);
        }

        p {
            margin-bottom: 1.5rem;
        }

        .btn {
            display: inline-block;
            padding: 12px 28px;
            background: var(--primary);
            color: white;
            border-radius: 30px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
            border: none;
            cursor: pointer;
        }

        .btn:hover {
            background: var(--secondary);
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .btn-outline {
            background: transparent;
            border: 2px solid var(--primary);
            color: var(--primary);
        }

        .btn-outline:hover {
            background: var(--primary);
            color: white;
        }

        /* Header & Navigation */
        header {
            background: white;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 0;
        }

        .logo {
            font-size: 1.8rem;
            font-weight: 700;
            color: var(--primary);
            text-decoration: none;
            display: flex;
            align-items: center;
        }

        .logo i {
            margin-right: 10px;
        }

        .nav-links {
            display: flex;
            list-style: none;
        }

        .nav-links li {
            margin-left: 2rem;
        }

        .nav-links a {
            text-decoration: none;
            color: var(--dark);
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .nav-links a:hover {
            color: var(--primary);
        }

        .hamburger {
            display: none;
            cursor: pointer;
        }

        /* Hero Section */
        .hero {
            height: 100vh;
            display: flex;
            align-items: center;
            background: linear-gradient(135deg, #f0f9ff 0%, #e0f2fe 100%);
            margin-top: 70px;
            text-align: center;
        }

        .hero-content {
            width: 100%;
        }

        .hero-image {
            margin: 0 auto 2rem;
            width: 200px;
            height: 200px;
            border-radius: 50%;
            overflow: hidden;
            border: 5px solid white;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        .hero-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .hero h1 {
            margin-bottom: 1rem;
        }

        .hero p {
            font-size: 1.2rem;
            margin-bottom: 2rem;
            color: var(--gray);
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }

        .highlight {
            color: var(--primary);
        }

        .accent {
            color: var(--accent);
        }

        /* About Section */
        .about {
            background: white;
        }

        .about-content {
            display: flex;
            align-items: center;
            gap: 3rem;
        }

        .about-text {
            flex: 1;
        }

        .about-image {
            flex: 1;
            text-align: center;
        }

        .about-image img {
            max-width: 100%;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        .skills {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
            margin-top: 2rem;
        }

        .skill {
            background: #e0f2fe;
            padding: 8px 16px;
            border-radius: 20px;
            font-size: 0.9rem;
            font-weight: 500;
        }

        .philosophy {
            background: #f0f9ff;
            padding: 1.5rem;
            border-radius: 10px;
            margin: 2rem 0;
            border-left: 4px solid var(--accent);
        }

        .philosophy h3 {
            color: var(--accent);
        }

        /* Hobbies Section */
        .hobbies {
            background: #f8fafc;
        }

        .hobby-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 2rem;
        }

        .hobby-card {
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
            text-align: center;
            padding: 2rem 1.5rem;
        }

        .hobby-card:hover {
            transform: translateY(-10px);
        }

        .hobby-icon {
            font-size: 2.5rem;
            color: var(--primary);
            margin-bottom: 1rem;
        }

        /* Goals Section */
        .goals {
            background: white;
        }

        .goal-content {
            display: flex;
            flex-direction: column;
            gap: 2rem;
        }

        .goal-card {
            background: #f8fafc;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            border-left: 4px solid var(--primary);
        }

        .goal-card h3 {
            color: var(--primary);
            display: flex;
            align-items: center;
        }

        .goal-card h3 i {
            margin-right: 10px;
        }

        /* Contact Section */
        .contact {
            background: linear-gradient(135deg, #f0f9ff 0%, #e0f2fe 100%);
        }

        .contact-container {
            display: flex;
            gap: 3rem;
        }

        .contact-info {
            flex: 1;
        }

        .contact-form {
            flex: 1;
        }

        .contact-item {
            display: flex;
            align-items: center;
            margin-bottom: 1.5rem;
        }

        .contact-icon {
            background: var(--primary);
            color: white;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 1rem;
            font-size: 1.2rem;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 500;
        }

        .form-control {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
        }

        textarea.form-control {
            min-height: 150px;
            resize: vertical;
        }

        /* Footer */
        footer {
            background: var(--dark);
            color: white;
            padding: 3rem 0;
            text-align: center;
        }

        .footer-content {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .social-links {
            display: flex;
            gap: 1.5rem;
            margin: 2rem 0;
        }

        .social-links a {
            color: white;
            font-size: 1.5rem;
            transition: color 0.3s ease;
        }

        .social-links a:hover {
            color: var(--primary);
        }

        .copyright {
            margin-top: 2rem;
            color: #94a3b8;
            font-size: 0.9rem;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            h1 {
                font-size: 2.5rem;
            }
            
            h2 {
                font-size: 2rem;
            }
            
            .navbar {
                flex-direction: column;
                align-items: flex-start;
            }
            
            .nav-links {
                flex-direction: column;
                width: 100%;
                display: none;
                margin-top: 1rem;
            }
            
            .nav-links.active {
                display: flex;
            }
            
            .nav-links li {
                margin: 0.5rem 0;
            }
            
            .hamburger {
                display: block;
                position: absolute;
                top: 20px;
                right: 20px;
            }
            
            .about-content, .contact-container {
                flex-direction: column;
            }
            
            .about-text, .contact-info {
                padding-right: 0;
                margin-bottom: 2rem;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <nav class="navbar">
                <a href="#" class="logo"><i class="fas fa-star"></i> Miraya Agrawal</a>
                <ul class="nav-links">
                    <li><a href="#home">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#hobbies">Hobbies</a></li>
                    <li><a href="#goals">Goals</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
                <div class="hamburger">
                    <i class="fas fa-bars"></i>
                </div>
            </nav>
        </div>
    </header>

    <section class="hero" id="home">
        <div class="container">
            <div class="hero-content">
                <div class="hero-image">
                    <img src="WhatsApp Image 2025-11-07 at 23.26.26_161e01b5.jpg" alt="Miraya Agrawal in a traditional outfit">
                </div>
                <h1>Hi, I'm <span class="highlight">Miraya Agrawal</span></h1>
                <h2>Student & Creative Thinker</h2>
                <p>I combine <span class="accent">creativity, curiosity, and analytical thinking</span> to approach problems in unique ways. I strive to add a personal touch that reflects both imagination and precision in everything I do.</p>
                <a href="#about" class="btn">Learn More About Me</a>
                <a href="#contact" class="btn btn-outline">Get In Touch</a>
            </div>
        </div>
    </section>

    <section class="about" id="about">
        <div class="container">
            <h2>About Me</h2>
            <div class="about-content">
                <div class="about-text">
                    <p>Hi! I'm <span class="highlight">Miraya Agrawal</span>, a Class 8 student at DPS Biratnagar with a curious mind and a creative heart. I love exploring new ideas, whether through art, books, or science experiments. I believe that learning becomes more exciting when it connects to real life, so I try to find meaning in everything I study.</p>
                    
                    <p>My friends describe me as cheerful, dependable, and full of ideas. I enjoy working in teams, organizing small projects, and learning new skills online. My goal is to grow into someone who uses creativity and logic together to make a positive difference in the world.</p>
                    
                    <div class="philosophy">
                        <h3><i class="fas fa-lightbulb"></i> My Philosophy</h3>
                        <p>"Learn, create, and inspire." I believe in continuous learning through curiosity and creativity. I approach every task with dedication, teamwork, and a problem-solving mindset—seeing challenges as opportunities to learn and grow.</p>
                    </div>
                    
                    <h3>My Skills</h3>
                    <div class="skills">
                        <span class="skill">Microsoft PowerPoint</span>
                        <span class="skill">Microsoft Word</span>
                        <span class="skill">Canva Design</span>
                        <span class="skill">Basic Coding (Scratch & HTML)</span>
                        <span class="skill">Public Speaking</span>
                        <span class="skill">Presentation Skills</span>
                        <span class="skill">Teamwork</span>
                        <span class="skill">Creative Problem-Solving</span>
                    </div>
                </div>
                <div class="about-image">
                    <img src="WhatsApp Image 2025-11-07 at 23.26.26_d99fe271.jpg" alt="Miraya on a mountain viewpoint">
                </div>
            </div>
        </div>
    </section>

    <section class="hobbies" id="hobbies">
        <div class="container">
            <h2>My Hobbies & Interests</h2>
            <div class="hobby-grid">
                <div class="hobby-card">
                    <div class="hobby-icon">
                        <i class="fas fa-palette"></i>
                    </div>
                    <h3>Art & Craft</h3>
                    <p>I love expressing my creativity through various art forms and craft projects, from painting to DIY creations.</p>
                </div>
                <div class="hobby-card">
                    <div class="hobby-icon">
                        <i class="fas fa-book-open"></i>
                    </div>
                    <h3>Reading</h3>
                    <p>Exploring new worlds and ideas through books is one of my favorite ways to learn and imagine.</p>
                </div>
                <div class="hobby-card">
                    <div class="hobby-icon">
                        <i class="fas fa-users"></i>
                    </div>
                    <h3>Family Time</h3>
                    <p>I cherish spending quality time with my family, sharing stories, and creating memories together.</p>
                </div>
                <div class="hobby-card">
                    <div class="hobby-icon">
                        <i class="fas fa-table-tennis"></i>
                    </div>
                    <h3>Badminton</h3>
                    <p>I enjoy playing badminton as it keeps me active and helps me develop focus and coordination.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="goals" id="goals">
        <div class="container">
            <h2>My Goals & Aspirations</h2>
            <div class="goal-content">
                <div class="goal-card">
                    <h3><i class="fas fa-bullseye"></i> What Makes Me Different</h3>
                    <p>I bring a blend of curiosity, creativity, and determination that sets me apart. I love exploring new ideas, thinking outside the box, and taking initiative while collaborating with others. My dedication to learning, paired with a cheerful and empathetic approach, helps me connect with people and deliver meaningful results in everything I do.</p>
                </div>
                <div class="goal-card">
                    <h3><i class="fas fa-graduation-cap"></i> My Career Objectives</h3>
                    <p>I aim to develop strong skills in technology, communication, and creative problem-solving, eventually contributing to projects that combine innovation and social impact. I hope to pursue opportunities that allow me to learn continuously, take on leadership roles, and make a positive difference in my community and beyond.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="contact" id="contact">
        <div class="container">
            <h2>Get In Touch</h2>
            <div class="contact-container">
                <div class="contact-info">
                    <h3>Let's Connect!</h3>
                    <p>I'm always excited to meet new people, share ideas, and explore opportunities to learn and grow together. Feel free to reach out!</p>
                    <div class="contact-item">
                        <div class="contact-icon">
                            <i class="fas fa-envelope"></i>
                        </div>
                        <div>
                            <h4>Email</h4>
                            <p>mirayaagrawal33@gmail.com</p>
                        </div>
                    </div>
                    <div class="contact-item">
                        <div class="contact-icon">
                            <i class="fas fa-phone"></i>
                        </div>
                        <div>
                            <h4>Phone</h4>
                            <p>+977 9767382110</p>
                        </div>
                    </div>
                    <div class="contact-item">
                        <div class="contact-icon">
                            <i class="fas fa-map-marker-alt"></i>
                        </div>
                        <div>
                            <h4>Location</h4>
                            <p>Biratnagar, Nepal</p>
                        </div>
                    </div>
                </div>
                <div class="contact-form">
                    <form id="contactForm">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" id="name" class="form-control" placeholder="Your Name" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" id="email" class="form-control" placeholder="Your Email" required>
                        </div>
                        <div class="form-group">
                            <label for="subject">Subject</label>
                            <input type="text" id="subject" class="form-control" placeholder="Subject" required>
                        </div>
                        <div class="form-group">
                            <label for="message">Message</label>
                            <textarea id="message" class="form-control" placeholder="Your Message" required></textarea>
                        </div>
                        <button type="submit" class="btn">Send Message</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="container">
            <div class="footer-content">
                <a href="#" class="logo" style="color: white; margin-bottom: 1rem;"><i class="fas fa-star"></i> Miraya Agrawal</a>
                <p>Student • Creative Thinker • Problem Solver</p>
                <div class="social-links">
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                </div>
                <p class="copyright">&copy; 2023 Miraya Agrawal. All Rights Reserved.</p>
            </div>
        </div>
    </footer>

    <script>
        // Mobile Navigation Toggle
        const hamburger = document.querySelector('.hamburger');
        const navLinks = document.querySelector('.nav-links');
        
        hamburger.addEventListener('click', () => {
            navLinks.classList.toggle('active');
        });
        
        // Smooth scrolling for navigation links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                
                const targetId = this.getAttribute('href');
                if(targetId === '#') return;
                
                const targetElement = document.querySelector(targetId);
                if(targetElement) {
                    window.scrollTo({
                        top: targetElement.offsetTop - 80,
                        behavior: 'smooth'
                    });
                    
                    // Close mobile menu if open
                    navLinks.classList.remove('active');
                }
            });
        });
        
        // Form submission
        const contactForm = document.getElementById('contactForm');
        contactForm.addEventListener('submit', function(e) {
            e.preventDefault();
            alert('Thank you for your message! I will get back to you soon.');
            contactForm.reset();
        });
    </script>
</body>
</html>
