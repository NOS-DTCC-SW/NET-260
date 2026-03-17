<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clinics | Umbrella Medical</title>
    <style>
        /* Navigation */
        nav { background: white; padding: 1rem 10%; display: flex; justify-content: space-between; align-items: center; box-shadow: 0 2px 10px rgba(0,0,0,0.05); }
        .logo { font-size: 1.5rem; font-weight: bold; color: #1a73e8; display: flex; align-items: center; }
        .logo span { color: #e74c3c; margin-right: 5px; } 
        nav a { text-decoration: none; color: #5f6368; margin-left: 20px; font-weight: 500; }
        nav a:hover { color: #1a73e8; }

        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin: 20px; background-color: #f0f2f5; }
        .container { max-width: 800px; margin: auto; background: white; padding: 25px; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        
        .header-bar { display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px; }
        h2 { color: #1a73e8; margin: 0; }

        /* Search Bar Styles */
        .search-form { margin-bottom: 20px; display: flex; gap: 10px; }
        .search-input { flex-grow: 1; padding: 10px; border: 1px solid #ddd; border-radius: 4px; outline: none; }
        .search-btn { padding: 10px 20px; background: #1a73e8; color: white; border: none; border-radius: 4px; cursor: pointer; font-weight: bold; }

        table { width: 100%; border-collapse: collapse; }
        th, td { text-align: left; padding: 14px; border-bottom: 1px solid #eee; }
        th { background-color: #f8f9fa; color: #5f6368; text-transform: uppercase; font-size: 0.85rem; }

        /* Action Link for Physicians */
        .view-docs { font-size: 0.8rem; color: #1a73e8; text-decoration: none; font-weight: bold; }
        .view-docs:hover { text-decoration: underline; }

        .pagination { margin-top: 20px; display: flex; justify-content: space-between; align-items: center; }
        .btn { padding: 8px 16px; background: #1a73e8; color: white; text-decoration: none; border-radius: 4px; font-weight: bold; }
        .btn.disabled { background: #ccc; cursor: not-allowed; pointer-events: none; }
        .page-info { color: #70757a; font-size: 0.9rem; }
    </style>
</head>
<body>
<nav>
    <div class="logo"><span>☂</span> UmbrellaMed</div>
    <div class="links">
        <a href="Umbrellamed.php">Home</a>
        <a href="specialties.php">Our Specialties</a>
        <a href="clinics.php">Our Clinics</a>
        <a href="physicians.php">Find a Doctor</a> <a href="#">Patient Portal</a>
        <a href="index.php">Site Troubleshooting</a>
    </div>
</nav>

<div class="container">
    <div class="header-bar">
        <h2>Our Clinics</h2>
    </div>

    <form method="GET" class="search-form">
        <input type="text" name="search" class="search-input" placeholder="Search clinics..." value="<?php echo isset($_GET['search']) ? htmlspecialchars($_GET['search']) : ''; ?>">
        <button type="submit" class="search-btn">Search</button>
    </form>

    <?php
    $servername = "localhost";
    $username = "UmbrellaUser";
    $password = "Net260Rocks!";
    $dbname = "umbrellamed";

    $conn = mysqli_connect($servername, $username, $password, $dbname);
    if (!$conn) { die("Connection Failed: " . mysqli_connect_error()); }

    $search = isset($_GET['search']) ? mysqli_real_escape_string($conn, $_GET['search']) : '';
    $limit = 10; 
    $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
    if ($page < 1) $page = 1;
    $offset = ($page - 1) * $limit;

    $where_clause = $search !== "" ? "WHERE clinic_name LIKE '%$search%'" : "";

    $total_sql = "SELECT COUNT(*) FROM clinics $where_clause";
    $total_result = mysqli_query($conn, $total_sql);
    $total_rows = mysqli_fetch_array($total_result)[0];
    $total_pages = ceil($total_rows / $limit);

    // Fetch clinic_id and name for the physician link
    $sql = "SELECT clinic_id, clinic_name FROM clinics $where_clause ORDER BY clinic_name LIMIT $limit OFFSET $offset";
    $results = mysqli_query($conn, $sql);

    $search_param = ($search !== "") ? "&search=" . urlencode($search) : "";

    if (mysqli_num_rows($results) > 0) {
        echo "<table><tr><th>Clinic Name</th><th>Staff</th></tr>";
        while($row = mysqli_fetch_assoc($results)) {
            echo "<tr>";
            echo "<td>" . htmlspecialchars($row["clinic_name"]) . "</td>";
            // Link to physicians.php passing the clinic ID as a filter
            echo "<td><a href='physicians.php?search=" . urlencode($row["clinic_name"]) . "' class='view-docs'>View Physicians &raquo;</a></td>";
            echo "</tr>";
        }
        echo "</table>";

        echo "<div class='pagination'>";
        echo ($page > 1) ? "<a href='?page=" . ($page - 1) . "$search_param' class='btn'>&laquo; Previous</a>" : "<a class='btn disabled'>&laquo; Previous</a>";
        echo "<span class='page-info'>Page $page of " . ($total_pages ?: 1) . "</span>";
        echo ($page < $total_pages) ? "<a href='?page=" . ($page + 1) . "$search_param' class='btn'>Next &raquo;</a>" : "<a class='btn disabled'>Next &raquo;</a>";
        echo "</div>";
    } else {
        echo "<p>No clinics found.</p>";
    }

    mysqli_close($conn);
    ?>
</div>

</body>
</html>
