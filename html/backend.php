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
    // Fetch a random bird directly from the database
    $sql = "SELECT ID, common_name, scientific_name, weight, length FROM birds ORDER BY RAND() LIMIT 1";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->get_result();

    // Check if a bird was found
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        echo json_encode($row);
    } else {
        echo json_encode(['error' => 'Bird not found']);
    }
} else {
    // Get the bird name from the query string
    $birdName = $_GET['birdName'] ?? '';

    // Normalise dashes to spaces
    $birdNameWithoutDashes = str_replace('-', ' ', $birdName);

    // Wrap in wildcards for a fuzzy/partial match
    $fuzzyName = '%' . $birdNameWithoutDashes . '%';

    // Fetch ALL matching birds (no LIMIT) so the frontend can offer suggestions
    $sql = "SELECT ID, common_name, scientific_name, weight, length FROM birds WHERE REPLACE(common_name, '-', ' ') LIKE ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $fuzzyName);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Return an array of all matches
        $birds = [];
        while ($row = $result->fetch_assoc()) {
            $birds[] = $row;
        }
        echo json_encode($birds);
    } else {
        echo json_encode(['error' => 'Bird not found']);
    }
}

// Close database connection
$stmt->close();
$conn->close();
?>
