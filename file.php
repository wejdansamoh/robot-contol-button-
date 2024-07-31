<?php
$servername = "ypurlocalhost"; // don't foorget to change it 
$username = "yourusrenam";
$password = "yourpassword";
$dbname = "yourdbname";

// إنشاء اتصال بقاعدة البيانات
$conn = new mysqli($servername, $username, $password, $dbname);

// التحقق من الاتصال
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $direction = $_POST['direction'];

    // إدخال البيانات في قاعدة البيانات
    $sql = "INSERT INTO moves (direction) VALUES ('$direction')";
    if ($conn->query($sql) === TRUE) {
        echo $direction ; 
    } else {
        echo json_encode(["status" => "error", "message" => $conn->error]);
    }
}

$conn->close();
?>
