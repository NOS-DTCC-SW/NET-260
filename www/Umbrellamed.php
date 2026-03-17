<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home | Umbrella Medical</title>
    <style>
        :root {
            --primary: #1a73e8;
            --secondary: #5f6368;
        }
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin: 0; background-color: #f0f2f5; }
        
        /* Navigation */
        nav { background: white; padding: 1rem 10%; display: flex; justify-content: space-between; align-items: center; box-shadow: 0 2px 10px rgba(0,0,0,0.05); }
        .logo { font-size: 1.5rem; font-weight: bold; color: var(--primary); display: flex; align-items: center; }
        .logo span { color: #e74c3c; margin-right: 5px; } 
        nav a { text-decoration: none; color: var(--secondary); margin-left: 20px; font-weight: 500; }
        nav a:hover { color: var(--primary); }

        /* Hero Section */
        .hero { background: linear-gradient(135deg, #e0eafc 0%, #cfdef3 100%); padding: 100px 10%; display: flex; align-items: center; }
        .hero-content { flex: 1; }
        .hero h1 { font-size: 3rem; margin-bottom: 20px; color: var(--secondary); }
        .hero p { font-size: 1.2rem; margin-bottom: 30px; max-width: 500px; }
        
        .cta-container { display: flex; gap: 15px; }
        .cta-button { background: var(--primary); color: white; padding: 15px 30px; border-radius: 5px; text-decoration: none; font-weight: bold; transition: 0.3s; }
        .cta-button.alt { background: white; color: var(--primary); border: 1px solid var(--primary); }
        .cta-button:hover { background: #1557b0; color: white; box-shadow: 0 4px 15px rgba(26, 115, 232, 0.4); }
    </style>
</head>
<body>

<nav>
    <div class="logo"><span>☂</span> UmbrellaMed</div>
    <div class="links">
        <a href="Umbrellamed.php">Home</a>
        <a href="specialties.php">Our Specialties</a>
        <a href="clinics.php">Our Clinics</a>
        <a href="physicians.php">Find a Doctor</a> 
        <a href="#">Patient Portal</a>
        <a href="index.php">Site Troubleshooting</a>
    </div>
</nav>

<section class="hero">
    <div class="hero-content">
        <h1>Your Health, Under Our Umbrella.</h1>
        <p>Providing world-class healthcare across our network of specialized clinics and expert physicians.</p>
        <div class="cta-container">
            <a href="clinics.php" class="cta-button">View Our Clinics</a>
            <a href="physicians.php" class="cta-button alt">Find a Physician</a>
        </div>
    </div>
</section>

</body>
</html>
