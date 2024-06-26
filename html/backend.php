<?php
// Database connection settings
$servername = "10.100.100.10";
$username = "birdie";
$password = "abcd1234";
$database = "BIRDS_NA";

// Establish database connection
$conn = new mysqli($servername, $username, $password, $database);

// Check for connection errors
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if the random bird button was clicked
if (isset($_GET['random']) && $_GET['random'] == 'true') {
    // Generate a random bird ID
    $randomID = rand(1, 100);

    // Prepare and execute the SQL query to fetch random bird information
    $sql = "SELECT ID, common_name, scientific_name, weight, length FROM birds WHERE ID = ? LIMIT 1";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $randomID);
    $stmt->execute();
    $result = $stmt->get_result();

    // Check if a bird was found
    if ($result->num_rows > 0) {
        // Fetch and output bird information
        $row = $result->fetch_assoc();
        echo json_encode($row);
    } else {
        // No matching bird found
        echo json_encode(['error' => 'Bird not found']);
    }
} else {
    // Get the bird name from the query string
    $birdName = $_GET['birdName'] ?? '';

    // Remove dashes from the bird name
    $birdNameWithoutDashes = str_replace('-', ' ', $birdName);

    // Prepare and execute the SQL query to fetch bird information
    $sql = "SELECT ID, scientific_name, weight, length FROM birds WHERE REPLACE(common_name, '-', ' ') LIKE ? LIMIT 1";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $birdNameWithoutDashes);
    $stmt->execute();
    $result = $stmt->get_result();

    // Check if a matching bird was found
    if ($result->num_rows > 0) {
        // Fetch and output bird information
        $row = $result->fetch_assoc();
        echo json_encode($row);
    } else {
        // No matching bird found
        echo json_encode(['error' => 'Bird not found']);
    }
}

// Close database connection
$stmt->close();
$conn->close();
?>
