<p>
Server Test<br><a href="https://sedcloud.10r.local:8001/test.php">https://sedcloud.10r.local/test.php</a>
</p>
<p>
<a href="http://sedcloud.10r.local:8000/test_sql_conn.php">http://sedcloud.10r.local/test_sql_conn.php</a>
</p>
<p>
<a href="http://sedcloud.10r.local:8000/test_sql_conn_1.php">http://sedcloud.10r.local/test_sql_conn_1.php</a>
</p>
<p>
SQL Tests<br><a href="http://sedcloud.10r.local:8000/query_clinics.php">http://sedcloud.10r.local/query_clinics.php</a>
</p>
<p>
<a href="http://sedcloud.10r.local:8000/query_specialties.php">http://sedcloud.10r.local/query_specialties.php</a>
</p>

<p> Server Local IP: <?php echo $_SERVER['SERVER_ADDR']; ?> </p>
<p> <?php echo 'User IP - ' . $_SERVER['REMOTE_ADDR'];?> </p>

<?php
/**
 * Get the IP address for a given hostname.
 * This will check the system's hosts file first, then DNS.
 */

function getIpFromHost($hostname) {
    // Validate hostname format
    if (!filter_var($hostname, FILTER_VALIDATE_DOMAIN, FILTER_FLAG_HOSTNAME)) {
        throw new InvalidArgumentException("Invalid hostname provided.");
    }

    // Get IP address (string)
    $ip = gethostbyname($hostname);

    // If hostname could not be resolved, gethostbyname returns the hostname itself
    if ($ip === $hostname) {
        return null; // Could not resolve
    }

    return $ip;
}

// Example usage
try {
    $hostname = "sedcloud.10r.local"; // Replace with your hostname
    $ip = getIpFromHost($hostname);

    if ($ip) {
        echo "IP address of {$hostname} is: {$ip}\n";
    } else {
        echo "Could not resolve IP for {$hostname}\n";
    }
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
} 
