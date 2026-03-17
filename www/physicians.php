<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Physicians | Umbrella Medical</title>
    <style>
        /* Shared Styles from Clinics/Specialties */
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin: 20px; background-color: #f0f2f5; }
        nav { background: white; padding: 1rem 10%; display: flex; justify-content: space-between; align-items: center; box-shadow: 0 2px 10px rgba(0,0,0,0.05); }
        .logo { font-size: 1.5rem; font-weight: bold; color: #1a73e8; display: flex; align-items: center; }
        .logo span { color: #e74c3c; margin-right: 5px; }
        nav a { text-decoration: none; color: #5f6368; margin-left: 20px; font-weight: 500; }
        nav a:hover { color: #1a73e8; }

        .container { max-width: 900px; margin: 30px auto; background: white; padding: 25px; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        h2 { color: #1a73e8; margin-bottom: 20px; }
        
        /* Search Bar */
        .search-form { margin-bottom: 20px; display: flex; gap: 10px; }
        .search-input { flex-grow: 1; padding: 10px; border: 1px solid #ddd; border-radius: 4px; outline: none; }
        .search-btn { padding: 10px 20px; background: #1a73e8; color: white; border: none; border-radius: 4px; cursor: pointer; font-weight: bold; }

        /* Table Styles */
        table { width: 100%; border-collapse: collapse; margin-top: 10px; }
        th, td { text-align: left; padding: 12px; border-bottom: 1px solid #eee; font-size: 0.9rem; }
        th { background-color: #f8f9fa; color: #5f6368; text-transform: uppercase; font-size: 0.75rem; letter-spacing: 1px; }
        .status-tag { padding: 4px 8px; border-radius: 4px; font-size: 0.75rem; font-weight: bold; background: #e8f0fe; color: #1a73e8; }

        /* Pagination */
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
        <a href="physicians.php">Find a Doctor</a>
        <a href="index.php">Site Troubleshooting</a>
    </div>
</nav>

<div class="container">
    <h2>Our Physicians</h2>

    <form method="GET" class="search-form">
        <input type="text" name="search" class="search-input" placeholder="Search by last name..." value="<?php echo isset($_GET['search']) ? htmlspecialchars($_GET['search']) : ''; ?>">
        <button type="submit" class="search-btn">Search</button>
    </form>

    <?php
    $servername = "localhost";
    $username = "UmbrellaUser";
    $password = "Net260Rocks!";
    $dbname = "umbrellamed";

    $conn = mysqli_connect($servername, $username, $password, $dbname);
    if (!$conn) { die("Connection Failed: " . mysqli_connect_error()); }

    // Pagination & Search Logic
    $search = isset($_GET['search']) ? mysqli_real_escape_string($conn, $_GET['search']) : '';
    $limit = 10; 
    $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
    if ($page < 1) $page = 1;
    $offset = ($page - 1) * $limit;

    $where_clause = $search !== "" ? "WHERE p.last_name LIKE '%$search%'" : "";

    // Count total for pagination
    $total_sql = "SELECT COUNT(*) FROM physicians p $where_clause";
    $total_result = mysqli_query($conn, $total_sql);
    $total_rows = mysqli_fetch_array($total_result)[0];
    $total_pages = ceil($total_rows / $limit);

    // Main Query: Joining physicians with clinics to get the clinic name
    $sql = "SELECT p.first_name, p.last_name, p.job_position, p.email, p.emp_status, c.clinic_name 
            FROM physicians p 
            JOIN clinics c ON p.clinic_number = c.clinic_id 
            $where_clause 
            ORDER BY p.last_name ASC 
            LIMIT $limit OFFSET $offset";

    $results = mysqli_query($conn, $sql);
    $search_param = ($search !== "") ? "&search=" . urlencode($search) : "";

    if (mysqli_num_rows($results) > 0) {
        echo "<table>
                <tr>
                    <th>Name</th>
                    <th>Position</th>
                    <th>Clinic</th>
                    <th>Contact</th>
                    <th>Status</th>
                </tr>";
        while($row = mysqli_fetch_assoc($results)) {
            echo "<tr>";
            echo "<td><strong>" . htmlspecialchars($row["last_name"]) . "</strong>, " . htmlspecialchars($row["first_name"]) . "</td>";
            echo "<td>" . htmlspecialchars($row["job_position"]) . "</td>";
            echo "<td>" . htmlspecialchars($row["clinic_name"]) . "</td>";
            echo "<td><a href='mailto:" . htmlspecialchars($row["email"]) . "'>Email</a></td>";
            echo "<td><span class='status-tag'>" . htmlspecialchars($row["emp_status"]) . "</span></td>";
            echo "</tr>";
        }
        echo "</table>";

        // Pagination Controls
        echo "<div class='pagination'>";
        echo ($page > 1) ? "<a href='?page=" . ($page - 1) . "$search_param' class='btn'>&laquo; Prev</a>" : "<a class='btn disabled'>&laquo; Prev</a>";
        echo "<span class='page-info'>Page $page of " . ($total_pages ?: 1) . "</span>";
        echo ($page < $total_pages) ? "<a href='?page=" . ($page + 1) . "$search_param' class='btn'>Next &raquo;</a>" : "<a class='btn disabled'>Next &raquo;</a>";
        echo "</div>";
    } else {
        echo "<p>No physicians found matching your criteria.</p>";
    }

    mysqli_close($conn);
    ?>
</div>

</body>
</html>
