<?php
$servername = "ypurlocalhost"; // Update with your server name
$username = "yourusername"; // Update with your username
$password = "yourpassword"; // Update with your password
$dbname = "yourdbname"; // Update with your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get the latest direction
$sql = "SELECT direction FROM moves ORDER BY timestamp DESC LIMIT 1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Output the latest direction
    $row = $result->fetch_assoc();
    echo $row['direction'];
} else {
    echo "No data";
}

$conn->close();
?>
"