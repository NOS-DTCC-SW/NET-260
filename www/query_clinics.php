<?php
// Connection Info
$servername = "localhost";
$username = "UmbrellaUser";
$password = "Net260Rocks!";
$dbname = "umbrellamed";



//Create Connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check Connection
if (!$conn) {
	die("Connection Failed: " . mysqli_connect_error()); 
            }

$sql = "Select clinic_name from clinics order by clinic_name";
$results = mysqli_query($conn, $sql);

if (mysqli_num_rows($results) > 0) {
  // output data of each row
  while($row = mysqli_fetch_assoc($results)) {
    echo "Name: " . $row["clinic_name"]. "<br>";
  }
} else {
  echo "0 results";
}

mysqli_close($conn);
?>

